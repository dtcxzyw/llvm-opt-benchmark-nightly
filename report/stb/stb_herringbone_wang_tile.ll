Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_herringbone_wang_tile?download=true
inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw__parse_h_rect:bb.a
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !52
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !53
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge39.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !68
  %i.ad = sext i32 %i.w to i64                    ; 2 uses
  %i.ae = zext nneg i32 %i.e to i64
  %i.af = sext i32 %i.v to i64
  %i.ag = sext i32 %i.ac to i64
  %wide.trip.count44 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext i32 %i.x to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next42, %._crit_edge ] ; 3 uses
  %i.ah = mul nuw nsw i64 %indvars.iv41, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah ; 2 uses
  %i.aj = add nsw i64 %indvars.iv41, %i.af
  %i.ak = mul nsw i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 %i.ak ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %i.am = mul nuw nsw i64 %indvars.iv, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %i.ao = add nsw i64 %indvars.iv, %i.ad
  %i.ap = mul nsw i64 %i.ao, 3
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, ptr noundef nonnull align 1 dereferenceable(3) %i.aq, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ar = mul nuw nsw i64 %indvars.iv.next, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = add nsw i64 %indvars.iv.next, %i.ad
  %i.au = mul nsw i64 %i.at, 3
  %i.av = getelementptr inbounds i8, ptr %i.al, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.as, ptr noundef nonnull align 1 dereferenceable(3) %i.av, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.b, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge39.split, label %.preheader, !llvm.loop !109

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a
  %i.aw = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !64 ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !64
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bc
  store ptr %i.i, ptr %i.bd, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 8 uses
  %i.e = mul nsw i32 %i.d, 6
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !48
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !49
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !50
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !51
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !52
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !53
  %factor.op.mul38 = mul i32 %i.d, 3
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge40.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !68
  %i.ad = sext i32 %i.w to i64                    ; 3 uses
  %i.ae = sext i32 %i.v to i64
  %i.af = sext i32 %i.ac to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count45 = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod47 = trunc i32 %i.d to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv42 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next43, %._crit_edge ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv42 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul38, %i.ah
  %i.ai = sext i32 %factor.op.mul.reass to i64
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %indvars.iv42, %i.ae
  %i.al = mul nsw i64 %i.ak, %i.af
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 %i.al ; 3 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.ap = add nsw i64 %indvars.iv, %i.ad
  %i.aq = mul nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = mul nuw nsw i64 %indvars.iv.next, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = add nsw i64 %indvars.iv.next, %i.ad
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) %i.aw, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !110

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.ax = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ax
  %i.az = add nsw i64 %indvars.iv.epil.init, %i.ad
  %i.ba = mul nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds i8, ptr %i.am, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge40.split, label %.preheader, !llvm.loop !111

