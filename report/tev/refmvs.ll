Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/refmvs?download=true
inline.NumInlined: 71
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@scan_col:bb.a
  %.not47 = icmp slt i32 %i.al, %6
  br i1 %.not47, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.d
  %.044 = phi i32 [ %i.v, %bb.d ], [ 1, %.preheader ], [ 1, %.lr.ph ]
  ret i32 %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @add_spatial_candidate(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i16 %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #4 {
bb.a:
  %.sroa.076.0.extract.trunc = zext i16 %4 to i32
  %i.a = load i32, ptr %3, align 4, !tbaa !16     ; 3 uses
  %i.b = icmp eq i32 %i.a, -2147450880
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i16 %4, -257
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.c, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.b
  %sext = shl i32 %.sroa.076.0.extract.trunc, 24
  %i.e = ashr exact i32 %sext, 24                 ; 2 uses
  %i.f = load i8, ptr %i.d, align 4, !tbaa !16
  %i.g = sext i8 %i.f to i32
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = sext i8 %i.j to i32
  %i.l = icmp eq i32 %i.e, %i.k
  br i1 %i.l, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.preheader
  %.lcssa113 = phi i64 [ 0, %.preheader ], [ 1, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !72    ; 2 uses
  %i.o = and i8 %i.n, 1
  %.not90 = icmp eq i8 %i.o, 0
  br i1 %.not90, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %5, align 4, !tbaa !16     ; 2 uses
  %.not91 = icmp eq i32 %i.p, -2147450880
  br i1 %.not91, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.lcssa113
  %.sroa.031.0.copyload32 = load i32, ptr %i.q, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.031.0 = phi i32 [ %.sroa.031.0.copyload32, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  store i32 1, ptr %7, align 4, !tbaa !18
  %i.r = lshr i8 %i.n, 1
  %i.s = zext nneg i8 %i.r to i32
  %i.t = load i32, ptr %6, align 4, !tbaa !18
  %i.u = or i32 %i.t, %i.s
  store i32 %i.u, ptr %6, align 4, !tbaa !18
  %i.v = load i32, ptr %1, align 4, !tbaa !18     ; 5 uses
  %.not92109 = icmp sgt i32 %i.v, 0
  br i1 %.not92109, label %.lr.ph111.preheader, label %.critedge.thread

.lr.ph111.preheader:                              ; preds = %bb.g
  %wide.trip.count124 = zext nneg i32 %i.v to i64
  br label %.lr.ph111

bb.h:                                             ; preds = %.lr.ph111
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %bb.h
  %indvars.iv121 = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvars.iv.next122, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv121 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !16
  %i.y = icmp eq i32 %i.x, %.sroa.031.0
  br i1 %i.y, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph111
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32
  %i.ab = add nsw i32 %i.aa, %2
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !32
  br label %.loopexit

.critedge:                                        ; preds = %bb.h
  %.old = icmp slt i32 %i.v, 8
  br i1 %.old, label %.critedge.thread, label %.loopexit

.critedge.thread:                                 ; preds = %bb.g, %.critedge
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ac ; 2 uses
  store i32 %.sroa.031.0, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %2, ptr %i.ae, align 8, !tbaa !32
  %i.af = add nsw i32 %i.v, 1
  store i32 %i.af, ptr %1, align 4, !tbaa !18
  br label %.loopexit

bb.j:                                             ; preds = %bb.b
  %i.ag = load i16, ptr %i.d, align 4, !tbaa !16
  %i.ah = icmp eq i16 %i.ag, %4
  br i1 %i.ah, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !72  ; 2 uses
  %i.ak = and i8 %i.aj, 1
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %.thread102, label %bb.l

.thread102:                                       ; preds = %bb.k
  %.sroa.0.0103 = zext i32 %i.a to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %5, align 4, !tbaa !16    ; 2 uses
  %.not86 = icmp eq i32 %i.al, -2147450880
  %.sroa.0.0101.v = select i1 %.not86, i32 %i.a, i32 %i.al
  %.sroa.0.0101 = zext i32 %.sroa.0.0101.v to i64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16 ; 2 uses
  %.not88 = icmp eq i32 %i.an, -2147450880
  br i1 %.not88, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread102, %bb.l
  %.sroa.0.0100 = phi i64 [ %.sroa.0.0101, %bb.l ], [ %.sroa.0.0103, %.thread102 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.0.4.copyload16 = load i32, ptr %i.ao, align 4, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.0.099 = phi i64 [ %.sroa.0.0100, %bb.m ], [ %.sroa.0.0101, %bb.l ]
  %.sroa.0.4.insert.shift.pn.in.in = phi i32 [ %.sroa.0.4.copyload16, %bb.m ], [ %i.an, %bb.l ]
  %.sroa.0.4.insert.shift.pn.in = zext i32 %.sroa.0.4.insert.shift.pn.in.in to i64
  %.sroa.0.4.insert.shift.pn = shl nuw i64 %.sroa.0.4.insert.shift.pn.in, 32
  %.sroa.0.1 = add nuw nsw i64 %.sroa.0.4.insert.shift.pn, %.sroa.0.099 ; 2 uses
  store i32 1, ptr %7, align 4, !tbaa !18
  %i.ap = lshr i8 %i.aj, 1
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = load i32, ptr %6, align 4, !tbaa !18
  %i.as = or i32 %i.ar, %i.aq
  store i32 %i.as, ptr %6, align 4, !tbaa !18
  %i.at = load i32, ptr %1, align 4, !tbaa !18    ; 5 uses
  %.not89106 = icmp sgt i32 %i.at, 0
  br i1 %.not89106, label %.lr.ph.preheader, label %.critedge94.thread

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge94, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = icmp eq i64 %i.av, %.sroa.0.1
  br i1 %i.aw, label %bb.p, label %bb.o

bb.p:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !32
  %i.az = add nsw i32 %i.ay, %2
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !32
  br label %.loopexit

.critedge94:                                      ; preds = %bb.o
  %.old95 = icmp slt i32 %i.at, 8
  br i1 %.old95, label %.critedge94.thread, label %.loopexit

.critedge94.thread:                               ; preds = %bb.n, %.critedge94
  %i.ba = sext i32 %i.at to i64
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ba ; 2 uses
  store i64 %.sroa.0.1, ptr %i.bb, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %2, ptr %i.bc, align 8, !tbaa !32
  %i.bd = add nsw i32 %i.at, 1
  store i32 %i.bd, ptr %1, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.p, %bb.i, %.critedge94.thread, %.critedge94, %.critedge, %.critedge.thread, %bb.j, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @add_temporal_candidate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i16 %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %3, align 1, !tbaa !16     ; 3 uses
  %i.b = icmp eq i32 %i.a, -2147450880
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %4, 8       ; 2 uses
  %.sroa.0.0.extract.trunc = zext i16 %4 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.d = ashr exact i32 %sext, 24
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = sext i8 %i.h to i32                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !58    ; 2 uses
  %i.l = add nsw i8 %i.k, -1
  %or.cond.i = icmp ult i8 %i.l, 31
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.m = add nsw i32 %i.i, 31
  %or.cond3.i = icmp ult i32 %i.m, 63
  tail call void @llvm.assume(i1 %or.cond3.i)
  %i.n = zext nneg i8 %i.k to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @mv_projection.div_mult, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !59
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = mul nsw i32 %i.q, %i.i                   ; 2 uses
  %sext.i = shl i32 %i.a, 16
  %i.s = ashr exact i32 %sext.i, 16               ; 2 uses
  %i.t = mul nsw i32 %i.r, %i.s
  %i.u = ashr i32 %i.a, 16                        ; 2 uses
  %i.v = mul nsw i32 %i.r, %i.u
  %i.w = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.t, i64 1 ; 2 uses
  %i.y = add nsw <2 x i32> %i.x, splat (i32 8192)
  %i.z = ashr <2 x i32> %i.x, splat (i32 31)
  %i.aa = add nsw <2 x i32> %i.y, %i.z
  %i.ab = ashr <2 x i32> %i.aa, splat (i32 14)
  %i.ac = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ab, <2 x i32> splat (i32 -16383))
  %i.ad = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ac, <2 x i32> splat (i32 16383))
  %i.ae = trunc nsw <2 x i32> %i.ad to <2 x i16>  ; 5 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 269
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !56
  %.not.i = icmp eq i8 %i.ah, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = lshr <2 x i16> %i.ae, splat (i16 15)
  %i.aj = add nsw <2 x i16> %i.ae, splat (i16 3)
  %i.ak = add nsw <2 x i16> %i.aj, %i.ai
  %i.al = and <2 x i16> %i.ak, splat (i16 -8)
  br label %fix_mv_precision.exit

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 428
  %i.an = load i8, ptr %i.am, align 4, !tbaa !55
  %.not9.i = icmp eq i8 %i.an, 0
  br i1 %.not9.i, label %bb.e, label %fix_mv_precision.exit

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr <2 x i16> %i.ae, splat (i16 15)
  %i.ap = add nsw <2 x i16> %i.ao, %i.ae
  %i.aq = and <2 x i16> %i.ap, splat (i16 -2)
  br label %fix_mv_precision.exit

fix_mv_precision.exit:                            ; preds = %bb.c, %bb.e, %bb.d
  %i.ar = phi <2 x i16> [ %i.ae, %bb.d ], [ %i.aq, %bb.e ], [ %i.al, %bb.c ] ; 8 uses
  %i.as = load i32, ptr %2, align 4, !tbaa !18    ; 10 uses
  %i.at = icmp eq i16 %.sroa.2.0.extract.shift, 255
  br i1 %i.at, label %bb.f, label %bb.l

bb.f:                                             ; preds = %fix_mv_precision.exit
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = extractelement <2 x i16> %i.ar, i64 0
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !16
  %i.ay = sext i16 %i.ax to i32
  %i.az = sub nsw i32 %i.av, %i.ay
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bb = extractelement <2 x i16> %i.ar, i64 1
  %i.bc = sext i16 %i.bb to i32
  %i.bd = load i16, ptr %6, align 4, !tbaa !16
  %i.be = sext i16 %i.bd to i32
  %i.bf = sub nsw i32 %i.bc, %i.be
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.bf, i1 true)
  %i.bh = or i32 %i.bg, %i.ba
  %i.bi = icmp samesign ugt i32 %i.bh, 15
  %i.bj = zext i1 %i.bi to i32
  store i32 %i.bj, ptr %5, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not54122 = icmp sgt i32 %i.as, 0
  br i1 %.not54122, label %.lr.ph124, label %.critedge.thread

.lr.ph124:                                        ; preds = %bb.h
  %i.bk = extractelement <2 x i16> %i.ar, i64 0
  %.sroa.10.0.insert.ext = zext i16 %i.bk to i32
  %.sroa.10.0.insert.shift = shl nuw i32 %.sroa.10.0.insert.ext, 16
  %i.bl = extractelement <2 x i16> %i.ar, i64 1
  %.sroa.095.0.insert.ext = zext i16 %i.bl to i32
  %.sroa.095.0.insert.insert = or disjoint i32 %.sroa.10.0.insert.shift, %.sroa.095.0.insert.ext
  %wide.trip.count132 = zext nneg i32 %i.as to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph124, %bb.i
  %indvars.iv129 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next130, %bb.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv129 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !16
  %i.bo = icmp eq i32 %i.bn, %.sroa.095.0.insert.insert
  br i1 %i.bo, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !32
  %i.br = add nsw i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !32
  br label %bb.r

.critedge:                                        ; preds = %bb.i
  %.old = icmp slt i32 %i.as, 8
  br i1 %.old, label %.critedge.thread, label %bb.r

.critedge.thread:                                 ; preds = %bb.h, %.critedge
  %i.bs = sext i32 %i.as to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bs ; 2 uses
  %i.bu = extractelement <2 x i16> %i.ar, i64 0
  %.sroa.10.0.insert.ext113 = zext i16 %i.bu to i32
  %.sroa.10.0.insert.shift114 = shl nuw i32 %.sroa.10.0.insert.ext113, 16
  %i.bv = extractelement <2 x i16> %i.ar, i64 1
  %.sroa.095.0.insert.ext104 = zext i16 %i.bv to i32
  %.sroa.095.0.insert.insert106 = or disjoint i32 %.sroa.10.0.insert.shift114, %.sroa.095.0.insert.ext104
  store i32 %.sroa.095.0.insert.insert106, ptr %i.bt, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 2, ptr %i.bw, align 8, !tbaa !32
  %i.bx = add nsw i32 %i.as, 1
  store i32 %i.bx, ptr %2, align 4, !tbaa !18
  br label %bb.r

bb.l:                                             ; preds = %fix_mv_precision.exit
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %sext53 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %7 = ashr exact i32 %sext53, 24
  %i.by = extractelement <2 x i16> %i.ar, i64 0
  %.sroa.10.0.insert.ext108 = zext i16 %i.by to i32
  %.sroa.10.0.insert.shift109 = shl nuw i32 %.sroa.10.0.insert.ext108, 16
  %i.bz = extractelement <2 x i16> %i.ar, i64 1
  %.sroa.095.0.insert.ext100 = zext i16 %i.bz to i32
  %.sroa.095.0.insert.insert102 = or disjoint i32 %.sroa.10.0.insert.shift109, %.sroa.095.0.insert.ext100 ; 2 uses
  %i.ca = sext i32 %7 to i64
  %i.cb = getelementptr i8, ptr %i.c, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = sext i8 %i.cd to i32                    ; 2 uses
  %i.cf = add nsw i32 %i.ce, 31
  %or.cond3.i60 = icmp ult i32 %i.cf, 63
  tail call void @llvm.assume(i1 %or.cond3.i60)
  %i.cg = mul nsw i32 %i.ce, %i.q                 ; 2 uses
  %i.ch = mul nsw i32 %i.cg, %i.s
  %i.ci = mul nsw i32 %i.cg, %i.u
  %i.cj = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.ck = insertelement <2 x i32> %i.cj, i32 %i.ch, i64 1 ; 2 uses
  %i.cl = add nsw <2 x i32> %i.ck, splat (i32 8192)
  %i.cm = ashr <2 x i32> %i.ck, splat (i32 31)
  %i.cn = add nsw <2 x i32> %i.cl, %i.cm
  %i.co = ashr <2 x i32> %i.cn, splat (i32 14)
  %i.cp = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.co, <2 x i32> splat (i32 -16383))
  %i.cq = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cp, <2 x i32> splat (i32 16383))
  %i.cr = trunc nsw <2 x i32> %i.cq to <2 x i16>  ; 5 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = lshr <2 x i16> %i.cr, splat (i16 15)
  %i.ct = add nsw <2 x i16> %i.cr, splat (i16 3)
  %i.cu = add nsw <2 x i16> %i.ct, %i.cs
  %i.cv = and <2 x i16> %i.cu, splat (i16 -8)
  br label %fix_mv_precision.exit73

