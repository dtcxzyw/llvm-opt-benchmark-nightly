Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@stb_vorbis_get_samples_float_interleaved:bb.a
  br i1 %i.aa, label %.preheader52.us.us.preheader, label %._crit_edge62.split.us.us

.preheader52.us.us.preheader:                     ; preds = %bb.b
  %i.ab = sext i32 %i.w to i64                    ; 5 uses
  %i.ac = zext nneg i32 %spec.select50.us to i64
  br label %.preheader52.us.us

.preheader52.us.us:                               ; preds = %.preheader52.us.us.preheader, %._crit_edge.us.us
  %indvars.iv95 = phi i64 [ 0, %.preheader52.us.us.preheader ], [ %indvars.iv.next96, %._crit_edge.us.us ] ; 6 uses
  %.14560.us.us = phi ptr [ %.044.us, %.preheader52.us.us.preheader ], [ %.3.lcssa.us.us, %._crit_edge.us.us ] ; 3 uses
  br i1 %i.t, label %.epil.preheader, label %.preheader52.us.us.new

.preheader52.us.us.new:                           ; preds = %.preheader52.us.us, %.preheader52.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader52.us.us.new ], [ 0, %.preheader52.us.us ] ; 5 uses
  %.253.us.us = phi ptr [ %i.bd, %.preheader52.us.us.new ], [ %.14560.us.us, %.preheader52.us.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader52.us.us.new ], [ 0, %.preheader52.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv95
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.ab
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !64
  %i.ai = getelementptr i8, ptr %.253.us.us, i64 4
  store float %i.ah, ptr %.253.us.us, align 4, !tbaa !64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv95
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ab
  %i.ao = load float, ptr %i.an, align 4, !tbaa !64
  %i.ap = getelementptr i8, ptr %.253.us.us, i64 8
  store float %i.ao, ptr %i.ai, align 4, !tbaa !64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv95
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.ab
  %i.av = load float, ptr %i.au, align 4, !tbaa !64
  %i.aw = getelementptr i8, ptr %.253.us.us, i64 12
  store float %i.av, ptr %i.ap, align 4, !tbaa !64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv95
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %i.ab
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !64
  %i.bd = getelementptr i8, ptr %.253.us.us, i64 16 ; 3 uses
  store float %i.bc, ptr %i.aw, align 4, !tbaa !64
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.unr-lcssa, label %.preheader52.us.us.new, !llvm.loop !465

..preheader_crit_edge.us.us.unr-lcssa:            ; preds = %.preheader52.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.unr-lcssa, %.preheader52.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader52.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.unr-lcssa ]
  %.253.us.us.epil.init = phi ptr [ %.14560.us.us, %.preheader52.us.us ], [ %i.bd, %..preheader_crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %.253.us.us.epil = phi ptr [ %i.bj, %bb.c ], [ %.253.us.us.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv95
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.ab
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !64
  %i.bj = getelementptr i8, ptr %.253.us.us.epil, i64 4 ; 2 uses
  store float %i.bi, ptr %.253.us.us.epil, align 4, !tbaa !64
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us, label %bb.c, !llvm.loop !466

..preheader_crit_edge.us.us:                      ; preds = %bb.c, %..preheader_crit_edge.us.us.unr-lcssa
  %.lcssa = phi ptr [ %i.bd, %..preheader_crit_edge.us.us.unr-lcssa ], [ %i.bj, %bb.c ] ; 2 uses
  br i1 %i.s, label %.lr.ph58.us.us.preheader, label %._crit_edge.us.us

.lr.ph58.us.us.preheader:                         ; preds = %..preheader_crit_edge.us.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.lcssa, i8 0, i64 %i.n, i1 false), !tbaa !64
  %i.bk = getelementptr i8, ptr %.14560.us.us, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.bk, i64 8
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %.lr.ph58.us.us.preheader, %..preheader_crit_edge.us.us
  %.3.lcssa.us.us = phi ptr [ %.lcssa, %..preheader_crit_edge.us.us ], [ %scevgep, %.lr.ph58.us.us.preheader ] ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next96, %i.ac
  br i1 %i.bl, label %.preheader52.us.us, label %._crit_edge62.split.us.us, !llvm.loop !467

._crit_edge62.split.us.us:                        ; preds = %._crit_edge.us.us, %bb.b
  %.145.lcssa.us = phi ptr [ %.044.us, %bb.b ], [ %.3.lcssa.us.us, %._crit_edge.us.us ]
  %i.bm = add nsw i32 %spec.select50.us, %.042.us ; 3 uses
  %i.bn = add nsw i32 %spec.select50.us, %i.w
  store i32 %i.bn, ptr %i.f, align 4, !tbaa !118
  %i.bo = icmp eq i32 %i.bm, %i.b
  br i1 %i.bo, label %.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge62.split.us.us
  %i.bp = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not49.us = icmp eq i32 %i.bp, 0
  br i1 %.not49.us, label %.thread, label %.split.us

.split:                                           ; preds = %bb.a
  %i.bq = icmp sgt i32 %1, 0
  br i1 %i.bq, label %.split.split.us.preheader, label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  %i.br = zext nneg i32 %1 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = add nsw i32 %1, -1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 4                ; 2 uses
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader, %bb.f
  %.044.us76 = phi ptr [ %.145.lcssa.us81, %bb.f ], [ %2, %.split.split.us.preheader ] ; 3 uses
  %.042.us77 = phi i32 [ %i.ck, %bb.f ], [ 0, %.split.split.us.preheader ] ; 6 uses
  %i.bx = icmp slt i32 %.042.us77, %i.b
  br i1 %i.bx, label %bb.e, label %.thread

bb.e:                                             ; preds = %.split.split.us
  %i.by = load i32, ptr %i.e, align 8, !tbaa !117
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !118 ; 2 uses
  %i.ca = sub nsw i32 %i.by, %i.bz                ; 2 uses
  %i.cb = add nsw i32 %i.ca, %.042.us77           ; 2 uses
  %.not.us78 = icmp slt i32 %i.cb, %i.b
  %i.cc = sub nsw i32 %i.b, %.042.us77
  %spec.select50.us79 = select i1 %.not.us78, i32 %i.ca, i32 %i.cc ; 4 uses
  %i.cd = icmp sgt i32 %spec.select50.us79, 0
  br i1 %i.cd, label %.preheader52.us64.us.preheader, label %._crit_edge62.split.split.us.us

.preheader52.us64.us.preheader:                   ; preds = %bb.e
  %i.ce = zext nneg i32 %spec.select50.us79 to i64
  %i.cf = mul nuw i64 %i.bs, %i.ce
  call void @llvm.memset.p0.i64(ptr align 4 %.044.us76, i8 0, i64 %i.cf, i1 false), !tbaa !64
  %scevgep91 = getelementptr i8, ptr %.044.us76, i64 %i.bw
  %smin = call i32 @llvm.smin.i32(i32 %i.b, i32 %i.cb)
  %i.cg = xor i32 %.042.us77, -1
  %i.ch = add i32 %smin, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = mul i64 %i.bw, %i.ci
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.cj
  br label %._crit_edge62.split.split.us.us

._crit_edge62.split.split.us.us:                  ; preds = %.preheader52.us64.us.preheader, %bb.e
  %.145.lcssa.us81 = phi ptr [ %.044.us76, %bb.e ], [ %scevgep92, %.preheader52.us64.us.preheader ]
  %i.ck = add nsw i32 %spec.select50.us79, %.042.us77 ; 3 uses
  %i.cl = add nsw i32 %spec.select50.us79, %i.bz
  store i32 %i.cl, ptr %i.f, align 4, !tbaa !118
  %i.cm = icmp eq i32 %i.ck, %i.b
  br i1 %i.cm, label %.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge62.split.split.us.us
  %i.cn = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not49.us82 = icmp eq i32 %i.cn, 0
  br i1 %.not49.us82, label %.thread, label %.split.split.us

.split.split:                                     ; preds = %.split, %bb.g
  %.042 = phi i32 [ %i.cu, %bb.g ], [ 0, %.split ] ; 5 uses
  %i.co = icmp slt i32 %.042, %i.b
  br i1 %i.co, label %._crit_edge62.split.split, label %.thread

._crit_edge62.split.split:                        ; preds = %.split.split
  %i.cp = load i32, ptr %i.e, align 8, !tbaa !117
  %i.cq = load i32, ptr %i.f, align 4, !tbaa !118 ; 2 uses
  %i.cr = sub nsw i32 %i.cp, %i.cq                ; 2 uses
  %i.cs = add nsw i32 %i.cr, %.042
  %.not = icmp slt i32 %i.cs, %i.b
  %i.ct = sub nsw i32 %i.b, %.042
  %spec.select50 = select i1 %.not, i32 %i.cr, i32 %i.ct ; 2 uses
  %i.cu = add nsw i32 %spec.select50, %.042       ; 3 uses
  %i.cv = add nsw i32 %spec.select50, %i.cq
  store i32 %i.cv, ptr %i.f, align 4, !tbaa !118
  %i.cw = icmp eq i32 %i.cu, %i.b
  br i1 %i.cw, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge62.split.split
  %i.cx = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not49 = icmp eq i32 %i.cx, 0
  br i1 %.not49, label %.thread, label %.split.split

.thread:                                          ; preds = %bb.g, %._crit_edge62.split.split, %.split.split, %bb.f, %._crit_edge62.split.split.us.us, %.split.split.us, %.split.us, %._crit_edge62.split.us.us, %bb.d
  %.us-phi75 = phi i32 [ %i.bm, %bb.d ], [ %i.ck, %bb.f ], [ %.042.us, %.split.us ], [ %i.b, %._crit_edge62.split.us.us ], [ %.042.us77, %.split.split.us ], [ %i.b, %._crit_edge62.split.split.us.us ], [ %.042, %.split.split ], [ %i.b, %._crit_edge62.split.split ], [ %i.cu, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.us-phi75
}

; Function Attrs: nofree nounwind uwtable
define i32 @stb_vorbis_get_samples_float(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !102
  %.fr = freeze i32 %i.c                          ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1892 ; 11 uses
  %i.f = icmp sgt i32 %spec.select, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  br i1 %i.f, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %wide.trip.count75 = zext nneg i32 %spec.select to i64 ; 2 uses
  %i.h = icmp slt i32 %.fr, %1
  %xtraiter100 = and i64 %wide.trip.count75, 1
  %i.i = icmp eq i32 %spec.select, 1
  %unroll_iter105 = and i64 %wide.trip.count75, 2147483646
  %lcmp.mod102.not = icmp eq i64 %xtraiter100, 0
  %lcmp.mod104 = trunc i32 %spec.select to i1
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.c
  %.042.us = phi i32 [ %i.ak, %bb.c ], [ 0, %.split.us.preheader ] ; 6 uses
  %i.j = icmp slt i32 %.042.us, %3
  br i1 %i.j, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split.us
  %i.k = load i32, ptr %i.d, align 8, !tbaa !117
  %i.l = load i32, ptr %i.e, align 4, !tbaa !118
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = add nsw i32 %i.m, %.042.us
  %.not.us = icmp slt i32 %i.n, %3
  %i.o = sub nsw i32 %3, %.042.us
  %spec.select49.us = select i1 %.not.us, i32 %i.m, i32 %i.o ; 4 uses
  %.not47.us = icmp eq i32 %spec.select49.us, 0
  br i1 %.not47.us, label %.loopexit.us, label %.preheader51.us

.preheader51.us.new:                              ; preds = %.preheader51.us, %.preheader51.us.new
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.1, %.preheader51.us.new ], [ 1, %.preheader51.us ] ; 2 uses
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.preheader51.us.new ], [ 0, %.preheader51.us ] ; 4 uses
  %niter106 = phi i64 [ %niter106.next.1, %.preheader51.us.new ], [ 0, %.preheader51.us ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ap
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = load i32, ptr %i.e, align 4, !tbaa !118
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.w, i64 %i.ar, i1 false)
  %indvars.iv.next73 = or disjoint i64 %indvars.iv72, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next73
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ap
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next73
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !118
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr align 4 %i.ae, i64 %i.ar, i1 false)
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %..preheader_crit_edge.us.unr-lcssa, label %.preheader51.us.new, !llvm.loop !468

