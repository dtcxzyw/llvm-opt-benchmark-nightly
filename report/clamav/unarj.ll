inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@read_pt_len:bb.a
  %i.c = lshr i16 %i.b, 11                        ; 2 uses
  %i.d = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 5) ; 0 uses
  %i.e = icmp eq i16 %i.c, 0
  br i1 %i.e, label %.preheader, label %.preheader71

.preheader71:                                     ; preds = %bb.a
  %i.f = tail call i16 @llvm.umin.i16(i16 %i.c, i16 19)
  %i.g = zext nneg i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13368 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 12834      ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 12835
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.j = load i16, ptr %i.a, align 2, !tbaa !76
  %i.k = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 5) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12834
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.l, i8 0, i64 19, i1 false), !tbaa !35
  %i.m = lshr i16 %i.j, 11
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.m, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12854
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12870
  store <8 x i16> %broadcast.splat, ptr %i.n, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.o, align 2, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12886
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12902
  store <8 x i16> %broadcast.splat, ptr %i.p, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.q, align 2, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12918
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12934
  store <8 x i16> %broadcast.splat, ptr %i.r, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.s, align 2, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12950
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12966
  store <8 x i16> %broadcast.splat, ptr %i.t, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.u, align 2, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12982
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12998
  store <8 x i16> %broadcast.splat, ptr %i.v, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.w, align 2, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13014
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 13030
  store <8 x i16> %broadcast.splat, ptr %i.x, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 13046
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 13062
  store <8 x i16> %broadcast.splat, ptr %i.z, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.aa, align 2, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 13078
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 13094
  store <8 x i16> %broadcast.splat, ptr %i.ab, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.ac, align 2, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 13110
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 13126
  store <8 x i16> %broadcast.splat, ptr %i.ad, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.ae, align 2, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 13142
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 13158
  store <8 x i16> %broadcast.splat, ptr %i.af, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.ag, align 2, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13174
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 13190
  store <8 x i16> %broadcast.splat, ptr %i.ah, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.ai, align 2, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 13206
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 13222
  store <8 x i16> %broadcast.splat, ptr %i.aj, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.ak, align 2, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 13238
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 13254
  store <8 x i16> %broadcast.splat, ptr %i.al, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.am, align 2, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13270
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 13286
  store <8 x i16> %broadcast.splat, ptr %i.an, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.ao, align 2, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 13302
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 13318
  store <8 x i16> %broadcast.splat, ptr %i.ap, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.aq, align 2, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13334
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 13350
  store <8 x i16> %broadcast.splat, ptr %i.ar, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.as, align 2, !tbaa !22
  br label %.loopexit72

.preheader66:                                     ; preds = %.loopexit68
  %i.at = icmp slt i32 %.4, 19
  br i1 %i.at, label %.lr.ph82, label %._crit_edge

.lr.ph82:                                         ; preds = %.preheader66
  %i.au = zext nneg i32 %.4 to i64
  %scevgep88 = getelementptr i8, ptr %i.i, i64 %i.au
  %narrow = sub i32 19, %.4
  %i.av = zext i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep88, i8 0, i64 %i.av, i1 false), !tbaa !35
  br label %._crit_edge

bb.b:                                             ; preds = %.preheader71, %.loopexit68
  %.25680 = phi i32 [ 0, %.preheader71 ], [ %.4, %.loopexit68 ] ; 9 uses
  %i.aw = load i16, ptr %i.a, align 2, !tbaa !76  ; 2 uses
  %i.ax = lshr i16 %i.aw, 13                      ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 7
  br i1 %i.ay, label %.preheader69, label %.loopexit70.thread

.preheader69:                                     ; preds = %bb.b
  %i.az = zext i16 %i.aw to i32                   ; 2 uses
  %i.ba = and i32 %i.az, 4096
  %.not6374 = icmp eq i32 %i.ba, 0
  br i1 %.not6374, label %.loopexit70.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader69, %.lr.ph
  %.076 = phi i32 [ %i.bb, %.lr.ph ], [ 4096, %.preheader69 ]
  %.05275 = phi i16 [ %i.bc, %.lr.ph ], [ 7, %.preheader69 ]
  %i.bb = lshr i32 %.076, 1                       ; 2 uses
  %i.bc = add i16 %.05275, 1                      ; 4 uses
  %i.bd = and i32 %i.bb, %i.az
  %.not63 = icmp eq i32 %i.bd, 0
  br i1 %.not63, label %.loopexit70, label %.lr.ph

