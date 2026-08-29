Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unarj?download=true
inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@fill_buf:bb.a
  store i32 26, ptr %i.a, align 8, !tbaa !74
  br label %bb.l

bb.i:                                             ; preds = %.thread, %bb.g
  %i.bw = phi i64 [ %.pre, %.thread ], [ %.pre73, %bb.g ]
  %i.bx = phi ptr [ %i.bu, %.thread ], [ %i.bl, %bb.g ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %i.v, align 8, !tbaa !93
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !35  ; 2 uses
  store i8 %i.bz, ptr %i.t, align 1, !tbaa !73
  %i.ca = add i64 %i.bw, 1
  store i64 %i.ca, ptr %i.y, align 8, !tbaa !71
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  store i8 0, ptr %i.t, align 1, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cb = phi i8 [ 0, %bb.j ], [ %i.bz, %bb.i ]   ; 2 uses
  store i32 8, ptr %i.q, align 4, !tbaa !87
  %i.cc = icmp samesign ugt i32 %.03559, 16
  br i1 %i.cc, label %.lr.ph.split, label %._crit_edge.loopexit, !llvm.loop !97

._crit_edge.loopexit:                             ; preds = %bb.k, %bb.f
  %i.cd = phi i8 [ %i.av, %bb.f ], [ %i.cb, %bb.k ]
  %.lcssa70 = phi i32 [ %i.ac, %bb.f ], [ %i.be, %bb.k ]
  %.pre75 = load i16, ptr %i.d, align 2, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit, %._crit_edge.split.us
  %i.ce = phi i16 [ %i.p, %.._crit_edge_crit_edge ], [ %i.af, %._crit_edge.split.us ], [ %.pre75, %._crit_edge.loopexit ]
  %i.cf = phi i8 [ %.pre74, %.._crit_edge_crit_edge ], [ 0, %._crit_edge.split.us ], [ %i.cd, %._crit_edge.loopexit ]
  %.035.lcssa = phi i32 [ %1, %.._crit_edge_crit_edge ], [ %.lcssa67, %._crit_edge.split.us ], [ %.lcssa70, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.r, %.._crit_edge_crit_edge ], [ 8, %._crit_edge.split.us ], [ 8, %._crit_edge.loopexit ]
  %i.cg = zext i8 %i.cf to i32
  %i.ch = sub nsw i32 %.lcssa, %.035.lcssa        ; 2 uses
  store i32 %i.ch, ptr %i.q, align 4, !tbaa !87
  %i.ci = lshr i32 %i.cg, %i.ch
  %i.cj = trunc nuw nsw i32 %i.ci to i16
  %i.ck = or i16 %i.ce, %i.cj
  store i16 %i.ck, ptr %i.d, align 2, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.b, %bb.a, %._crit_edge
  %.4 = phi i32 [ 0, %._crit_edge ], [ 26, %bb.a ], [ 26, %.loopexit ], [ 26, %bb.b ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_pt_len(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -1, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 4 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !76
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(19) %i.l, i8 0, i64 19, i1 false), !tbaa !35
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
  %.25580 = phi i32 [ 0, %.preheader71 ], [ %.4, %.loopexit68 ] ; 9 uses
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
  %i.bl = add nsw i32 %.25580, 1                  ; 2 uses
  %i.bm = sext i32 %.25580 to i64                 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.i, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !35
  %i.bo = icmp eq i32 %i.bl, %1
  br i1 %i.bo, label %bb.d, label %.loopexit68

bb.d:                                             ; preds = %bb.c
  %i.bp = load i16, ptr %i.a, align 2, !tbaa !76  ; 2 uses
  %i.bq = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 2) ; 0 uses
  %i.br = load i32, ptr %i.h, align 8, !tbaa !74
  %.not65 = icmp eq i32 %i.br, 0
  br i1 %.not65, label %.preheader67, label %.loopexit72

.preheader67:                                     ; preds = %bb.d
  %i.bs = lshr i16 %i.bp, 14                      ; 3 uses
  %i.bt = icmp ne i16 %i.bs, 0
  %i.bu = icmp slt i32 %.25580, 18
  %i.bv = and i1 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph78.preheader, label %.loopexit68

.lr.ph78.preheader:                               ; preds = %.preheader67
  %scevgep86 = getelementptr i8, ptr %scevgep, i64 %i.bm
  %i.bw = add nsw i16 %i.bs, -1
  %2 = zext nneg i16 %i.bw to i64
  %i.bx = sub i32 17, %.25580
  %i.by = zext i32 %i.bx to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.by)
  %i.bz = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep86, i8 0, i64 %i.bz, i1 false), !tbaa !35
  %indvars.iv.next = add i32 %.25580, 2
  %3 = icmp slt i16 %i.bp, 0
  %i.ca = icmp slt i32 %.25580, 17
  %i.cb = and i1 %3, %i.ca
  br i1 %i.cb, label %.lr.ph78.1, label %.loopexit68