bb.n:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.af, i64 428
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !55
  %.not9.i70 = icmp eq i8 %i.cx, 0
  br i1 %.not9.i70, label %bb.o, label %fix_mv_precision.exit73

bb.o:                                             ; preds = %bb.n
  %i.cy = lshr <2 x i16> %i.cr, splat (i16 15)
  %i.cz = add nsw <2 x i16> %i.cy, %i.cr
  %i.da = and <2 x i16> %i.cz, splat (i16 -2)
  br label %fix_mv_precision.exit73

fix_mv_precision.exit73:                          ; preds = %bb.m, %bb.o, %bb.n
  %i.db = phi <2 x i16> [ %i.cr, %bb.n ], [ %i.da, %bb.o ], [ %i.cv, %bb.m ] ; 4 uses
  %.not.not120 = icmp sgt i32 %i.as, 0
  br i1 %.not.not120, label %.lr.ph, label %.critedge56.thread

.lr.ph:                                           ; preds = %fix_mv_precision.exit73
  %i.dc = extractelement <2 x i16> %i.db, i64 0
  %.sroa.6.sroa.9.0.insert.ext = zext i16 %i.dc to i64
  %i.dd = extractelement <2 x i16> %i.db, i64 1
  %.sroa.6.sroa.0.0.insert.ext = zext i16 %i.dd to i64
  %i.de = shl nuw i64 %.sroa.6.sroa.9.0.insert.ext, 48
  %i.df = shl nuw nsw i64 %.sroa.6.sroa.0.0.insert.ext, 32
  %.sroa.6.0.insert.shift = or disjoint i64 %i.df, %i.de
  %.sroa.0.0.insert.ext = zext i32 %.sroa.095.0.insert.insert102 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge56, label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.di = icmp eq i64 %i.dh, %.sroa.0.0.insert.insert
  br i1 %i.di, label %.critedge58, label %bb.p