.lr.ph54.us:                                      ; preds = %..preheader_crit_edge.us.a, %.lr.ph54.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.lr.ph54.us ], [ %indvars.iv77.lcssa, %..preheader_crit_edge.us.a ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv79
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ap
  call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.ar, i1 false)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.ai = trunc nuw i64 %indvars.iv.next80 to i32
  %i.aj = icmp sgt i32 %1, %i.ai
  br i1 %i.aj, label %.lr.ph54.us, label %.loopexit.us, !llvm.loop !469

.loopexit.us:                                     ; preds = %.lr.ph54.us, %..preheader_crit_edge.us.a, %bb.b
  %i.ak = add nsw i32 %spec.select49.us, %.042.us ; 3 uses
  %i.al = load i32, ptr %i.e, align 4, !tbaa !118
  %i.am = add nsw i32 %i.al, %spec.select49.us
  store i32 %i.am, ptr %i.e, align 4, !tbaa !118
  %i.an = icmp eq i32 %i.ak, %3
  br i1 %i.an, label %.thread, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.ao = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not48.us = icmp eq i32 %i.ao, 0
  br i1 %.not48.us, label %.thread, label %.split.us

.preheader51.us:                                  ; preds = %bb.b
  %i.ap = sext i32 %.042.us to i64                ; 4 uses
  %i.aq = sext i32 %spec.select49.us to i64
  %i.ar = shl nsw i64 %i.aq, 2                    ; 4 uses
  br i1 %i.i, label %.epil.preheader99, label %.preheader51.us.new

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.preheader51.us.new
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br i1 %lcmp.mod102.not, label %..preheader_crit_edge.us.a, label %.epil.preheader99

