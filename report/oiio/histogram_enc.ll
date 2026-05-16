inline.NumInlined: 117
inline.NumDeleted: 52
begin_hunk_0_@VP8LAllocateHistogramSet:bb.a
.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  ret ptr %i.j
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LHistogramSetClear(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3240
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25   ; 8 uses
  %i.h = icmp sgt i32 %i.e, 0
  %i.i = shl i32 4, %i.e
  %i.j = add nuw i32 %i.i, 4432
  %i.k = select i1 %i.h, i32 %i.j, i32 4432
  %i.l = sext i32 %i.g to i64
  %i.m = sext i32 %i.k to i64                     ; 3 uses
  %i.n = add nsw i64 %i.m, 39
  %i.o = mul nsw i64 %i.n, %i.l
  %i.p = add nsw i64 %i.o, 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !22
  store i32 %i.g, ptr %i.f, align 4, !tbaa !25
  store i32 %i.g, ptr %0, align 8, !tbaa !26
  %i.r = icmp sgt i32 %i.g, 0
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.s = zext nneg i32 %i.g to i64                ; 5 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t ; 2 uses
  %xtraiter = and i64 %i.s, 1
  %i.v = icmp eq i32 %i.g, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.s, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %i.w = phi ptr [ %i.q, %.lr.ph.i.new ], [ %i.an, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 4 uses
  %.017.i = phi ptr [ %i.u, %.lr.ph.i.new ], [ %i.aq, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.x = ptrtoint ptr %.017.i to i64
  %i.y = add i64 %i.x, 31
  %i.z = and i64 %i.y, -32
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 3312
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 %i.m
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %i.ah, 31
  %i.aj = and i64 %i.ai, -32
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 3312
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !22  ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !13
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %i.m ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.unr-lcssa, label %bb.b, !llvm.loop !28

.lr.ph.unr-lcssa:                                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.unr-lcssa, %.lr.ph.i
  %.epil.init = phi ptr [ %i.q, %.lr.ph.i ], [ %i.an, %.lr.ph.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.lr.ph.unr-lcssa ] ; 2 uses
  %.017.i.epil.init = phi ptr [ %i.u, %.lr.ph.i ], [ %i.aq, %.lr.ph.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.ar = ptrtoint ptr %.017.i.epil.init to i64
  %i.as = add i64 %i.ar, 31
  %i.at = and i64 %i.as, -32
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.epil.init, i64 %indvars.iv.i.epil.init
  store ptr %i.au, ptr %i.av, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 3312
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.epil.init
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.an, %.lr.ph.unr-lcssa ], [ %i.ax, %.epil.preheader ] ; 9 uses
  %xtraiter26 = and i64 %i.s, 7                   ; 3 uses
  %i.ba = icmp ult i32 %i.g, 8
  br i1 %i.ba, label %.epil.preheader25, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter29 = and i64 %i.s, 2147483640
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.c ] ; 9 uses
  %niter30 = phi i64 [ 0, %.lr.ph.new ], [ %niter30.next.7, %bb.c ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3240
  store i32 %i.e, ptr %i.bd, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3240
  store i32 %i.e, ptr %i.bh, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3240
  store i32 %i.e, ptr %i.bl, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3240
  store i32 %i.e, ptr %i.bp, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3240
  store i32 %i.e, ptr %i.bt, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3240
  store i32 %i.e, ptr %i.bx, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 3240
  store i32 %i.e, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 3240
  store i32 %i.e, ptr %i.cf, align 8, !tbaa !7
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter30.next.7 = add i64 %niter30, 8           ; 2 uses
  %niter30.ncmp.7 = icmp eq i64 %niter30.next.7, %unroll_iter29
  br i1 %niter30.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !30

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %._crit_edge, label %.epil.preheader25

.epil.preheader25:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter26, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader25
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader25 ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader25 ], [ %epil.iter.next, %bb.d ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %indvars.iv.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3240
  store i32 %i.e, ptr %i.ci, align 8, !tbaa !7
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter26
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !31

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @VP8LRefsCursorInit(ptr dead_on_unwind writable sret(%struct.VP8LRefsCursor) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @HistogramAddSinglePixOrCopy(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %.val = load i8, ptr %1, align 4, !tbaa !33
  switch i8 %.val, label %bb.d [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.b = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val24.shift = getelementptr i8, ptr %1, i64 7
  %.val2439 = load i8, ptr %.val24.shift, align 1, !tbaa !35
  %i.c = zext i8 %.val2439 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val23 = load i32, ptr %i.b, align 4, !tbaa !35
  %i.h = lshr i32 %.val23, 16
  %i.i = and i32 %i.h, 255
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !3
  %i.n = load ptr, ptr %0, align 8, !tbaa !13
  %.val22 = load i32, ptr %i.b, align 4, !tbaa !35
  %i.o = lshr i32 %.val22, 8
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %.val21 = load i32, ptr %i.b, align 4, !tbaa !35
  %i.v = and i32 %.val21, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !3
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %1, i64 4
  %.val26 = load i32, ptr %i.aa, align 4, !tbaa !35
  %i.ab = add i32 %.val26, 280
  %i.ac = load ptr, ptr %0, align 8, !tbaa !13
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !3
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %1, i64 2
  %.val27 = load i16, ptr %i.ah, align 2, !tbaa !36 ; 3 uses
  %i.ai = icmp ult i16 %.val27, 512
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = zext nneg i16 %.val27 to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @kPrefixEncodeCode, i64 %i.aj
  %.sroa.0.0.copyload.i = load i8, ptr %i.ak, align 2, !tbaa !15
  %i.al = sext i8 %.sroa.0.0.copyload.i to i32
  br label %VP8LPrefixEncodeBits.exit

bb.f:                                             ; preds = %bb.d
  %i.am = zext i16 %.val27 to i32
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  %i.ao = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 511, 2147483647) %i.an, i1 true) ; 2 uses
  %i.ap = sub nuw nsw i32 30, %i.ao
  %i.aq = lshr i32 %i.an, %i.ap
  %i.ar = and i32 %i.aq, 1
  %i.as = shl nuw nsw i32 %i.ao, 1
  %i.at = or disjoint i32 %i.ar, %i.as
  %i.au = xor i32 %i.at, 62
  br label %VP8LPrefixEncodeBits.exit

VP8LPrefixEncodeBits.exit:                        ; preds = %bb.e, %bb.f
  %.1 = phi i32 [ %i.al, %bb.e ], [ %i.au, %bb.f ]
  %i.av = load ptr, ptr %0, align 8, !tbaa !13
  %i.aw = sext i32 %.1 to i64
  %i.ax = getelementptr [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 1024   ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !3
  %i.bb = icmp eq ptr %2, null
  %i.bc = getelementptr i8, ptr %1, i64 4
  %.val29 = load i32, ptr %i.bc, align 4, !tbaa !35 ; 4 uses
  br i1 %i.bb, label %bb.g, label %bb.j

bb.g:                                             ; preds = %VP8LPrefixEncodeBits.exit
  %i.bd = icmp slt i32 %.val29, 512
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = sext i32 %.val29 to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr @kPrefixEncodeCode, i64 %i.be
  %.sroa.0.0.copyload.i30 = load i8, ptr %i.bf, align 2, !tbaa !15
  %i.bg = sext i8 %.sroa.0.0.copyload.i30 to i32
  br label %VP8LPrefixEncodeBits.exit33

bb.i:                                             ; preds = %bb.g
  %i.bh = add nsw i32 %.val29, -1                 ; 2 uses
  %i.bi = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 511, 2147483647) %i.bh, i1 true) ; 2 uses
  %i.bj = sub nuw nsw i32 30, %i.bi
  %i.bk = lshr i32 %i.bh, %i.bj
  %i.bl = and i32 %i.bk, 1
  %i.bm = shl nuw nsw i32 %i.bi, 1
  %i.bn = or disjoint i32 %i.bl, %i.bm
  %i.bo = xor i32 %i.bn, 62
  br label %VP8LPrefixEncodeBits.exit33

bb.j:                                             ; preds = %VP8LPrefixEncodeBits.exit
  %i.bp = tail call i32 %2(i32 noundef %3, i32 noundef %.val29) #10 ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 512
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr @kPrefixEncodeCode, i64 %i.br
  %.sroa.0.0.copyload.i34 = load i8, ptr %i.bs, align 2, !tbaa !15
  %i.bt = sext i8 %.sroa.0.0.copyload.i34 to i32
  br label %VP8LPrefixEncodeBits.exit33

bb.l:                                             ; preds = %bb.j
  %i.bu = add nsw i32 %i.bp, -1                   ; 2 uses
  %i.bv = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 511, 2147483647) %i.bu, i1 true) ; 2 uses
  %i.bw = sub nuw nsw i32 30, %i.bv
  %i.bx = lshr i32 %i.bu, %i.bw
  %i.by = and i32 %i.bx, 1
  %i.bz = shl nuw nsw i32 %i.bv, 1
  %i.ca = or disjoint i32 %i.by, %i.bz
  %i.cb = xor i32 %i.ca, 62
  br label %VP8LPrefixEncodeBits.exit33

VP8LPrefixEncodeBits.exit33:                      ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %.0 = phi i32 [ %i.bo, %bb.i ], [ %i.bg, %bb.h ], [ %i.bt, %bb.k ], [ %i.cb, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.cd = sext i32 %.0 to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %VP8LPrefixEncodeBits.exit33, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @VP8LBitsEntropy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.VP8LBitEntropy, align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @VP8LBitsEntropyUnrefined(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %i.c = icmp slt i32 %i.b, 5
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 2
  br i1 %i.d, label %BitsEntropyRefine.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.b, label %bb.g [
    i32 2, label %bb.d
    i32 3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39
  %i.g = zext i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 830472192
  %i.i = load i64, ptr %2, align 8, !tbaa !40
  %i.j = add i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i64 %i.j, 50
  %i.m = udiv i64 %i.l, 100
  br label %BitsEntropyRefine.exit

bb.f:                                             ; preds = %bb.d
  %.neg8.i.i = sub i64 50, %i.j
  %i.n = udiv i64 %.neg8.i.i, 100
  %.neg.i.i = sub nsw i64 0, %i.n
  br label %BitsEntropyRefine.exit

bb.g:                                             ; preds = %bb.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.a
  %.0.i = phi i64 [ 950, %bb.c ], [ 700, %bb.g ], [ 627, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  %i.q = shl i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !41
  %i.t = sub i32 %i.q, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %.0.i, 23
  %i.w = mul i64 %i.v, %i.u
  %i.x = sub nuw nsw i64 1000, %.0.i
  %i.y = load i64, ptr %2, align 8, !tbaa !40     ; 2 uses
end_hunk_0