.lr.ph78.1:                                       ; preds = %.lr.ph78.preheader
  %indvars.iv.next.1 = add i32 %.25580, 3
  %4 = icmp eq i16 %i.bs, 3
  %i.cc = icmp slt i32 %.25580, 16
  %i.cd = and i1 %4, %i.cc
  %indvars.iv.next.2 = add i32 %.25580, 4
  %spec.select2 = select i1 %i.cd, i32 %indvars.iv.next.2, i32 %indvars.iv.next.1
  br label %.loopexit68

.loopexit68:                                      ; preds = %.lr.ph78.1, %.lr.ph78.preheader, %.preheader67, %bb.c
  %.4 = phi i32 [ %i.bl, %bb.c ], [ %1, %.preheader67 ], [ %indvars.iv.next, %.lr.ph78.preheader ], [ %spec.select2, %.lr.ph78.1 ] ; 5 uses
  %i.ce = icmp slt i32 %.4, %i.g
  br i1 %i.ce, label %bb.b, label %.preheader66

._crit_edge:                                      ; preds = %.lr.ph82, %.preheader66
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12854
  %i.cg = tail call fastcc i32 @make_table(ptr noundef %0, i32 noundef 19, ptr noundef %i.i, i32 noundef 8, ptr noundef %i.cf, i32 noundef 256) ; 0 uses
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
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.w = load <8 x i16>, ptr %i.o, align 4, !tbaa !22
  %i.x = shl <8 x i16> %i.w, <i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8, i16 7> ; 8 uses
  %i.y = extractelement <8 x i16> %i.x, i64 0
  %i.z = add i16 %i.m, %i.y                       ; 2 uses
  store i16 %i.z, ptr %i.p, align 2, !tbaa !22
  %i.aa = extractelement <8 x i16> %i.x, i64 1
  %i.ab = add i16 %i.z, %i.aa                     ; 2 uses
  store i16 %i.ab, ptr %i.q, align 8, !tbaa !22
  %i.ac = extractelement <8 x i16> %i.x, i64 2
  %i.ad = add i16 %i.ab, %i.ac                    ; 2 uses
  store i16 %i.ad, ptr %i.r, align 2, !tbaa !22
  %i.ae = extractelement <8 x i16> %i.x, i64 3
  %i.af = add i16 %i.ad, %i.ae                    ; 2 uses
  store i16 %i.af, ptr %i.s, align 4, !tbaa !22
  %i.ag = extractelement <8 x i16> %i.x, i64 4
  %i.ah = add i16 %i.af, %i.ag                    ; 2 uses
  store i16 %i.ah, ptr %i.t, align 2, !tbaa !22
  %i.ai = extractelement <8 x i16> %i.x, i64 5
  %i.aj = add i16 %i.ah, %i.ai                    ; 2 uses
  store i16 %i.aj, ptr %i.u, align 16, !tbaa !22
  %i.ak = extractelement <8 x i16> %i.x, i64 6
  %i.al = add i16 %i.aj, %i.ak                    ; 2 uses
  store i16 %i.al, ptr %i.v, align 2, !tbaa !22
  %i.am = extractelement <8 x i16> %i.x, i64 7
  %i.an = add i16 %i.al, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 %i.an, ptr %i.ao, align 4, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !22
  %i.ar = shl i16 %i.aq, 6
  %i.as = add i16 %i.an, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 %i.as, ptr %i.at, align 2, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.av = load i16, ptr %i.au, align 2, !tbaa !22
  %i.aw = shl i16 %i.av, 5
  %i.ax = add i16 %i.as, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 %i.ax, ptr %i.ay, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %i.bd = load <4 x i16>, ptr %i.az, align 8, !tbaa !22
  %i.be = shl <4 x i16> %i.bd, <i16 4, i16 3, i16 2, i16 1> ; 4 uses
  %i.bf = extractelement <4 x i16> %i.be, i64 0
  %i.bg = add i16 %i.ax, %i.bf                    ; 2 uses
  store i16 %i.bg, ptr %i.ba, align 2, !tbaa !22
  %i.bh = extractelement <4 x i16> %i.be, i64 1
  %i.bi = add i16 %i.bg, %i.bh                    ; 2 uses
  store i16 %i.bi, ptr %i.bb, align 4, !tbaa !22
  %i.bj = extractelement <4 x i16> %i.be, i64 2
  %i.bk = add i16 %i.bi, %i.bj                    ; 2 uses
  store i16 %i.bk, ptr %i.bc, align 2, !tbaa !22
  %i.bl = extractelement <4 x i16> %i.be, i64 3
  %i.bm = add i16 %i.bk, %i.bl                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i16 %i.bm, ptr %i.bn, align 16, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bp = load i16, ptr %i.bo, align 16, !tbaa !22
  %i.bq = add i16 %i.bm, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !22
  %.not = icmp eq i16 %i.bq, 0
  br i1 %.not, label %.new, label %.loopexit121.sink.split