.epil.preheader99:                                ; preds = %..preheader_crit_edge.us.unr-lcssa, %.preheader51.us
  %indvars.iv77.epil.init = phi i64 [ 1, %.preheader51.us ], [ %indvars.iv.next78.1, %..preheader_crit_edge.us.unr-lcssa ]
  %indvars.iv72.epil.init = phi i64 [ 0, %.preheader51.us ], [ %indvars.iv.next73.1, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72.epil.init
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv72.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !118
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.az, i64 %i.ar, i1 false)
  br label %..preheader_crit_edge.us.a

..preheader_crit_edge.us.a:                       ; preds = %..preheader_crit_edge.us.unr-lcssa, %.epil.preheader99
  %indvars.iv77.lcssa = phi i64 [ %indvars.iv.next78, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv77.epil.init, %.epil.preheader99 ]
  br i1 %i.h, label %.lr.ph54.us, label %.loopexit.us

.split:                                           ; preds = %bb.a
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.split.split.us.preheader, label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bb = icmp ult i32 %1, 8
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader, %bb.f
  %.042.us55 = phi i32 [ %i.cu, %bb.f ], [ 0, %.split.split.us.preheader ] ; 6 uses
  %i.bc = icmp slt i32 %.042.us55, %3
  br i1 %i.bc, label %bb.d, label %.thread