.critedge56:                                      ; preds = %bb.p
  %i.dj = icmp slt i32 %i.as, 8
  br i1 %i.dj, label %.critedge56.thread, label %bb.r

.critedge56.thread:                               ; preds = %fix_mv_precision.exit73, %.critedge56
  %i.dk = sext i32 %i.as to i64
  %i.dl = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dk ; 2 uses
  %i.dm = extractelement <2 x i16> %i.db, i64 0
  %.sroa.6.sroa.9.0.insert.ext91 = zext i16 %i.dm to i64
  %i.dn = extractelement <2 x i16> %i.db, i64 1
  %.sroa.6.sroa.0.0.insert.ext88 = zext i16 %i.dn to i64
  %i.do = shl nuw i64 %.sroa.6.sroa.9.0.insert.ext91, 48
  %i.dp = shl nuw nsw i64 %.sroa.6.sroa.0.0.insert.ext88, 32
  %.sroa.6.0.insert.shift80 = or disjoint i64 %i.dp, %i.do
  %.sroa.0.0.insert.ext75 = zext i32 %.sroa.095.0.insert.insert102 to i64
  %.sroa.0.0.insert.insert77 = or disjoint i64 %.sroa.6.0.insert.shift80, %.sroa.0.0.insert.ext75
  store i64 %.sroa.0.0.insert.insert77, ptr %i.dl, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 2, ptr %i.dq, align 8, !tbaa !32
  %i.dr = add nsw i32 %i.as, 1
  store i32 %i.dr, ptr %2, align 4, !tbaa !18
  br label %bb.r