._crit_edge40.split:                              ; preds = %._crit_edge, %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !66 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !66
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  store ptr %i.i, ptr %i.bj, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_build_tileset_from_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbhw_config, align 4       ; 23 uses
  %6 = alloca %struct.stbhw__process, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %5, i8 0, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.a, align 8
  %i.b = mul nsw i32 %3, 3                        ; 9 uses
  %i.c = add i32 %i.b, -1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45    ; 2 uses
  %i.g = add i32 %i.b, -2
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !45
  %i.k = xor i8 %i.j, 55                          ; 2 uses
  %i.l = add i32 %i.b, -3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !45
  %i.p = xor i8 %i.o, 110                         ; 2 uses
  %i.q = add i32 %i.b, -4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !45
  %i.u = xor i8 %i.t, -91                         ; 2 uses
  %i.v = add i32 %i.b, -5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !45
  %i.z = xor i8 %i.y, -36                         ; 2 uses
  %i.aa = add i32 %i.b, -6
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45
  %i.ae = xor i8 %i.ad, 19                        ; 2 uses
  %i.af = add i32 %i.b, -7
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !45
  %i.aj = xor i8 %i.ai, 74                        ; 2 uses
  %i.ak = add i32 %i.b, -8
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !45  ; 2 uses
  %.not = icmp eq i8 %i.an, 65                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %5, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = zext i8 %i.f to i32                     ; 2 uses
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !40
  %i.aq = zext i8 %i.k to i32                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !40
  %i.as = zext i8 %i.p to i32                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.as, ptr %i.at, align 4, !tbaa !40
  %i.au = zext i8 %i.u to i32                     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.au, ptr %i.av, align 4, !tbaa !40
  %i.aw = zext i8 %i.z to i32                     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !41
  %i.ay = zext i8 %i.ae to i32                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !42
  %i.ba = zext i8 %i.aj to i32                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bc = xor i8 %i.an, -127
  %i.bd = add i32 %i.b, -9
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %1, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !45
  %i.bh = xor i8 %i.bg, -72
  store i32 0, ptr %5, align 4, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = zext i8 %i.f to i32                     ; 2 uses
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !40
  %i.bk = zext i8 %i.k to i32                     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !40
  %i.bm = zext i8 %i.p to i32                     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !40
  %i.bo = zext i8 %i.u to i32                     ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !40
  %i.bq = zext i8 %i.z to i32                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !40
  %i.bs = zext i8 %i.ae to i32                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !40
  %i.bu = zext i8 %i.aj to i32                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !41
  %i.bw = zext i8 %i.bc to i32                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !42
  %i.by = zext i8 %i.bh to i32                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !36
  %i.ca = mul nuw nsw i32 %i.bq, %i.bo
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cb = phi i32 [ %i.bs, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.cc = phi i32 [ %i.ca, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.cd = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %i.ce = phi i32 [ %i.bo, %bb.c ], [ %i.au, %bb.b ] ; 3 uses
  %i.cf = phi i32 [ %i.bm, %bb.c ], [ %i.as, %bb.b ] ; 5 uses
  %i.cg = phi i32 [ %i.bk, %bb.c ], [ %i.aq, %bb.b ] ; 4 uses
  %i.ch = phi i32 [ %i.bj, %bb.c ], [ %i.ap, %bb.b ] ; 4 uses
  %i.ci = phi i32 [ %i.by, %bb.c ], [ %i.ba, %bb.b ] ; 2 uses
  %i.cj = phi i32 [ %i.bw, %bb.c ], [ %i.ay, %bb.b ] ; 3 uses
  %i.ck = phi i32 [ %i.bu, %bb.c ], [ %i.aw, %bb.b ] ; 3 uses
  %or.cond = icmp samesign ugt i32 %i.ck, 64
  %i.cl = icmp samesign ugt i32 %i.cj, 64
  %or.cond8 = select i1 %or.cond, i1 true, i1 %i.cl
  %i.cm = icmp eq i32 %i.ci, 0
  %or.cond73 = select i1 %or.cond8, i1 true, i1 %i.cm
  br i1 %or.cond73, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.co = icmp samesign ugt i32 %i.ch, 32
  %i.cp = icmp samesign ugt i32 %i.cg, 32
  %or.cond12 = select i1 %i.co, i1 true, i1 %i.cp
  %i.cq = icmp samesign ugt i32 %i.cf, 32
  %or.cond16 = select i1 %or.cond12, i1 true, i1 %i.cq
  %i.cr = icmp samesign ugt i32 %i.ce, 32
  %or.cond20 = select i1 %or.cond16, i1 true, i1 %i.cr
  br i1 %or.cond20, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cs = mul nuw nsw i32 %i.ce, %i.cf            ; 2 uses
  %i.ct = mul nuw nsw i32 %i.cg, %i.ch            ; 2 uses
  %i.cu = mul nuw nsw i32 %i.cj, %i.ck            ; 2 uses
  %i.cv = mul nuw nsw i32 %i.cu, %i.cg
  %i.cw = mul nuw nsw i32 %i.cv, %i.cf
  %i.cx = mul i32 %i.cw, %i.ct
  %i.cy = mul i32 %i.cx, %i.cs
  %i.cz = mul nuw nsw i32 %i.cu, %i.ch
  %i.da = mul nuw nsw i32 %i.cz, %i.ct
  %i.db = mul i32 %i.da, %i.ce
  %i.dc = mul i32 %i.db, %i.cs
  br label %stbhw__get_template_info.exit

bb.h:                                             ; preds = %bb.f
  %i.dd = mul nuw nsw i32 %i.cg, %i.ch
  %i.de = mul nuw nsw i32 %i.cj, %i.ck
  %i.df = mul nuw nsw i32 %i.de, %i.dd            ; 2 uses
  %i.dg = mul nuw nsw i32 %i.df, %i.cf
  %i.dh = mul i32 %i.dg, %i.cf
  %i.di = mul i32 %i.dh, %i.cc
  %i.dj = mul i32 %i.df, %i.cc
  %i.dk = mul i32 %i.dj, %i.cb
  %i.dl = mul i32 %i.dk, %i.cb
  br label %stbhw__get_template_info.exit

stbhw__get_template_info.exit:                    ; preds = %bb.g, %bb.h
  %.082.i = phi i32 [ %i.dl, %bb.h ], [ %i.dc, %bb.g ] ; 2 uses
  %.081.i = phi i32 [ %i.di, %bb.h ], [ %i.cy, %bb.g ] ; 2 uses
  store i32 %i.cd, ptr %0, align 8, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.dm, align 4, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.dn, ptr noundef nonnull align 4 dereferenceable(24) %i.cn, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.081.i, ptr %i.do, align 4, !tbaa !112
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.082.i, ptr %i.dp, align 4, !tbaa !113
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.dq, align 8, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.dr, align 8, !tbaa !64
  %i.ds = sext i32 %.081.i to i64
  %i.dt = shl nsw i64 %i.ds, 3
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.dt) #17
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !63
  %i.dw = sext i32 %.082.i to i64
  %i.dx = shl nsw i64 %i.dw, 3
  %i.dy = tail call noalias ptr @malloc(i64 noundef %i.dx) #17
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !65
  store ptr %0, ptr %6, align 8, !tbaa !69
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.ea, align 8, !tbaa !67
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %2, ptr %i.eb, align 8, !tbaa !68
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @stbhw__parse_h_rect, ptr %i.ec, align 8, !tbaa !33
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @stbhw__parse_v_rect, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %3, ptr %8, align 4, !tbaa !43
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %4, ptr %i.ed, align 8, !tbaa !44
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.ee, align 8, !tbaa !34
  %i.ef = call i32 @stbhw__process_template(ptr noundef nonnull %6)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %stbhw__get_template_info.exit
  %.049 = phi i32 [ %i.ef, %stbhw__get_template_info.exit ], [ 0, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %.049
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw_free_tileset(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.k) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !64
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %.preheader, !llvm.loop !114

bb.c:                                             ; preds = %.lr.ph20, %bb.c
  %indvars.iv22 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next23, %bb.c ] ; 2 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv22
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.q) #16
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.r = load i32, ptr %i.e, align 8, !tbaa !66
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next23, %i.s
  br i1 %i.t, label %bb.c, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.x) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbhw__set_pixel(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = mul nsw i32 %3, %1
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = mul nsw i32 %2, 3
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 3, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbhw__stbhw__set_pixel_whiten(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !45
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw nsw i16 %i.b, 1
  %i.d = add nuw nsw i16 %i.c, 255
  %i.e = udiv i16 %i.d, 3
  %i.f = trunc nuw i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.h = load <2 x i8>, ptr %i.g, align 1, !tbaa !45
  %i.i = zext <2 x i8> %i.h to <2 x i16>
  %i.j = shl nuw nsw <2 x i16> %i.i, splat (i16 1)
  %i.k = add nuw nsw <2 x i16> %i.j, splat (i16 255)
  %i.l = udiv <2 x i16> %i.k, splat (i16 3)       ; 2 uses
  %i.m = bitcast <2 x i16> %i.l to <4 x i8>
  %i.n = extractelement <4 x i8> %i.m, i64 0
  %i.o = bitcast <2 x i16> %i.l to <4 x i8>
  %i.p = extractelement <4 x i8> %i.o, i64 2
  %i.q = mul nsw i32 %3, %1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = mul nsw i32 %2, 3
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u ; 3 uses
  store i8 %i.f, ptr %i.v, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.n, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.p, ptr %.sroa.5.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__draw_hline(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #13 {
bb.a:
  %i.a = mul nsw i32 %5, 3
  %i.b = sdiv i32 %i.a, 8                         ; 3 uses
  %i.c = mul nsw i32 %5, 5
  %i.d = sdiv i32 %i.c, 8                         ; 3 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = mul nsw i32 %3, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = sext i32 %2 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %5, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.k = add nsw i64 %indvars.iv, %i.i
  %i.l = mul nsw i64 %i.k, 3
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.n = add nsw i64 %indvars.iv.next, %i.i
  %i.o = mul nsw i64 %i.n, 3
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !17

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod63 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.q = add nsw i64 %indvars.iv.epil.init, %i.i
  %i.r = mul nsw i64 %i.q, 3
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.t = sub nsw i32 %i.d, %i.b
  %i.u = icmp slt i32 %i.t, 2
  br i1 %i.u, label %.thread, label %bb.c

.thread:                                          ; preds = %._crit_edge
  %i.v = sdiv i32 %5, 2                           ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = and i32 %5, 1
  %spec.select.v = add nuw nsw i32 %i.x, 1
  %spec.select = add nsw i32 %spec.select.v, %i.v
  br label %iter.check

bb.c:                                             ; preds = %._crit_edge
  %i.y = icmp slt i32 %i.b, %i.d
  br i1 %i.y, label %iter.check, label %._crit_edge33

iter.check:                                       ; preds = %.thread, %bb.c
  %.044 = phi i32 [ %spec.select, %.thread ], [ %i.d, %bb.c ]
  %.02643 = phi i32 [ %i.w, %.thread ], [ %i.b, %bb.c ]
  %i.z = sext i32 %6 to i64                       ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr @stbhw__color, i64 %i.z
  %i.ab = sext i32 %4 to i64                      ; 2 uses
  %i.ac = getelementptr inbounds [3 x i8], ptr %i.aa, i64 %i.ab ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 3 uses
end_hunk_0
begin_hunk_1_@stbhw__corner_process_v_rect:bb.a
  %.pre293301 = mul nsw i64 %i.au, 3
  %.pn302 = mul nsw i64 %i.pj, %i.pi
  %i.qf = getelementptr inbounds i8, ptr %i.pf, i64 %.pn302
  %i.qg = getelementptr i8, ptr %i.qf, i64 %.pre293301 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qg, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.qh = getelementptr i8, ptr %i.qg, i64 3
  br label %.split.us.2.i246.sink.split

.split.us.2.i246.sink.split:                      ; preds = %bb.p, %.preheader.split.split.preheader.2.i244.thread.thread, %.preheader.split.split.preheader.2.i244.thread
  %.sink = phi ptr [ %i.qe, %.preheader.split.split.preheader.2.i244.thread ], [ %i.qc, %.preheader.split.split.preheader.2.i244.thread.thread ], [ %i.qh, %bb.p ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sink, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.2.i246

.split.us.2.i246:                                 ; preds = %.split.us.2.i246.sink.split, %.split.us.1.i.thread298, %.split.us.1.i
  %.not284 = icmp slt i32 %i.fm, %i.kj
  br i1 %.not284, label %.preheader.split.split.us.3.i247.thread, label %stbhw__draw_clipped_corner.exit248

.preheader.split.split.us.3.i247.thread:          ; preds = %.split.us.2.i246
  %i.qi = add nsw i64 %i.pi, 1
  %i.qj = mul nsw i64 %i.qi, %i.pj
  %i.qk = getelementptr inbounds i8, ptr %i.pf, i64 %i.qj
  %i.ql = mul nsw i64 %i.au, 3
  %i.qm = getelementptr inbounds i8, ptr %i.qk, i64 %i.ql
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qm, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit248

stbhw__draw_clipped_corner.exit248:               ; preds = %.preheader.split.split.us.3.i247.thread, %.split.us.2.i246, %stbhw__draw_clipped_corner.exit
  %i.qn = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 72
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.qo, i64 %i.hi
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !40
  %.not140 = icmp eq i32 %i.qq, 0
  br i1 %.not140, label %stbhw__draw_clipped_corner.exit262, label %bb.q

bb.q:                                             ; preds = %stbhw__draw_clipped_corner.exit248
  %i.qr = or disjoint i32 %i.kj, 1                ; 2 uses
  %i.qs = icmp slt i32 %i.qr, 3
  br i1 %i.qs, label %stbhw__draw_clipped_corner.exit262, label %.split.us.i251.thread

.split.us.i251.thread:                            ; preds = %bb.q
  %i.qt = load i32, ptr %i.g, align 8, !tbaa !68
  %i.qu = sext i32 %i.qt to i64                   ; 2 uses
  %i.qv = add nsw i32 %i.qr, %2
  %i.qw = sext i32 %i.qv to i64                   ; 2 uses
  %i.qx = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.qy = add nsw i64 %i.qw, -2
  %i.qz = mul nsw i64 %i.qy, %i.qu
  %i.ra = getelementptr inbounds i8, ptr %i.qx, i64 %i.qz
  %i.rb = mul nsw i64 %i.au, 3
  %i.rc = getelementptr inbounds i8, ptr %i.ra, i64 %i.rb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rc, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.rd = add nsw i64 %i.qw, -1
  %i.re = mul nsw i64 %i.rd, %i.qu
  %i.rf = getelementptr inbounds i8, ptr %i.qx, i64 %i.re
  %i.rg = mul nsw i64 %i.au, 3
  %i.rh = getelementptr i8, ptr %i.rf, i64 %i.rg  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rh, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.ri = icmp slt i32 %i.d, 2
  br i1 %i.ri, label %stbhw__draw_clipped_corner.exit262, label %bb.r

bb.r:                                             ; preds = %.split.us.i251.thread
  %i.rj = getelementptr i8, ptr %i.rh, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rj, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit262

stbhw__draw_clipped_corner.exit262:               ; preds = %bb.q, %bb.r, %.split.us.i251.thread, %stbhw__draw_clipped_corner.exit248
  %i.rk = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 56
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.l
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !40
  %.not141 = icmp eq i32 %i.rn, 0
  br i1 %.not141, label %stbhw__draw_clipped_corner.exit276, label %bb.s

bb.s:                                             ; preds = %stbhw__draw_clipped_corner.exit262
  %i.ro = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.rp = load i32, ptr %i.g, align 8, !tbaa !68
  %i.rq = sext i32 %i.fn to i64                   ; 2 uses
  %i.rr = sext i32 %i.rp to i64                   ; 2 uses
  %i.rs = icmp slt i32 %i.d, 1
  %i.rt = mul nsw i64 %i.rr, %i.er
  %i.ru = getelementptr inbounds i8, ptr %i.ro, i64 %i.rt ; 2 uses
  br i1 %i.rs, label %stbhw__draw_clipped_corner.exit276, label %.preheader.split.split.preheader.2.i271

.preheader.split.split.preheader.2.i271:          ; preds = %bb.s
  %i.rv = icmp eq i32 %i.d, 1
  %.pre294 = mul nsw i64 %i.rq, 3                 ; 2 uses
  br i1 %i.rv, label %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge, label %bb.t

bb.t:                                             ; preds = %.preheader.split.split.preheader.2.i271
  %i.rw = getelementptr i8, ptr %i.ru, i64 %.pre294
  %i.rx = getelementptr i8, ptr %i.rw, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rx, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge

.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge: ; preds = %.preheader.split.split.preheader.2.i271, %bb.t
  %i.ry = getelementptr i8, ptr %i.ru, i64 %.pre294
  %i.rz = getelementptr i8, ptr %i.ry, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rz, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.sa = add nsw i64 %i.er, 1
  %i.sb = mul nsw i64 %i.sa, %i.rr
  %i.sc = getelementptr inbounds i8, ptr %i.ro, i64 %i.sb
  %i.sd = mul nsw i64 %i.rq, 3
  %i.se = getelementptr i8, ptr %i.sc, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.se, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sf, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit276

stbhw__draw_clipped_corner.exit276:               ; preds = %bb.s, %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge, %stbhw__draw_clipped_corner.exit262
  %i.sg = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 40
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.fp
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !40
  %.not142 = icmp eq i32 %i.sj, 0
  %.pre286.pre289 = load ptr, ptr %i.e, align 8, !tbaa !67 ; 2 uses
  %.pre288.pre291 = load i32, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  br i1 %.not142, label %bb.v, label %bb.u

bb.u:                                             ; preds = %stbhw__draw_clipped_corner.exit276
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre286.pre289, i32 noundef %.pre288.pre291, i32 noundef %1, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.kj, i32 noundef %i.fm, i32 noundef %i.fm)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  %.pre286.pre = load ptr, ptr %i.e, align 8, !tbaa !67
  %.pre288.pre = load i32, ptr %i.g, align 8, !tbaa !68
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %stbhw__draw_clipped_corner.exit276
  %.pre288 = phi i32 [ %.pre288.pre, %bb.u ], [ %.pre288.pre291, %stbhw__draw_clipped_corner.exit276 ] ; 2 uses
  %.pre286 = phi ptr [ %.pre286.pre, %bb.u ], [ %.pre286.pre289, %stbhw__draw_clipped_corner.exit276 ] ; 2 uses
  %i.sk = phi ptr [ %.pre, %bb.u ], [ %i.sg, %stbhw__draw_clipped_corner.exit276 ]
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 88
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.ix
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !40
  %.not143 = icmp eq i32 %i.sn, 0
  br i1 %.not143, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.so = or disjoint i32 %i.kj, 1
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre286, i32 noundef %.pre288, i32 noundef %1, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.kj, i32 noundef %i.fm, i32 noundef %i.so)
  %.pre285 = load ptr, ptr %i.e, align 8, !tbaa !67
  %.pre287 = load i32, ptr %i.g, align 8, !tbaa !68
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.sp = phi i32 [ %.pre287, %bb.w ], [ %.pre288, %bb.v ]
  %i.sq = phi ptr [ %.pre285, %bb.w ], [ %.pre286, %bb.v ]
  %i.sr = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.j
  %i.ss = mul nsw i32 %i.sp, %2
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds i8, ptr %i.sq, i64 %i.st
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sr, i64 3, i1 false)
  %i.sw = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.sx = load i32, ptr %i.g, align 8, !tbaa !68
  %i.sy = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.du
  %i.sz = mul nsw i32 %i.sx, %i.hf
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %i.sw, i64 %i.ta
  %i.tc = getelementptr inbounds i8, ptr %i.tb, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tc, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sy, i64 3, i1 false)
  %i.td = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.te = load i32, ptr %i.g, align 8, !tbaa !68
  %i.tf = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.hi
  %i.tg = mul nsw i32 %i.te, %i.kk
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds i8, ptr %i.td, i64 %i.th
  %i.tj = getelementptr inbounds i8, ptr %i.ti, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tf, i64 3, i1 false)
  %i.tk = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.tl = load i32, ptr %i.g, align 8, !tbaa !68
  %i.tm = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.l
  %i.tn = mul nsw i32 %i.tl, %2
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds i8, ptr %i.tk, i64 %i.to
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tq, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tm, i64 3, i1 false)
  %i.tr = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.ts = load i32, ptr %i.g, align 8, !tbaa !68
  %i.tt = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.fp
  %i.tu = mul nsw i32 %i.ts, %i.hf
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds i8, ptr %i.tr, i64 %i.tv
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tx, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tt, i64 3, i1 false)
  %i.ty = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.tz = load i32, ptr %i.g, align 8, !tbaa !68
  %i.ua = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.ix
  %i.ub = mul nsw i32 %i.tz, %i.kk
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds i8, ptr %i.ty, i64 %i.uc
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ue, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ua, i64 3, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_make_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbhw__process, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %3, ptr %i.c, align 8, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %4, ptr %6, align 8, !tbaa !68
  store ptr null, ptr %5, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !34
  %i.e = load i32, ptr %0, align 4, !tbaa !39
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %spec.select = select i1 %.not, ptr @stbhw__edge_process_h_rect, ptr @stbhw__corner_process_h_rect
  %spec.select76 = select i1 %.not, ptr @stbhw__edge_process_v_rect, ptr @stbhw__corner_process_v_rect
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %spec.select, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %spec.select76, ptr %i.g, align 8, !tbaa !38
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = mul nsw i32 %2, 3
  %i.j = sext i32 %i.i to i64                     ; 9 uses
  %i.k = sext i32 %4 to i64                       ; 9 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.l = icmp ult i32 %3, 8
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.b ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.b ]
  %i.m = mul nsw i64 %indvars.iv, %i.k
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.o = mul nsw i64 %indvars.iv.next, %i.k
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.q = mul nsw i64 %indvars.iv.next.1, %i.k
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.s = mul nsw i64 %indvars.iv.next.2, %i.k
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %i.u = mul nsw i64 %indvars.iv.next.3, %i.k
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %i.w = mul nsw i64 %indvars.iv.next.4, %i.k
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %i.y = mul nsw i64 %indvars.iv.next.5, %i.k
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %i.aa = mul nsw i64 %indvars.iv.next.6, %i.k
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !220

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ac = mul nsw i64 %indvars.iv.epil, %i.k
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 -1, i64 %i.j, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !221

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ae = call i32 @stbhw__process_template(ptr noundef nonnull %5)
  %.not56 = icmp eq i32 %i.ae, 0
  br i1 %.not56, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.af = load i32, ptr %0, align 4, !tbaa !39
  %.not57 = icmp eq i32 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = mul nsw i32 %2, 3                       ; 9 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = add i32 %i.ah, -1
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  store i8 %i.aj, ptr %i.am, align 1, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !40
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = add i32 %i.ah, -2
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %1, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !40
  %i.av = trunc i32 %i.au to i8
  %i.aw = add i32 %i.ah, -3
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = add i32 %i.ah, -4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.bd
  store i8 %i.bb, ptr %i.be, align 1, !tbaa !45
  %i.bf = add i32 %i.ah, -5
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg ; 2 uses
  %i.bi = add i32 %i.ah, -6
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %1, i64 %i.bj ; 2 uses
  %i.bl = add i32 %i.ah, -7
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm ; 2 uses
  br i1 %.not57, label %.preheader, label %.preheader58