bb.d:                                             ; preds = %.split.split.us
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !117
  %i.be = load i32, ptr %i.e, align 4, !tbaa !118 ; 2 uses
  %i.bf = sub nsw i32 %i.bd, %i.be                ; 2 uses
  %i.bg = add nsw i32 %i.bf, %.042.us55
  %.not.us56 = icmp slt i32 %i.bg, %3
  %i.bh = sub nsw i32 %3, %.042.us55
  %spec.select49.us57 = select i1 %.not.us56, i32 %i.bf, i32 %i.bh ; 4 uses
  %.not47.us58 = icmp eq i32 %spec.select49.us57, 0
  br i1 %.not47.us58, label %..loopexit_crit_edge.us62, label %.preheader51.us59

.preheader51.us59:                                ; preds = %bb.d
  %i.bi = sext i32 %.042.us55 to i64              ; 9 uses
  %i.bj = sext i32 %spec.select49.us57 to i64
  %i.bk = shl nsw i64 %i.bj, 2                    ; 9 uses
  br i1 %i.bb, label %.epil.preheader, label %.preheader51.us59.new

.preheader51.us59.new:                            ; preds = %.preheader51.us59, %.preheader51.us59.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader51.us59.new ], [ 0, %.preheader51.us59 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader51.us59.new ], [ 0, %.preheader51.us59 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 0, i64 %i.bk, i1 false)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !65
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.br, i8 0, i64 %i.bk, i1 false)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !65
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.bv, i8 0, i64 %i.bk, i1 false)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %i.bk, i1 false)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %i.bk, i1 false)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !65
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %i.bk, i1 false)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !65
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %i.bk, i1 false)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !65
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 %i.bk, i1 false)
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %..loopexit_crit_edge.us62.loopexit.unr-lcssa, label %.preheader51.us59.new, !llvm.loop !469