.critedge58:                                      ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !32
  %i.du = add nsw i32 %i.dt, 2
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %.critedge58, %.critedge, %.critedge.thread, %bb.k, %.critedge56, %.critedge56.thread, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_compound_extended_candidate(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 256) %4, i16 %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #7 {
bb.a:
  %.sroa.067.0.extract.trunc = zext i16 %5 to i32
  %.sroa.2.0.extract.shift = lshr i16 %5, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %sext = shl i32 %.sroa.067.0.extract.trunc, 24
  %i.d = ashr exact i32 %sext, 24                 ; 2 uses
  %sext74 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %7 = ashr exact i32 %sext74, 24                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i8, ptr %i.c, align 1, !tbaa !16    ; 6 uses
  %8 = sext i8 %i.g to i32                        ; 2 uses
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0.copyload = load i16, ptr %2, align 4 ; 9 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.sroa.14.0.copyload = load i16, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !16 ; 9 uses
  %i.i = icmp eq i32 %i.d, %8
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.k = icmp slt i32 %i.j, 2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.j, 1
  store i32 %i.l, ptr %1, align 4, !tbaa !18
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %0, i64 %i.m ; 2 uses
  store i16 %.sroa.04.0.copyload, ptr %i.n, align 8
  %.sroa.14.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i16 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx13, align 2, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load i32, ptr %i.e, align 4, !tbaa !18   ; 3 uses
  %i.p = icmp slt i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.q = zext nneg i8 %i.g to i64
  %i.r = getelementptr i8, ptr %6, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i32
  %.not77 = icmp eq i32 %4, %i.u                  ; 2 uses
  %i.v = sub i16 0, %.sroa.04.0.copyload
  %i.w = sub i16 0, %.sroa.14.0.copyload
  %.sroa.14.0 = select i1 %.not77, i16 %.sroa.14.0.copyload, i16 %i.w
  %.sroa.04.0 = select i1 %.not77, i16 %.sroa.04.0.copyload, i16 %i.v
  %i.x = add nsw i32 %i.o, 1
  store i32 %i.x, ptr %i.e, align 4, !tbaa !18
  %i.y = sext i32 %i.o to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i16 %.sroa.04.0, ptr %i.aa, align 4
  %.sroa.14.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  store i16 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx15, align 2, !tbaa !16
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.ab = icmp eq i32 %7, %8
  br i1 %i.ab, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !18  ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 2
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.f, align 4, !tbaa !18
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i16 %.sroa.04.0.copyload, ptr %i.ah, align 4
  %.sroa.14.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store i16 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx17, align 2, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 2
  br i1 %i.aj, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ak = zext nneg i8 %i.g to i64
  %i.al = getelementptr i8, ptr %6, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = zext i8 %i.an to i32
  %.not76 = icmp eq i32 %3, %i.ao                 ; 2 uses
  %i.ap = sub i16 0, %.sroa.04.0.copyload
  %i.aq = sub i16 0, %.sroa.14.0.copyload
  %.sroa.14.1 = select i1 %.not76, i16 %.sroa.14.0.copyload, i16 %i.aq
  %.sroa.04.1 = select i1 %.not76, i16 %.sroa.04.0.copyload, i16 %i.ap
  %i.ar = add nsw i32 %i.ai, 1
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !18
  %i.as = sext i32 %i.ai to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.as ; 2 uses
  store i16 %.sroa.04.1, ptr %i.at, align 8
  %.sroa.14.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 %.sroa.14.1, ptr %.sroa.14.0..sroa_idx19, align 2, !tbaa !16
  br label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.au = sub i16 0, %.sroa.04.0.copyload         ; 2 uses
  %i.av = sub i16 0, %.sroa.14.0.copyload         ; 2 uses
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 2
  br i1 %i.ax, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.l
  %i.ay = add nsw i32 %i.aw, 1
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !18
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = zext nneg i8 %i.g to i64
  %i.bc = getelementptr i8, ptr %6, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = zext i8 %i.be to i32
  %.not = icmp eq i32 %3, %i.bf                   ; 2 uses
  %.sroa.14.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %.sroa.04.0.copyload. = select i1 %.not, i16 %.sroa.04.0.copyload, i16 %i.au
  %.sroa.14.0.copyload. = select i1 %.not, i16 %.sroa.14.0.copyload, i16 %i.av
  store i16 %.sroa.04.0.copyload., ptr %i.ba, align 8
  store i16 %.sroa.14.0.copyload., ptr %.sroa.14.0..sroa_idx21, align 2, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !18  ; 3 uses
  %i.bh = icmp slt i32 %i.bg, 2
  br i1 %i.bh, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bi = add nsw i32 %i.bg, 1
  store i32 %i.bi, ptr %i.e, align 4, !tbaa !18
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bm = zext nneg i8 %i.g to i64
  %i.bn = getelementptr i8, ptr %6, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %.not75 = icmp eq i32 %4, %i.bq
  %.sroa.14.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.bk, i64 6 ; 2 uses
  br i1 %.not75, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i16 %i.au, ptr %i.bl, align 4
  store i16 %i.av, ptr %.sroa.14.0..sroa_idx23, align 2, !tbaa !16
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i16 %.sroa.04.0.copyload, ptr %i.bl, align 4
  store i16 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx23, align 2, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.k, %bb.j, %bb.e, %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16  ; 6 uses
  %9 = sext i8 %i.bs to i32                       ; 2 uses
  %i.bt = icmp sgt i8 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.04.0.copyload.1 = load i16, ptr %i.bu, align 4 ; 9 uses
  %.sroa.14.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.14.0.copyload.1 = load i16, ptr %.sroa.14.0..sroa_idx.1, align 2, !tbaa !16 ; 9 uses
  %i.bv = icmp eq i32 %i.d, %9
  br i1 %i.bv, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp eq i32 %7, %9
  br i1 %i.bw, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = sub i16 0, %.sroa.04.0.copyload.1       ; 2 uses
  %i.by = sub i16 0, %.sroa.14.0.copyload.1       ; 2 uses
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 2
  br i1 %i.ca, label %.sink.split96, label %bb.u