.loopexit70:                                      ; preds = %.lr.ph
  %i.be = sext i16 %i.bc to i32
  %i.bf = icmp slt i16 %i.bc, 7
  %i.bg = add nsw i32 %i.be, -3
  %spec.select = select i1 %i.bf, i32 3, i32 %i.bg
  br label %.loopexit70.thread

.loopexit70.thread:                               ; preds = %.loopexit70, %.preheader69, %bb.b
  %.1106 = phi i16 [ %i.ax, %bb.b ], [ %i.bc, %.loopexit70 ], [ 7, %.preheader69 ]
  %i.bh = phi i32 [ 3, %bb.b ], [ %spec.select, %.loopexit70 ], [ 4, %.preheader69 ]
  %i.bi = tail call fastcc i32 @fill_buf(ptr noundef %0, i32 noundef %i.bh) ; 0 uses
  %i.bj = load i32, ptr %i.h, align 8, !tbaa !74
  %.not64 = icmp eq i32 %i.bj, 0
  br i1 %.not64, label %bb.c, label %.loopexit72

bb.c:                                             ; preds = %.loopexit70.thread
  %i.bk = trunc i16 %.1106 to i8
  %i.bl = add nsw i32 %.25680, 1                  ; 2 uses
  %i.bm = sext i32 %.25680 to i64                 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.i, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !35
  %i.bo = icmp eq i32 %i.bl, %1
  br i1 %i.bo, label %bb.d, label %.loopexit68

bb.d:                                             ; preds = %bb.c
  %i.bp = load i16, ptr %i.a, align 2, !tbaa !76
  %i.bq = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 2) ; 0 uses
  %i.br = load i32, ptr %i.h, align 8, !tbaa !74
  %.not65 = icmp eq i32 %i.br, 0
  br i1 %.not65, label %.preheader67, label %.loopexit72

.preheader67:                                     ; preds = %bb.d
  %i.bs = lshr i16 %i.bp, 14                      ; 3 uses
  %i.bt = icmp ne i16 %i.bs, 0
  %i.bu = icmp slt i32 %.25680, 18
  %i.bv = and i1 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph78.preheader, label %.loopexit68

.lr.ph78.preheader:                               ; preds = %.preheader67
  %i.bw = add nsw i16 %i.bs, -1                   ; 2 uses
  %scevgep86 = getelementptr i8, ptr %scevgep, i64 %i.bm
  %i.bx = sub i32 17, %.25680
  %i.by = zext i32 %i.bx to i64
  %i.bz = zext nneg i16 %i.bw to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.by, i64 %i.bz)
  %i.ca = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep86, i8 0, i64 %i.ca, i1 false), !tbaa !35
  %indvars.iv.next = add i32 %.25680, 2
  %i.cb = icmp ne i16 %i.bw, 0
  %i.cc = icmp slt i32 %.25680, 17
  %i.cd = and i1 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph78.1, label %.loopexit68

.lr.ph78.1:                                       ; preds = %.lr.ph78.preheader
  %indvars.iv.next.1 = add i32 %.25680, 3
  %i.ce = icmp ne i16 %i.bs, 2
  %i.cf = icmp slt i32 %.25680, 16
  %i.cg = and i1 %i.ce, %i.cf
  %indvars.iv.next.2 = add i32 %.25680, 4
  %spec.select2 = select i1 %i.cg, i32 %indvars.iv.next.2, i32 %indvars.iv.next.1
  br label %.loopexit68

.loopexit68:                                      ; preds = %.lr.ph78.1, %.lr.ph78.preheader, %.preheader67, %bb.c
  %.4 = phi i32 [ %i.bl, %bb.c ], [ %1, %.preheader67 ], [ %indvars.iv.next, %.lr.ph78.preheader ], [ %spec.select2, %.lr.ph78.1 ] ; 5 uses
  %i.ch = icmp slt i32 %.4, %i.g
  br i1 %i.ch, label %bb.b, label %.preheader66