..loopexit_crit_edge.us62.loopexit.unr-lcssa:     ; preds = %.preheader51.us59.new
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us62.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us62.loopexit.unr-lcssa, %.preheader51.us59
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader51.us59 ], [ %indvars.iv.next.7, %..loopexit_crit_edge.us62.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.e ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.e ], [ 0, %.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !65
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr align 4 %i.cs, i8 0, i64 %i.bk, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.us62.loopexit, label %bb.e, !llvm.loop !470

..loopexit_crit_edge.us62.loopexit:               ; preds = %bb.e, %..loopexit_crit_edge.us62.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.e, align 4, !tbaa !118
  br label %..loopexit_crit_edge.us62

..loopexit_crit_edge.us62:                        ; preds = %..loopexit_crit_edge.us62.loopexit, %bb.d
  %i.ct = phi i32 [ %.pre, %..loopexit_crit_edge.us62.loopexit ], [ %i.be, %bb.d ]
  %i.cu = add nsw i32 %spec.select49.us57, %.042.us55 ; 3 uses
  %i.cv = add nsw i32 %i.ct, %spec.select49.us57
  store i32 %i.cv, ptr %i.e, align 4, !tbaa !118
  %i.cw = icmp eq i32 %i.cu, %3
  br i1 %i.cw, label %.thread, label %bb.f

bb.f:                                             ; preds = %..loopexit_crit_edge.us62
  %i.cx = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not48.us64 = icmp eq i32 %i.cx, 0
  br i1 %.not48.us64, label %.thread, label %.split.split.us

.split.split:                                     ; preds = %.split, %bb.g
  %.042 = phi i32 [ %i.de, %bb.g ], [ 0, %.split ] ; 5 uses
  %i.cy = icmp slt i32 %.042, %3
  br i1 %i.cy, label %.preheader51, label %.thread

.preheader51:                                     ; preds = %.split.split
  %i.cz = load i32, ptr %i.d, align 8, !tbaa !117
  %i.da = load i32, ptr %i.e, align 4, !tbaa !118 ; 2 uses
  %i.db = sub nsw i32 %i.cz, %i.da                ; 2 uses
  %i.dc = add nsw i32 %i.db, %.042
  %.not = icmp slt i32 %i.dc, %3
  %i.dd = sub nsw i32 %3, %.042
  %spec.select49 = select i1 %.not, i32 %i.db, i32 %i.dd ; 2 uses
  %i.de = add nsw i32 %spec.select49, %.042       ; 3 uses
  %i.df = add nsw i32 %i.da, %spec.select49
  store i32 %i.df, ptr %i.e, align 4, !tbaa !118
  %i.dg = icmp eq i32 %i.de, %3
  br i1 %i.dg, label %.thread, label %bb.g

bb.g:                                             ; preds = %.preheader51
  %i.dh = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not48 = icmp eq i32 %i.dh, 0
  br i1 %.not48, label %.thread, label %.split.split

.thread:                                          ; preds = %bb.g, %.preheader51, %.split.split, %bb.f, %..loopexit_crit_edge.us62, %.split.split.us, %.split.us, %.loopexit.us, %bb.c
  %.us-phi = phi i32 [ %i.ak, %bb.c ], [ %i.cu, %bb.f ], [ %.042.us, %.split.us ], [ %3, %.loopexit.us ], [ %.042.us55, %.split.split.us ], [ %3, %..loopexit_crit_edge.us62 ], [ %.042, %.split.split ], [ %3, %.preheader51 ], [ %i.de, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.us-phi
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bitreverse.v8i32(<8 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind }
attributes #31 = { nounwind allocsize(1) }

!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}
!llvm.errno.tbaa = !{!30}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !41}
!5 = distinct !{!5, !41}
!6 = distinct !{!6, !41}
!7 = distinct !{!7, !41}
!8 = distinct !{!8, !41}
!9 = distinct !{!9, !41}
!10 = distinct !{!10, !41}
!11 = distinct !{!11, !41}
!12 = distinct !{!12, !41}
!13 = distinct !{!13, !41}
!14 = distinct !{!14, !41}
!15 = distinct !{!15, !41}
!16 = distinct !{!16, !41}
!17 = distinct !{!17, !41}
!18 = distinct !{!18, !41}
!19 = distinct !{!19, !41}
!20 = distinct !{!20, !41}
!21 = distinct !{!21, !41}
!22 = distinct !{!22, !41}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!"omnipotent char", !26, i64 0}
!28 = !{!"int", !27, i64 0}
!29 = !{!"__libc_errno", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"any p2 pointer", !31, i64 0}
!34 = !{!"p2 omnipotent char", !33, i64 0}
!35 = !{!"p1 _ZTS8_IO_FILE", !31, i64 0}
!36 = !{!"", !28, i64 0, !28, i64 4, !28, i64 8}
!37 = !{!"", !32, i64 0, !28, i64 8}
!38 = !{!"stb_vorbis", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !32, i64 24, !28, i64 32, !34, i64 40, !35, i64 48, !28, i64 56, !28, i64 60, !32, i64 64, !32, i64 72, !32, i64 80, !28, i64 88, !27, i64 92, !28, i64 96, !36, i64 100, !36, i64 112, !37, i64 128, !28, i64 144, !28, i64 148, !28, i64 152, !28, i64 156, !27, i64 160, !28, i64 168, !28, i64 172, !28, i64 176, !31, i64 184, !28, i64 192, !27, i64 196, !31, i64 328, !28, i64 336, !27, i64 340, !31, i64 472, !28, i64 480, !31, i64 488, !28, i64 496, !27, i64 500, !28, i64 884, !27, i64 888, !27, i64 1016, !27, i64 1144, !28, i64 1272, !27, i64 1280, !28, i64 1408, !28, i64 1412, !27, i64 1416, !27, i64 1432, !27, i64 1448, !27, i64 1464, !27, i64 1480, !28, i64 1496, !28, i64 1500, !28, i64 1504, !27, i64 1508, !27, i64 1763, !27, i64 1764, !27, i64 1765, !28, i64 1768, !28, i64 1772, !28, i64 1776, !28, i64 1780, !28, i64 1784, !28, i64 1788, !28, i64 1792, !28, i64 1796, !28, i64 1800, !28, i64 1804, !28, i64 1808, !27, i64 1812, !28, i64 1892, !28, i64 1896}
!39 = !{!38, !28, i64 156}
!40 = !{!31, !31, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!38, !28, i64 8}
!44 = !{!38, !32, i64 128}
!45 = !{!38, !28, i64 144}
!46 = !{!38, !28, i64 148}
!47 = !{!28, !28, i64 0}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!27, !27, i64 0}
!51 = !{!"float", !27, i64 0}
!52 = !{!"p1 float", !31, i64 0}
!53 = !{!"p1 int", !31, i64 0}
!54 = !{!"", !28, i64 0, !28, i64 4, !32, i64 8, !51, i64 16, !51, i64 20, !27, i64 24, !27, i64 25, !27, i64 26, !27, i64 27, !28, i64 28, !52, i64 32, !53, i64 40, !27, i64 48, !53, i64 2096, !53, i64 2104, !28, i64 2112}
!55 = !{!54, !27, i64 27}
!56 = !{!54, !53, i64 40}
!57 = !{!54, !32, i64 8}
!58 = !{!"short", !27, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!54, !53, i64 2096}
!61 = !{!54, !28, i64 2112}
!62 = !{!54, !28, i64 4}
!63 = !{!54, !53, i64 2104}
end_hunk_0
begin_hunk_1_@llvm.umin.v4i32
!271 = distinct !{!271, !41}
!272 = distinct !{!272, !41, !48, !49}
!273 = distinct !{!273, !41, !48, !49}
!274 = distinct !{!274, !41}
!275 = distinct !{!275, !41, !49, !48}
!276 = distinct !{!276, !41}
!277 = distinct !{!277, !41}
!278 = distinct !{!278, !41}
!279 = distinct !{!279, !41}
!280 = distinct !{!280, !41}
!281 = distinct !{!281, i1 false, !"LVerDomain"}
!282 = distinct !{!282, !281}
!283 = distinct !{!283, !281}
!284 = distinct !{!284, !41, !48, !49}
!285 = distinct !{!285, !41, !48}
!286 = distinct !{!286, !41}
!287 = distinct !{!287, !41}
!288 = !{!"branch_weights", i32 4, i32 12}
!289 = !{!282}
!290 = !{!283}
!291 = distinct !{!291, i1 false, !"LVerDomain"}
!292 = distinct !{!292, !291}
!293 = distinct !{!293, !291}
!294 = distinct !{!294, !291}
!295 = distinct !{!295, !41, !48, !49}
!296 = distinct !{!296, !41, !48}
!297 = distinct !{!297, !41}
!298 = distinct !{!298, !41, !48, !49}
!299 = distinct !{!299, !42}
!300 = distinct !{!300, !41, !48}
!301 = distinct !{!301, !41}
!302 = !{!292}
!303 = !{!294, !293}
!304 = !{!294}
!305 = !{!293}
!306 = distinct !{!306, !41}
!307 = distinct !{!307, !41}
!308 = distinct !{!308, !41}
!309 = distinct !{!309, !41}
!310 = distinct !{!310, !41}
!311 = distinct !{!311, !41}
!312 = distinct !{!312, !41}
!313 = distinct !{!313, !41}
!314 = distinct !{!314, !41}
!315 = distinct !{!315, !41, !48, !49}
!316 = distinct !{!316, !41, !49, !48}
!317 = distinct !{!317, !41}
!318 = distinct !{!318, !41}
!319 = distinct !{!319, !41}
!320 = distinct !{!320, !41}
!321 = distinct !{!321, !41}
!322 = distinct !{!322, !41}
!323 = distinct !{!323, !41}
!324 = distinct !{!324, !41}
!325 = distinct !{!325, !41}
!326 = distinct !{!326, !41}
!327 = distinct !{!327, i1 false, !"LVerDomain"}
!328 = distinct !{!328, !327}
!329 = distinct !{!329, !327}
!330 = distinct !{!330, !41, !48, !49}
!331 = distinct !{!331, !42}
!332 = distinct !{!332, !41}
!333 = distinct !{!333, !41}
!334 = distinct !{!334, !41, !48}
!335 = distinct !{!335, !41}
!336 = distinct !{!336, !41}
!337 = distinct !{!337, !41}
!338 = distinct !{!338, !41}
!339 = distinct !{!339, !41}
!340 = distinct !{!340, !41}
!341 = distinct !{!341, !41}
!342 = distinct !{!342, !41}
!343 = distinct !{!343, !41}
!344 = distinct !{!344, !41}
!345 = distinct !{!345, !41}
!346 = distinct !{!346, !41}
!347 = distinct !{!347, !42}
!348 = distinct !{!348, !41}
!349 = distinct !{!349, !41}
!350 = distinct !{!350, !41}
!351 = distinct !{!351, !41}
!352 = distinct !{!352, !41}
!353 = !{!38, !28, i64 16}
!354 = !{!54, !51, i64 20}
!355 = !{!54, !27, i64 24}
!356 = !{!54, !28, i64 28}
!357 = !{!38, !28, i64 192}
!358 = !{!"", !27, i64 0, !58, i64 2, !58, i64 4, !27, i64 6, !27, i64 7, !27, i64 8, !27, i64 9}
!359 = !{!358, !27, i64 0}
!360 = !{!358, !58, i64 2}
!361 = !{!358, !58, i64 4}
!362 = !{!358, !27, i64 6}
!363 = !{!358, !27, i64 7}
!364 = !{!358, !27, i64 8}
!365 = !{!114, !27, i64 1589}
!366 = !{!328}
!367 = !{!329}
!368 = !{!68, !58, i64 2}
!369 = !{!96, !27, i64 12}
!370 = !{!120, !58, i64 2}
!371 = !{!120, !58, i64 4}
!372 = !{!38, !28, i64 12}
!373 = distinct !{!373, !41, !379}
!374 = distinct !{!374, !41, !379}
!375 = distinct !{!375, !41}
!376 = distinct !{!376, !41, !379}
!377 = distinct !{!377, !41, !379}
!378 = distinct !{!378, !41, !379}
!379 = !{!"llvm.loop.unswitch.partial.disable"}
!380 = !{!"", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20}
!381 = !{!380, !28, i64 0}
!382 = !{!380, !28, i64 20}
!383 = !{!"", !32, i64 0, !28, i64 8, !34, i64 16}
!384 = !{!383, !32, i64 0}
!385 = !{!383, !28, i64 8}
!386 = !{!383, !34, i64 16}
!387 = distinct !{!387, !41}
!388 = distinct !{!388, !42}
!389 = distinct !{!389, !41, !48, !49}
!390 = distinct !{!390, !41, !49, !48}
!391 = distinct !{!391, !41}
!392 = distinct !{!392, !41}
!393 = distinct !{!393, !41}
!394 = !{!"", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16}
!395 = !{!394, !28, i64 12}
!396 = !{!394, !28, i64 4}
!397 = !{!394, !28, i64 8}
!398 = !{!394, !28, i64 0}
!399 = !{!394, !28, i64 16}
!400 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 12, i64 4, !47, i64 16, i64 4, !47}
!401 = distinct !{!401, !41}
!402 = distinct !{!402, !41}
!403 = distinct !{!403, !41, !48, !49}
!404 = distinct !{!404, !41, !49, !48}
!405 = distinct !{!405, !41}
!406 = distinct !{!406, !41}
!407 = distinct !{!407, !41}
!408 = distinct !{!408, !41, !48, !49}
!409 = distinct !{!409, !41, !49, !48}
!410 = distinct !{!410, !41}
!411 = distinct !{!411, !41}
!412 = distinct !{!412, !41}
!413 = distinct !{!413, !41}
!414 = distinct !{!414, !41}
!415 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47}
!416 = distinct !{!416, !41}
!417 = !{!38, !28, i64 884}
!418 = !{!38, !28, i64 112}
!419 = !{!38, !28, i64 116}
!420 = !{!38, !28, i64 120}
!421 = distinct !{!421, !41}
!422 = distinct !{!422, !41, !48, !49}
!423 = distinct !{!423, !41, !49, !48}
!424 = distinct !{!424, !41, !48, !49}
!425 = distinct !{!425, !41, !49, !48}
!426 = distinct !{!426, !41, !48, !49}
!427 = distinct !{!427, !41, !49, !48}
!428 = distinct !{!428, !41}
!429 = distinct !{!429, !41, !48, !49}
!430 = distinct !{!430, !41, !49, !48}
!431 = distinct !{!431, !41, !48, !49}
!432 = distinct !{!432, !41, !49, !48}
!433 = distinct !{!433, !41, !49, !48}
!434 = distinct !{!434, !41, !49, !48}
!435 = distinct !{!435, !41, !49, !48}
!436 = distinct !{!436, !41, !49, !48}
!437 = distinct !{!437, !41, !48, !49}
!438 = distinct !{!438, !41, !48, !49}
!439 = distinct !{!439, !41, !48, !49}
!440 = distinct !{!440, !41, !48, !49}
!441 = distinct !{!441, !41, !48, !49}
!442 = distinct !{!442, !41, !49, !48}
!443 = distinct !{!443, !41, !48, !49}
!444 = distinct !{!444, !41, !49, !48}
!445 = distinct !{!445, !41, !48, !49}
!446 = distinct !{!446, !41, !49, !48}
!447 = distinct !{!447, !41}
!448 = distinct !{!448, !41, !48, !49}
!449 = distinct !{!449, !41, !49, !48}
!450 = distinct !{!450, !41, !48, !49}
!451 = distinct !{!451, !41, !49, !48}
!452 = distinct !{!452, !41}
!453 = distinct !{!453, !42}
!454 = distinct !{!454, !41}
!455 = distinct !{!455, !41, !48, !49}
!456 = distinct !{!456, !41, !49, !48}
!457 = distinct !{!457, !41, !48, !49}
!458 = distinct !{!458, !41, !49, !48}
!459 = distinct !{!459, !41, !48, !49}
!460 = distinct !{!460, !41, !49, !48}
!461 = distinct !{!461, !41, !48, !49}
!462 = distinct !{!462, !41, !49, !48}
!463 = distinct !{!463, !41, !48, !49}
!464 = distinct !{!464, !41, !49, !48}
!465 = distinct !{!465, !41}
!466 = distinct !{!466, !42}
!467 = distinct !{!467, !41}
!468 = distinct !{!468, !41}
!469 = distinct !{!469, !41}
!470 = distinct !{!470, !42}
end_hunk_1