.sink.split96:                                    ; preds = %bb.t
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !18
  %i.cc = sext i32 %i.bz to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = zext nneg i8 %i.bs to i64
  %i.cf = getelementptr i8, ptr %6, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = zext i8 %i.ch to i32
  %.not.1 = icmp eq i32 %3, %i.ci                 ; 2 uses
  %.sroa.14.0..sroa_idx21.1 = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %.sroa.04.0.copyload.1. = select i1 %.not.1, i16 %.sroa.04.0.copyload.1, i16 %i.bx
  %.sroa.14.0.copyload.1. = select i1 %.not.1, i16 %.sroa.14.0.copyload.1, i16 %i.by
  store i16 %.sroa.04.0.copyload.1., ptr %i.cd, align 8
  store i16 %.sroa.14.0.copyload.1., ptr %.sroa.14.0..sroa_idx21.1, align 2, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %.sink.split96, %bb.t
  %i.cj = load i32, ptr %i.e, align 4, !tbaa !18  ; 3 uses
  %i.ck = icmp slt i32 %i.cj, 2
  br i1 %i.ck, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cl = add nsw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.e, align 4, !tbaa !18
  %i.cm = sext i32 %i.cj to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = zext nneg i8 %i.bs to i64
  %i.cq = getelementptr i8, ptr %6, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = zext i8 %i.cs to i32
  %.not75.1.a = icmp eq i32 %4, %i.ct
  %.sroa.14.0..sroa_idx23.1 = getelementptr inbounds nuw i8, ptr %i.cn, i64 6 ; 2 uses
  br i1 %.not75.1.a, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i16 %i.bx, ptr %i.co, align 4
  store i16 %i.by, ptr %.sroa.14.0..sroa_idx23.1, align 2, !tbaa !16
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  store i16 %.sroa.04.0.copyload.1, ptr %i.co, align 4
  store i16 %.sroa.14.0.copyload.1, ptr %.sroa.14.0..sroa_idx23.1, align 2, !tbaa !16
  br label %.critedge