.new:                                             ; preds = %bb.b
  %i.bs = sub nuw nsw i32 16, %3                  ; 5 uses
  %i.bt = zext nneg i32 %3 to i64
  %i.bu = zext nneg i32 %3 to i64                 ; 2 uses
  %xtraiter = and i64 %i.bu, 1
  %i.bv = sub nuw nsw i32 18, %3
  %unroll_iter = and i64 %i.bu, 14
  br label %bb.c

.preheader123.unr-lcssa:                          ; preds = %bb.c
  %indvars.iv.next164 = or disjoint i64 %indvars.iv163, 1
  %indvars.iv.next169 = add nuw nsw i32 %indvars.iv168, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader123, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader123.unr-lcssa
  %lcmp.mod222 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next159.1 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !22
  %i.by = zext i16 %i.bx to i32
  %i.bz = lshr i32 %i.by, %i.bs
  %i.ca = trunc nuw nsw i32 %i.bz to i16
  store i16 %i.ca, ptr %i.bw, align 2, !tbaa !22
  %i.cb = trunc i64 %indvars.iv.next159.1 to i32
  %i.cc = sub i32 %3, %i.cb
  %i.cd = shl nuw nsw i32 1, %i.cc
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next159.1
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !22
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.unr-lcssa, %.epil.preheader
  %indvars.iv168.lcssa = phi i32 [ %indvars.iv.next169, %.preheader123.unr-lcssa ], [ %indvars.iv.next169.1, %.epil.preheader ]
  %indvars.iv163.lcssa = phi i64 [ %indvars.iv.next164, %.preheader123.unr-lcssa ], [ %indvars.iv.next164.1, %.epil.preheader ] ; 4 uses
  %indvars.iv158.lcssa = phi i64 [ %indvars.iv.next159, %.preheader123.unr-lcssa ], [ %indvars.iv.next159.1, %.epil.preheader ]
  %i.cg = icmp samesign ult i64 %indvars.iv158.lcssa, 16
  br i1 %i.cg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader123
  %wide.trip.count170 = zext nneg i32 %indvars.iv168.lcssa to i64 ; 3 uses
  %i.ch = sub i64 %wide.trip.count170, %indvars.iv163.lcssa
  %xtraiter223 = and i64 %i.ch, 3                 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %.lr.ph.prol ], [ %indvars.iv163.lcssa, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ci = trunc nuw nsw i64 %indvars.iv165.prol to i32
  %i.cj = lshr exact i32 65536, %i.ci
  %i.ck = trunc nuw nsw i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv165.prol
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !22
  %indvars.iv.next166.prol = add nuw nsw i64 %indvars.iv165.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter223
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !99

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv165.unr = phi i64 [ %indvars.iv163.lcssa, %.lr.ph.preheader ], [ %indvars.iv.next166.prol, %.lr.ph.prol ]
  %i.cm = sub i64 %indvars.iv163.lcssa, %wide.trip.count170
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv168 = phi i32 [ %i.bv, %.new ], [ %indvars.iv.next169.1, %bb.c ] ; 2 uses
  %indvars.iv163 = phi i64 [ 2, %.new ], [ %indvars.iv.next164.1, %bb.c ] ; 2 uses
end_hunk_0