._crit_edge:                                      ; preds = %.lr.ph82, %.preheader66
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12854
  %i.cj = tail call fastcc i32 @make_table(ptr noundef %0, i32 noundef 19, ptr noundef %i.i, i32 noundef 8, ptr noundef %i.ci, i32 noundef 256) ; 0 uses
  br label %.loopexit72

.loopexit72:                                      ; preds = %bb.d, %.loopexit70.thread, %.preheader, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @make_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 19, 511) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 8, 13) %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 256, 4097) %5) unnamed_addr #0 {
.preheader124.preheader:
  %i.a = alloca [17 x i16], align 16              ; 9 uses
  %i.b = alloca [17 x i16], align 16              ; 11 uses
  %i.c = alloca [18 x i16], align 16              ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %scevgep, i8 0, i64 32, i1 false), !tbaa !22
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124.preheader, %bb.a
  %indvars.iv = phi i64 [ 0, %.preheader124.preheader ], [ %indvars.iv.next, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35    ; 2 uses
  %i.f = icmp ugt i8 %i.e, 16
  br i1 %i.f, label %.loopexit121.sink.split.sink.split, label %bb.a

bb.a:                                             ; preds = %.preheader124
  %i.g = zext nneg i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !22
  %i.j = add i16 %i.i, 1
  store i16 %i.j, ptr %i.h, align 2, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %.preheader124

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.k, align 2, !tbaa !22
  %i.l = load i16, ptr %scevgep, align 2, !tbaa !22
  %i.m = shl i16 %i.l, 15                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.m, ptr %i.n, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %9 = load <8 x i16>, ptr %i.o, align 4, !tbaa !22
  %10 = shl <8 x i16> %9, <i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8, i16 7> ; 8 uses
  %11 = extractelement <8 x i16> %10, i64 0
  %12 = add i16 %i.m, %11                         ; 2 uses
  store i16 %12, ptr %i.p, align 2, !tbaa !22
  %13 = extractelement <8 x i16> %10, i64 1
  %i.t = add i16 %12, %13                         ; 2 uses
  store i16 %i.t, ptr %i.q, align 8, !tbaa !22
  %14 = extractelement <8 x i16> %10, i64 2
  %i.u = add i16 %i.t, %14                        ; 2 uses
  store i16 %i.u, ptr %6, align 2, !tbaa !22
  %15 = extractelement <8 x i16> %10, i64 3
  %i.v = add i16 %i.u, %15                        ; 2 uses
  store i16 %i.v, ptr %7, align 4, !tbaa !22
  %16 = extractelement <8 x i16> %10, i64 4
  %17 = add i16 %i.v, %16                         ; 2 uses
  store i16 %17, ptr %i.r, align 2, !tbaa !22
  %18 = extractelement <8 x i16> %10, i64 5
  %i.w = add i16 %17, %18                         ; 2 uses
  store i16 %i.w, ptr %8, align 16, !tbaa !22
  %19 = extractelement <8 x i16> %10, i64 6
  %20 = add i16 %i.w, %19                         ; 2 uses
  store i16 %20, ptr %i.s, align 2, !tbaa !22
  %21 = extractelement <8 x i16> %10, i64 7
  %i.x = add i16 %20, %21                         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 %i.x, ptr %i.y, align 4, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !22
  %i.ab = shl i16 %i.aa, 6
  %i.ac = add i16 %i.x, %i.ab                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !22
  %i.ag = shl i16 %i.af, 5
  %i.ah = add i16 %i.ac, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 %i.ah, ptr %i.ai, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %22 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %23 = load <4 x i16>, ptr %i.aj, align 8, !tbaa !22
  %24 = shl <4 x i16> %23, <i16 4, i16 3, i16 2, i16 1> ; 4 uses
  %25 = extractelement <4 x i16> %24, i64 0
  %26 = add i16 %i.ah, %25                        ; 2 uses
  store i16 %26, ptr %i.ak, align 2, !tbaa !22
  %27 = extractelement <4 x i16> %24, i64 1
  %i.am = add i16 %26, %27                        ; 2 uses
  store i16 %i.am, ptr %22, align 4, !tbaa !22
  %28 = extractelement <4 x i16> %24, i64 2
  %29 = add i16 %i.am, %28                        ; 2 uses
  store i16 %29, ptr %i.al, align 2, !tbaa !22
  %30 = extractelement <4 x i16> %24, i64 3
  %i.an = add i16 %29, %30                        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i16 %i.an, ptr %i.ao, align 16, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aq = load i16, ptr %i.ap, align 16, !tbaa !22
  %i.ar = add i16 %i.an, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !22
  %.not = icmp eq i16 %i.ar, 0
  br i1 %.not, label %.new, label %.loopexit121.sink.split

.new:                                             ; preds = %bb.b
  %i.at = sub nuw nsw i32 16, %3                  ; 5 uses
  %i.au = zext nneg i32 %3 to i64
  %i.av = zext nneg i32 %3 to i64                 ; 2 uses
  %xtraiter = and i64 %i.av, 1
  %i.aw = sub nuw nsw i32 18, %3
  %unroll_iter = and i64 %i.av, 14
  br label %bb.c

.preheader123.unr-lcssa:                          ; preds = %bb.c
  %indvars.iv.next164 = or disjoint i64 %indvars.iv163, 1
  %indvars.iv.next169 = add nuw nsw i32 %indvars.iv168, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader123, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader123.unr-lcssa
  %lcmp.mod225 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next159.1 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !22
  %i.az = zext i16 %i.ay to i32
  %i.ba = lshr i32 %i.az, %i.at
  %i.bb = trunc nuw nsw i32 %i.ba to i16
  store i16 %i.bb, ptr %i.ax, align 2, !tbaa !22
  %i.bc = trunc i64 %indvars.iv.next159.1 to i32
  %i.bd = sub i32 %3, %i.bc
  %i.be = shl nuw nsw i32 1, %i.bd
  %i.bf = trunc nuw nsw i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next159.1
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !22
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.unr-lcssa, %.epil.preheader
  %indvars.iv168.lcssa = phi i32 [ %indvars.iv.next169, %.preheader123.unr-lcssa ], [ %indvars.iv.next169.1, %.epil.preheader ]
  %indvars.iv163.lcssa = phi i64 [ %indvars.iv.next164, %.preheader123.unr-lcssa ], [ %indvars.iv.next164.1, %.epil.preheader ] ; 4 uses
  %indvars.iv158.lcssa = phi i64 [ %indvars.iv.next159, %.preheader123.unr-lcssa ], [ %indvars.iv.next159.1, %.epil.preheader ]
  %i.bh = icmp samesign ult i64 %indvars.iv158.lcssa, 16
  br i1 %i.bh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader123
  %wide.trip.count170 = zext nneg i32 %indvars.iv168.lcssa to i64 ; 3 uses
  %i.bi = sub i64 %wide.trip.count170, %indvars.iv163.lcssa
  %xtraiter226 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %.lr.ph.prol ], [ %indvars.iv163.lcssa, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bj = trunc nuw nsw i64 %indvars.iv165.prol to i32
  %i.bk = lshr exact i32 65536, %i.bj
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv165.prol
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !22
  %indvars.iv.next166.prol = add nuw nsw i64 %indvars.iv165.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter226
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !99

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv165.unr = phi i64 [ %indvars.iv163.lcssa, %.lr.ph.preheader ], [ %indvars.iv.next166.prol, %.lr.ph.prol ]
  %i.bn = sub i64 %indvars.iv163.lcssa, %wide.trip.count170
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv168 = phi i32 [ %i.aw, %.new ], [ %indvars.iv.next169.1, %bb.c ] ; 2 uses
  %indvars.iv163 = phi i64 [ 2, %.new ], [ %indvars.iv.next164.1, %bb.c ] ; 2 uses
  %indvars.iv158 = phi i64 [ 1, %.new ], [ %indvars.iv.next159.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv158 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !22
  %i.br = zext i16 %i.bq to i32
  %i.bs = lshr i32 %i.br, %i.at
  %i.bt = trunc nuw nsw i32 %i.bs to i16
  store i16 %i.bt, ptr %i.bp, align 2, !tbaa !22
  %i.bu = trunc i64 %indvars.iv158 to i32
  %i.bv = sub nsw i32 %3, %i.bu
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = trunc nuw nsw i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv158
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !22
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 4 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next159 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !22
  %i.cb = zext i16 %i.ca to i32
  %i.cc = lshr i32 %i.cb, %i.at
  %i.cd = trunc nuw nsw i32 %i.cc to i16
  store i16 %i.cd, ptr %i.bz, align 2, !tbaa !22
  %i.ce = trunc i64 %indvars.iv.next159 to i32
  %i.cf = sub nsw i32 %3, %i.ce
  %i.cg = shl nuw nsw i32 1, %i.cf
  %i.ch = trunc nuw nsw i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next159
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !22
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 5 uses
  %indvars.iv.next164.1 = add nuw nsw i64 %indvars.iv163, 2 ; 2 uses
  %indvars.iv.next169.1 = add nuw nsw i32 %indvars.iv168, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader123.unr-lcssa, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.3, %.lr.ph ], [ %indvars.iv165.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.ck = lshr exact i32 65536, %i.cj
  %i.cl = trunc nuw nsw i32 %i.ck to i16
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv165
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !22
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv.next166 to i32
  %i.co = lshr exact i32 65536, %i.cn
  %i.cp = trunc nuw nsw i32 %i.co to i16
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next166
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !22
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next166.1 to i32
  %i.cs = lshr exact i32 65536, %i.cr
  %i.ct = trunc nuw nsw i32 %i.cs to i16
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next166.1
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !22
  %indvars.iv.next166.2 = add nuw nsw i64 %indvars.iv165, 3 ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv.next166.2 to i32
  %i.cw = lshr exact i32 65536, %i.cv
  %i.cx = trunc nuw nsw i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next166.2
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !22
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv165, 4 ; 2 uses
  %exitcond171.not.3 = icmp eq i64 %indvars.iv.next166.3, %wide.trip.count170
  br i1 %exitcond171.not.3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader123
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.au
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !22
  %i.dc = zext i16 %i.db to i32
  %i.dd = lshr i32 %i.dc, %i.at                   ; 4 uses
  %.not113 = icmp eq i32 %i.dd, 0
  br i1 %.not113, label %.loopexit122, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.de = shl nuw nsw i32 1, %3                   ; 2 uses
  %.not114134 = icmp eq i32 %i.dd, %i.de
  br i1 %.not114134, label %.loopexit122, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %bb.d
  %i.df = zext nneg i32 %i.dd to i64              ; 5 uses
  %i.dg = zext nneg i32 %i.de to i64              ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.dd, i32 %5)
  %wide.trip.count175 = zext nneg i32 %umax to i64 ; 2 uses
  %i.dh = xor i64 %i.df, -1
  %i.di = add nsw i64 %i.dh, %i.dg
  %i.dj = sub nsw i64 %wide.trip.count175, %i.df
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dj)
  %i.dl = add nsw i64 %i.dk, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.dl, 17
  br i1 %min.iters.check, label %.lr.ph137.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %n.mod.vf = and i64 %i.dl, 15                   ; 2 uses
  %i.dm = icmp eq i64 %n.mod.vf, 0
  %i.dn = select i1 %i.dm, i64 16, i64 %n.mod.vf
  %n.vec = sub i64 %i.dl, %i.dn                   ; 2 uses
  %i.do = add i64 %n.vec, %i.df
  %invariant.gep = getelementptr [2 x i8], ptr %4, i64 %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> zeroinitializer, ptr %gep, align 2, !tbaa !22
  store <8 x i16> zeroinitializer, ptr %i.dp, align 2, !tbaa !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %.lr.ph137.preheader219, label %vector.body, !llvm.loop !100

.lr.ph137.preheader219:                           ; preds = %vector.body, %.lr.ph137.preheader
  %indvars.iv172.ph = phi i64 [ %i.df, %.lr.ph137.preheader ], [ %i.do, %vector.body ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader219, %bb.e
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %bb.e ], [ %indvars.iv172.ph, %.lr.ph137.preheader219 ] ; 3 uses
  %exitcond176.not = icmp eq i64 %indvars.iv172, %wide.trip.count175
  br i1 %exitcond176.not, label %.loopexit121.sink.split.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph137
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv172
  store i16 0, ptr %i.dr, align 2, !tbaa !22
end_hunk_0