bb.y:                                             ; preds = %bb.s
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !18  ; 3 uses
  %i.cv = icmp slt i32 %i.cu, 2
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = add nsw i32 %i.cu, 1
  store i32 %i.cw, ptr %i.f, align 4, !tbaa !18
  %i.cx = sext i32 %i.cu to i64
  %i.cy = getelementptr inbounds [16 x i8], ptr %0, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i16 %.sroa.04.0.copyload.1, ptr %i.cz, align 4
  %.sroa.14.0..sroa_idx17.1 = getelementptr inbounds nuw i8, ptr %i.cy, i64 6
  store i16 %.sroa.14.0.copyload.1, ptr %.sroa.14.0..sroa_idx17.1, align 2, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.da = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %i.db = icmp slt i32 %i.da, 2
  br i1 %i.db, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.dc = zext nneg i8 %i.bs to i64
  %i.dd = getelementptr i8, ptr %6, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = zext i8 %i.df to i32
  %.not76.1.a = icmp eq i32 %3, %i.dg             ; 2 uses
  %i.dh = sub i16 0, %.sroa.04.0.copyload.1
  %i.di = sub i16 0, %.sroa.14.0.copyload.1
  %.sroa.14.1.1 = select i1 %.not76.1.a, i16 %.sroa.14.0.copyload.1, i16 %i.di
  %.sroa.04.1.1 = select i1 %.not76.1.a, i16 %.sroa.04.0.copyload.1, i16 %i.dh
  %i.dj = add nsw i32 %i.da, 1
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !18
  %i.dk = sext i32 %i.da to i64
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.dk ; 2 uses
  store i16 %.sroa.04.1.1, ptr %i.dl, align 8
  %.sroa.14.0..sroa_idx19.1 = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i16 %.sroa.14.1.1, ptr %.sroa.14.0..sroa_idx19.1, align 2, !tbaa !16
  br label %.critedge