.preheader58:                                     ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !41
  %i.bq = trunc i32 %i.bp to i8
  store i8 %i.bq, ptr %i.bh, align 1, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !42
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %i.bk, align 1, !tbaa !45
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !36
  %i.bw = trunc i32 %i.bv to i8
  store i8 %i.bw, ptr %i.bn, align 1, !tbaa !45
  br label %.loopexit.loopexit

.preheader:                                       ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !40
  %i.bz = trunc i32 %i.by to i8
  store i8 %i.bz, ptr %i.bh, align 1, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.bk, align 1, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !41
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.bn, align 1, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !42
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = add i32 %i.ah, -8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %1, i64 %i.ck
  store i8 %i.ci, ptr %i.cl, align 1, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !36
  %i.co = trunc i32 %i.cn to i8
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.preheader, %.preheader58
  %.sink80 = phi i32 [ -9, %.preheader ], [ -8, %.preheader58 ]
  %.sink = phi i8 [ %i.co, %.preheader ], [ -64, %.preheader58 ]
  %i.cp = add i32 %i.ah, %.sink80
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cq
  store i8 %.sink, ptr %i.cr, align 1, !tbaa !45
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.ct = load i32, ptr %i.b, align 4, !tbaa !43
  %i.cu = mul nsw i32 %i.ct, 3
  %i.cv = add i32 %i.cu, -2
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !45
  %i.cz = xor i8 %i.cy, 55
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !45
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.db = load i32, ptr %i.b, align 4, !tbaa !43
  %i.dc = mul nsw i32 %i.db, 3
  %i.dd = add i32 %i.dc, -3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %i.de ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !45
  %i.dh = xor i8 %i.dg, 110
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !45
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !43
  %i.dk = mul nsw i32 %i.dj, 3
  %i.dl = add i32 %i.dk, -4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.di, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !45
  %i.dp = xor i8 %i.do, -91
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !45
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.dr = load i32, ptr %i.b, align 4, !tbaa !43
  %i.ds = mul nsw i32 %i.dr, 3
  %i.dt = add i32 %i.ds, -5
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dq, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !45
  %i.dx = xor i8 %i.dw, -36
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !45
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.dz = load i32, ptr %i.b, align 4, !tbaa !43
  %i.ea = mul nsw i32 %i.dz, 3
  %i.eb = add i32 %i.ea, -6
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 %i.ec ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !45
  %i.ef = xor i8 %i.ee, 19
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !45
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !43
  %i.ei = mul nsw i32 %i.eh, 3
  %i.ej = add i32 %i.ei, -7
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.eg, i64 %i.ek ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !45
  %i.en = xor i8 %i.em, 74
  store i8 %i.en, ptr %i.el, align 1, !tbaa !45
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.ep = load i32, ptr %i.b, align 4, !tbaa !43
  %i.eq = mul nsw i32 %i.ep, 3
  %i.er = add i32 %i.eq, -8
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.eo, i64 %i.es ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !45
  %i.ev = xor i8 %i.eu, -127
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !45
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.ex = load i32, ptr %i.b, align 4, !tbaa !43
  %i.ey = mul nsw i32 %i.ex, 3
  %i.ez = add i32 %i.ey, -9
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ew, i64 %i.fa ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !45
  %i.fd = xor i8 %i.fc, -72
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %.055 = phi i32 [ 0, %._crit_edge ], [ 1, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %.055
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = distinct !{!3, !37}
!4 = distinct !{!4, !37}
!5 = distinct !{!5, !37}
!6 = distinct !{!6, !37}
!7 = distinct !{!7, !37}
!8 = distinct !{!8, !37}
!9 = distinct !{!9, !37}
!10 = distinct !{!10, !37}
!11 = distinct !{!11, !37}
!12 = distinct !{!12, !37}
!13 = distinct !{!13, !37}
!14 = distinct !{!14, !37}
!15 = distinct !{!15, !37}
!16 = distinct !{!16, !37}
!17 = distinct !{!17, !37}
!18 = distinct !{!18, !37}
!19 = distinct !{!19, !37}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTS13stbhw_tileset", !28, i64 0}
!32 = !{!"stbhw__process", !31, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !29, i64 32, !25, i64 40, !25, i64 44, !25, i64 48}
!33 = !{!32, !28, i64 16}
!34 = !{!32, !28, i64 8}
!35 = !{!"", !25, i64 0, !25, i64 4, !24, i64 8, !25, i64 32, !25, i64 36, !24, i64 40}
!36 = !{!35, !25, i64 4}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!32, !28, i64 24}
!39 = !{!35, !25, i64 0}
!40 = !{!25, !25, i64 0}
!41 = !{!35, !25, i64 32}
!42 = !{!35, !25, i64 36}
!43 = !{!32, !25, i64 44}
!44 = !{!32, !25, i64 48}
!45 = !{!24, !24, i64 0}
!46 = !{!28, !28, i64 0}
!47 = !{!"", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !24, i64 4, !24, i64 5, !24, i64 6}
!48 = !{!47, !24, i64 0}
!49 = !{!47, !24, i64 1}
!50 = !{!47, !24, i64 2}
!51 = !{!47, !24, i64 3}
!52 = !{!47, !24, i64 4}
!53 = !{!47, !24, i64 5}
!54 = !{!"p1 int", !28, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!"any p2 pointer", !28, i64 0}
!60 = !{!"stbhw_tileset", !25, i64 0, !24, i64 4, !25, i64 28, !59, i64 32, !59, i64 40, !25, i64 48, !25, i64 52, !25, i64 56, !25, i64 60}
!61 = !{!60, !25, i64 28}
!62 = !{!60, !25, i64 0}
!63 = !{!60, !59, i64 32}
!64 = !{!60, !25, i64 48}
!65 = !{!60, !59, i64 40}
!66 = !{!60, !25, i64 56}
!67 = !{!32, !29, i64 32}
!68 = !{!32, !25, i64 40}
!69 = !{!32, !31, i64 0}
!70 = !{!"branch_weights", i32 2, i32 14}
!71 = distinct !{!71, !37}
!72 = distinct !{!72, !37}
!73 = distinct !{!73, !37}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !37, !92}
!76 = distinct !{!76, !37, !92}
!77 = distinct !{!77, !37, !92}
!78 = distinct !{!78, !37, !92}
!79 = distinct !{!79, !37, !92}
!80 = distinct !{!80, !37, !92}
!81 = distinct !{!81, !37, !92}
!82 = distinct !{!82, !37, !92}
!83 = distinct !{!83, !37, !92}
!84 = distinct !{!84, !37, !92}
!85 = distinct !{!85, !37, !92}
!86 = distinct !{!86, !37, !92}
!87 = distinct !{!87, !37, !92}
!88 = distinct !{!88, !37, !92}
!89 = distinct !{!89, !37, !92}
!90 = distinct !{!90, !37, !92}
!91 = !{ptr @stbhw__process_h_row}
!92 = !{!"llvm.loop.unswitch.partial.disable"}
!93 = !{ptr @stbhw__process_v_row}
!94 = distinct !{!94, !37}
!95 = distinct !{!95, !37, !56, !57}
!96 = distinct !{!96, !37, !57, !56}
!97 = distinct !{!97, !58}
!98 = distinct !{!98, !37}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37, !56, !57}
!101 = distinct !{!101, !37, !57, !56}
!102 = distinct !{!102, !58}
!103 = distinct !{!103, !58}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37}
!106 = distinct !{!106, !37}
!107 = distinct !{!107, !37}
!108 = distinct !{!108, !37}
!109 = distinct !{!109, !37}
!110 = distinct !{!110, !37}
!111 = distinct !{!111, !37}
!112 = !{!60, !25, i64 52}
!113 = !{!60, !25, i64 60}
!114 = distinct !{!114, !37}
!115 = distinct !{!115, !37}
!116 = distinct !{!116, i1 false, !"LVerDomain"}
!117 = distinct !{!117, !116}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !37, !56, !57}
!120 = distinct !{!120, !37, !56, !57}
!121 = distinct !{!121, !37, !56}
!122 = !{!117}
!123 = !{!118}
!124 = distinct !{!124, i1 false, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !37, !56, !57}
!128 = distinct !{!128, !37, !56, !57}
!129 = distinct !{!129, !37, !56}
!130 = distinct !{!130, i1 false, !"LVerDomain"}
!131 = distinct !{!131, !130}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !37, !56, !57}
!134 = distinct !{!134, !37, !56, !57}
!135 = distinct !{!135, !37, !56}
!136 = distinct !{!136, i1 false, !"LVerDomain"}
!137 = distinct !{!137, !136}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !37, !56, !57}
!140 = distinct !{!140, !37, !56, !57}
!141 = distinct !{!141, !37, !56}
!142 = distinct !{!142, i1 false, !"LVerDomain"}
!143 = distinct !{!143, !142}
!144 = distinct !{!144, !142}
!145 = distinct !{!145, !37, !56, !57}
!146 = distinct !{!146, !37, !56, !57}
!147 = distinct !{!147, !37, !56}
!148 = !{!125}
!149 = !{!126}
!150 = !{!131}
!151 = !{!132}
!152 = !{!137}
end_hunk_1