bb.ac:                                            ; preds = %bb.r
  %i.dm = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 2
  br i1 %i.dn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.do = add nsw i32 %i.dm, 1
  store i32 %i.do, ptr %1, align 4, !tbaa !18
  %i.dp = sext i32 %i.dm to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %0, i64 %i.dp ; 2 uses
  store i16 %.sroa.04.0.copyload.1, ptr %i.dq, align 8
  %.sroa.14.0..sroa_idx13.1 = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store i16 %.sroa.14.0.copyload.1, ptr %.sroa.14.0..sroa_idx13.1, align 2, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dr = load i32, ptr %i.e, align 4, !tbaa !18  ; 3 uses
  %i.ds = icmp slt i32 %i.dr, 2
  br i1 %i.ds, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.dt = zext nneg i8 %i.bs to i64
  %i.du = getelementptr i8, ptr %6, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16
  %i.dx = zext i8 %i.dw to i32
  %.not77.1 = icmp eq i32 %4, %i.dx               ; 2 uses
  %i.dy = sub i16 0, %.sroa.04.0.copyload.1
  %i.dz = sub i16 0, %.sroa.14.0.copyload.1
  %.sroa.14.0.1 = select i1 %.not77.1, i16 %.sroa.14.0.copyload.1, i16 %i.dz
  %.sroa.04.0.1 = select i1 %.not77.1, i16 %.sroa.04.0.copyload.1, i16 %i.dy
  %i.ea = add nsw i32 %i.dr, 1
  store i32 %i.ea, ptr %i.e, align 4, !tbaa !18
  %i.eb = sext i32 %i.dr to i64
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i16 %.sroa.04.0.1, ptr %i.ed, align 4
  %.sroa.14.0..sroa_idx15.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 6
  store i16 %.sroa.14.0.1, ptr %.sroa.14.0..sroa_idx15.1, align 2, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.w, %bb.x, %bb.aa, %bb.ab, %bb.ae, %bb.af, %bb.q, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @add_single_extended_candidate(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 256) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16    ; 2 uses
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64
  %.sroa.0.0.copyload = load i16, ptr %2, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !16 ; 2 uses
  %i.e = getelementptr i8, ptr %4, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  %.not = icmp eq i32 %3, %i.h                    ; 2 uses
  %i.i = sub i16 0, %.sroa.0.0.copyload
  %i.j = sub i16 0, %.sroa.7.0.copyload
  %.sroa.7.0 = select i1 %.not, i16 %.sroa.7.0.copyload, i16 %i.j ; 2 uses
  %.sroa.0.0 = select i1 %.not, i16 %.sroa.0.0.copyload, i16 %i.i ; 2 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !18     ; 6 uses
  %.sroa.7.0.insert.ext = zext i16 %.sroa.7.0 to i32
  %.sroa.7.0.insert.shift = shl nuw i32 %.sroa.7.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16
  %i.o = icmp eq i32 %.sroa.0.0.insert.insert, %i.n
  br i1 %i.o, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.p, %._crit_edge.loopexit ]
  %i.q = icmp eq i32 %.0.lcssa, %i.k
  br i1 %i.q, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.r = zext nneg i32 %i.k to i64
end_hunk_0
