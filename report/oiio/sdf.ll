inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@edt8:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %second_pass.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !103  ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.preheader.lr.ph.i, label %second_pass.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.g = icmp sgt i32 %i.c, 2
  %i.h = sub nsw i32 0, %i.c
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.k = add nsw i32 %i.c, -2                     ; 2 uses
  br i1 %i.g, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.l = add nsw i32 %i.c, -1
  %i.m = zext nneg i32 %i.k to i64
  %i.n = zext nneg i32 %i.c to i64
  %wide.trip.count59.i = zext nneg i32 %i.e to i64
  %wide.trip.count51.i = zext nneg i32 %i.l to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge40.us.i.loopexit, %.preheader.us.preheader.i
  %indvars.iv56.i = phi i64 [ 1, %.preheader.us.preheader.i ], [ %indvars.iv.next57.i, %._crit_edge40.us.i.loopexit ] ; 2 uses
  %i.o = mul nuw nsw i64 %indvars.iv56.i, %i.n    ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %invariant.gep75.i = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %compare_neighbor.exit34.us.i, %.preheader.us.i
  %indvars.iv48.i = phi i64 [ 1, %.preheader.us.i ], [ %indvars.iv.next49.i, %compare_neighbor.exit34.us.i ] ; 2 uses
  %gep76.i = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep75.i, i64 %indvars.iv48.i ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.q = getelementptr inbounds [32 x i8], ptr %gep76.i, i64 %i.i ; 6 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !115
  %i.t = add nsw i32 %i.s, -65536
  %i.u = load i32, ptr %gep76.i, align 8, !tbaa !115 ; 2 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %compare_neighbor.exit.us.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !121
  %i.x = load <2 x i64>, ptr %10, align 16, !tbaa !88
  %i.y = add nsw <2 x i64> %i.x, splat (i64 -65536)
  store <2 x i64> %i.y, ptr %10, align 16, !tbaa !88
  %i.z = call i64 @FT_Vector_Length(ptr noundef nonnull %10) #12
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = load i32, ptr %gep76.i, align 8, !tbaa !115 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.e, label %compare_neighbor.exit.us.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.aa, ptr %gep76.i, align 8, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %gep76.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit.us.i

compare_neighbor.exit.us.i:                       ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = phi i32 [ %i.aa, %bb.e ], [ %i.ab, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.af = load i32, ptr %i.q, align 8, !tbaa !115
  %i.ag = add nsw i32 %i.af, -65536
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %bb.f, label %compare_neighbor.exit32.us.i

bb.f:                                             ; preds = %compare_neighbor.exit.us.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !121
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !53
  %i.ak = add nsw i64 %i.aj, -65536
  store i64 %i.ak, ptr %i.j, align 8, !tbaa !53
  %i.al = call i64 @FT_Vector_Length(ptr noundef nonnull %9) #12
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  %i.an = load i32, ptr %gep76.i, align 8, !tbaa !115 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, %i.am
  br i1 %i.ao, label %bb.g, label %compare_neighbor.exit32.us.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.am, ptr %gep76.i, align 8, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %gep76.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit32.us.i

compare_neighbor.exit32.us.i:                     ; preds = %bb.g, %bb.f, %compare_neighbor.exit.us.i
  %i.aq = phi i32 [ %i.am, %bb.g ], [ %i.an, %bb.f ], [ %i.ae, %compare_neighbor.exit.us.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !115
  %i.at = add nsw i32 %i.as, -65536
  %i.au = icmp slt i32 %i.at, %i.aq
  br i1 %i.au, label %bb.h, label %compare_neighbor.exit33.us.i

bb.h:                                             ; preds = %compare_neighbor.exit32.us.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !121
  %i.aw = load <2 x i64>, ptr %8, align 16, !tbaa !88
  %i.ax = add nsw <2 x i64> %i.aw, <i64 65536, i64 -65536>
  store <2 x i64> %i.ax, ptr %8, align 16, !tbaa !88
  %i.ay = call i64 @FT_Vector_Length(ptr noundef nonnull %8) #12
  %i.az = trunc i64 %i.ay to i32                  ; 3 uses
  %i.ba = load i32, ptr %gep76.i, align 8, !tbaa !115 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, %i.az
  br i1 %i.bb, label %bb.i, label %compare_neighbor.exit33.us.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.az, ptr %gep76.i, align 8, !tbaa !115
  %i.bc = getelementptr inbounds nuw i8, ptr %gep76.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit33.us.i

compare_neighbor.exit33.us.i:                     ; preds = %bb.i, %bb.h, %compare_neighbor.exit32.us.i
  %i.bd = phi i32 [ %i.az, %bb.i ], [ %i.ba, %bb.h ], [ %i.aq, %compare_neighbor.exit32.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.be = getelementptr inbounds i8, ptr %gep76.i, i64 -32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !115
  %i.bg = add nsw i32 %i.bf, -65536
  %i.bh = icmp slt i32 %i.bg, %i.bd
  br i1 %i.bh, label %bb.j, label %compare_neighbor.exit34.us.i

bb.j:                                             ; preds = %compare_neighbor.exit33.us.i
  %i.bi = getelementptr inbounds i8, ptr %gep76.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !121
  %i.bj = load i64, ptr %7, align 8, !tbaa !52
  %i.bk = add nsw i64 %i.bj, -65536
  store i64 %i.bk, ptr %7, align 8, !tbaa !52
  %i.bl = call i64 @FT_Vector_Length(ptr noundef nonnull %7) #12
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = load i32, ptr %gep76.i, align 8, !tbaa !115
  %i.bo = icmp sgt i32 %i.bn, %i.bm
  br i1 %i.bo, label %bb.k, label %compare_neighbor.exit34.us.i

bb.k:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %gep76.i, align 8, !tbaa !115
  %i.bp = getelementptr inbounds nuw i8, ptr %gep76.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit34.us.i

compare_neighbor.exit34.us.i:                     ; preds = %bb.k, %bb.j, %compare_neighbor.exit33.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %._crit_edge.us.i, label %bb.c, !llvm.loop !122

bb.l:                                             ; preds = %._crit_edge.us.i, %compare_neighbor.exit35.us.i
  %indvars.iv53.i = phi i64 [ %i.m, %._crit_edge.us.i ], [ %indvars.iv.next54.i, %compare_neighbor.exit35.us.i ] ; 3 uses
  %gep78.i = getelementptr [32 x i8], ptr %invariant.gep77.i, i64 %indvars.iv53.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.bq = getelementptr inbounds nuw i8, ptr %gep78.i, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !115
  %i.bs = add nsw i32 %i.br, -65536
  %i.bt = load i32, ptr %gep78.i, align 8, !tbaa !115
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.m, label %compare_neighbor.exit35.us.i

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %gep78.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !121
  %i.bw = load i64, ptr %6, align 8, !tbaa !52
  %i.bx = add nsw i64 %i.bw, 65536
  store i64 %i.bx, ptr %6, align 8, !tbaa !52
  %i.by = call i64 @FT_Vector_Length(ptr noundef nonnull %6) #12
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = load i32, ptr %gep78.i, align 8, !tbaa !115
  %i.cb = icmp sgt i32 %i.ca, %i.bz
  br i1 %i.cb, label %bb.n, label %compare_neighbor.exit35.us.i

bb.n:                                             ; preds = %bb.m
  store i32 %i.bz, ptr %gep78.i, align 8, !tbaa !115
  %i.cc = getelementptr inbounds nuw i8, ptr %gep78.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit35.us.i

compare_neighbor.exit35.us.i:                     ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1
  %i.cd = icmp sgt i64 %indvars.iv53.i, 0
  br i1 %i.cd, label %bb.l, label %._crit_edge40.us.i.loopexit, !llvm.loop !123

._crit_edge40.us.i.loopexit:                      ; preds = %compare_neighbor.exit35.us.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %first_pass.exit, label %.preheader.us.i, !llvm.loop !124

._crit_edge.us.i:                                 ; preds = %compare_neighbor.exit34.us.i
  %invariant.gep77.i = getelementptr [32 x i8], ptr %i.a, i64 %i.o
  br label %bb.l

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ce = icmp eq i32 %i.c, 2
  br i1 %i.ce, label %.preheader.i.a, label %first_pass.exit

.preheader.i.a:                                   ; preds = %.preheader.lr.ph.split.i
  %11 = zext nneg i32 %i.k to i64
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  %invariant.gep = getelementptr [32 x i8], ptr %i.a, i64 %11
  br label %bb.o

bb.o:                                             ; preds = %compare_neighbor.exit35.i, %.preheader.i.a
  %indvars.iv.i = phi i64 [ 1, %.preheader.i.a ], [ %indvars.iv.next.i, %compare_neighbor.exit35.i ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 6
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.cf = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !115
  %i.ch = add nsw i32 %i.cg, -65536
  %i.ci = load i32, ptr %gep, align 8, !tbaa !115
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %compare_neighbor.exit35.i

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %gep, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !121
  %i.cl = load i64, ptr %6, align 8, !tbaa !52
  %i.cm = add nsw i64 %i.cl, 65536
  store i64 %i.cm, ptr %6, align 8, !tbaa !52
  %i.cn = call i64 @FT_Vector_Length(ptr noundef nonnull %6) #12
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = load i32, ptr %gep, align 8, !tbaa !115
  %i.cq = icmp sgt i32 %i.cp, %i.co
  br i1 %i.cq, label %bb.q, label %compare_neighbor.exit35.i

bb.q:                                             ; preds = %bb.p
  store i32 %i.co, ptr %gep, align 8, !tbaa !115
  %i.cr = getelementptr inbounds nuw i8, ptr %gep, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit35.i

compare_neighbor.exit35.i:                        ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %first_pass.exit, label %bb.o, !llvm.loop !124

first_pass.exit:                                  ; preds = %compare_neighbor.exit35.i, %._crit_edge40.us.i.loopexit, %.preheader.lr.ph.split.i
  %.pr = load i32, ptr %i.d, align 4, !tbaa !103  ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.ct = add nsw i32 %.pr, -2                    ; 2 uses
  %i.cu = icmp sgt i32 %.pr, 1
  br i1 %i.cu, label %.preheader.lr.ph.i5, label %second_pass.exit

.preheader.lr.ph.i5:                              ; preds = %first_pass.exit
  %i.cv = load i32, ptr %i.b, align 8, !tbaa !102 ; 5 uses
  %i.cw = icmp sgt i32 %i.cv, 2
  %i.cx = sext i32 %i.cv to i64                   ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cz = add nsw i32 %i.cv, -2                   ; 2 uses
  br i1 %i.cw, label %.preheader.us.preheader.i17, label %.preheader.lr.ph.split.i6

.preheader.us.preheader.i17:                      ; preds = %.preheader.lr.ph.i5
  %i.da = add nsw i32 %i.cv, -1
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = zext nneg i32 %i.ct to i64
  %wide.trip.count.i18 = zext nneg i32 %i.da to i64
  br label %.preheader.us.i19

.preheader.us.i19:                                ; preds = %._crit_edge40.us.i28.loopexit, %.preheader.us.preheader.i17
  %indvars.iv54.i = phi i64 [ %i.dc, %.preheader.us.preheader.i17 ], [ %indvars.iv.next55.i, %._crit_edge40.us.i28.loopexit ] ; 3 uses
  %i.dd = mul nsw i64 %indvars.iv54.i, %i.cx
  %invariant.gep69.i = getelementptr [32 x i8], ptr %i.cs, i64 %i.dd ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %compare_neighbor.exit34.us.i24, %.preheader.us.i19
  %indvars.iv48.i20 = phi i64 [ 1, %.preheader.us.i19 ], [ %indvars.iv.next49.i25, %compare_neighbor.exit34.us.i24 ] ; 2 uses
  %gep70.i = getelementptr [32 x i8], ptr %invariant.gep69.i, i64 %indvars.iv48.i20 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %gep70.i, i64 %i.cx ; 6 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !115
  %i.dh = add nsw i32 %i.dg, -65536
  %i.di = load i32, ptr %gep70.i, align 8, !tbaa !115 ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.s, label %compare_neighbor.exit.us.i21

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds i8, ptr %i.de, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false), !tbaa.struct !121
  %i.dl = load <2 x i64>, ptr %5, align 16, !tbaa !88
  %i.dm = add nsw <2 x i64> %i.dl, <i64 -65536, i64 65536>
  store <2 x i64> %i.dm, ptr %5, align 16, !tbaa !88
  %i.dn = call i64 @FT_Vector_Length(ptr noundef nonnull %5) #12
  %i.do = trunc i64 %i.dn to i32                  ; 3 uses
  %i.dp = load i32, ptr %gep70.i, align 8, !tbaa !115 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, %i.do
  br i1 %i.dq, label %bb.t, label %compare_neighbor.exit.us.i21

bb.t:                                             ; preds = %bb.s
  store i32 %i.do, ptr %gep70.i, align 8, !tbaa !115
  %i.dr = getelementptr inbounds nuw i8, ptr %gep70.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit.us.i21

compare_neighbor.exit.us.i21:                     ; preds = %bb.t, %bb.s, %bb.r
  %i.ds = phi i32 [ %i.do, %bb.t ], [ %i.dp, %bb.s ], [ %i.di, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.dt = load i32, ptr %i.de, align 8, !tbaa !115
  %i.du = add nsw i32 %i.dt, -65536
  %i.dv = icmp slt i32 %i.du, %i.ds
  br i1 %i.dv, label %bb.u, label %compare_neighbor.exit32.us.i22

bb.u:                                             ; preds = %compare_neighbor.exit.us.i21
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !121
  %i.dx = load i64, ptr %i.cy, align 8, !tbaa !53
  %i.dy = add nsw i64 %i.dx, 65536
  store i64 %i.dy, ptr %i.cy, align 8, !tbaa !53
  %i.dz = call i64 @FT_Vector_Length(ptr noundef nonnull %4) #12
  %i.ea = trunc i64 %i.dz to i32                  ; 3 uses
  %i.eb = load i32, ptr %gep70.i, align 8, !tbaa !115 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, %i.ea
  br i1 %i.ec, label %bb.v, label %compare_neighbor.exit32.us.i22

bb.v:                                             ; preds = %bb.u
  store i32 %i.ea, ptr %gep70.i, align 8, !tbaa !115
  %i.ed = getelementptr inbounds nuw i8, ptr %gep70.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit32.us.i22

compare_neighbor.exit32.us.i22:                   ; preds = %bb.v, %bb.u, %compare_neighbor.exit.us.i21
  %i.ee = phi i32 [ %i.ea, %bb.v ], [ %i.eb, %bb.u ], [ %i.ds, %compare_neighbor.exit.us.i21 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !115
  %i.eh = add nsw i32 %i.eg, -65536
  %i.ei = icmp slt i32 %i.eh, %i.ee
  br i1 %i.ei, label %bb.w, label %compare_neighbor.exit33.us.i23

bb.w:                                             ; preds = %compare_neighbor.exit32.us.i22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !tbaa.struct !121
  %i.ek = load <2 x i64>, ptr %3, align 16, !tbaa !88
  %i.el = add nsw <2 x i64> %i.ek, splat (i64 65536)
  store <2 x i64> %i.el, ptr %3, align 16, !tbaa !88
  %i.em = call i64 @FT_Vector_Length(ptr noundef nonnull %3) #12
  %i.en = trunc i64 %i.em to i32                  ; 3 uses
  %i.eo = load i32, ptr %gep70.i, align 8, !tbaa !115 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, %i.en
  br i1 %i.ep, label %bb.x, label %compare_neighbor.exit33.us.i23

bb.x:                                             ; preds = %bb.w
  store i32 %i.en, ptr %gep70.i, align 8, !tbaa !115
  %i.eq = getelementptr inbounds nuw i8, ptr %gep70.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit33.us.i23

compare_neighbor.exit33.us.i23:                   ; preds = %bb.x, %bb.w, %compare_neighbor.exit32.us.i22
  %i.er = phi i32 [ %i.en, %bb.x ], [ %i.eo, %bb.w ], [ %i.ee, %compare_neighbor.exit32.us.i22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.es = getelementptr inbounds i8, ptr %gep70.i, i64 -32
  %i.et = load i32, ptr %i.es, align 8, !tbaa !115
  %i.eu = add nsw i32 %i.et, -65536
  %i.ev = icmp slt i32 %i.eu, %i.er
  br i1 %i.ev, label %bb.y, label %compare_neighbor.exit34.us.i24

bb.y:                                             ; preds = %compare_neighbor.exit33.us.i23
  %i.ew = getelementptr inbounds i8, ptr %gep70.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 16, i1 false), !tbaa.struct !121
  %i.ex = load i64, ptr %2, align 8, !tbaa !52
  %i.ey = add nsw i64 %i.ex, -65536
  store i64 %i.ey, ptr %2, align 8, !tbaa !52
  %i.ez = call i64 @FT_Vector_Length(ptr noundef nonnull %2) #12
  %i.fa = trunc i64 %i.ez to i32                  ; 2 uses
  %i.fb = load i32, ptr %gep70.i, align 8, !tbaa !115
  %i.fc = icmp sgt i32 %i.fb, %i.fa
  br i1 %i.fc, label %bb.z, label %compare_neighbor.exit34.us.i24

bb.z:                                             ; preds = %bb.y
  store i32 %i.fa, ptr %gep70.i, align 8, !tbaa !115
  %i.fd = getelementptr inbounds nuw i8, ptr %gep70.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit34.us.i24

compare_neighbor.exit34.us.i24:                   ; preds = %bb.z, %bb.y, %compare_neighbor.exit33.us.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %indvars.iv.next49.i25 = add nuw nsw i64 %indvars.iv48.i20, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next49.i25, %wide.trip.count.i18
  br i1 %exitcond.not.i26, label %.lr.ph39.us.i29, label %bb.r, !llvm.loop !125

.lr.ph39.us.i29:                                  ; preds = %compare_neighbor.exit34.us.i24, %compare_neighbor.exit35.us.i30
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %compare_neighbor.exit35.us.i30 ], [ %i.db, %compare_neighbor.exit34.us.i24 ] ; 3 uses
  %gep72.i = getelementptr [32 x i8], ptr %invariant.gep69.i, i64 %indvars.iv51.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.fe = getelementptr inbounds nuw i8, ptr %gep72.i, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !115
  %i.fg = add nsw i32 %i.ff, -65536
  %i.fh = load i32, ptr %gep72.i, align 8, !tbaa !115
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.aa, label %compare_neighbor.exit35.us.i30

bb.aa:                                            ; preds = %.lr.ph39.us.i29
  %i.fj = getelementptr inbounds nuw i8, ptr %gep72.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !121
  %i.fk = load i64, ptr %1, align 8, !tbaa !52
  %i.fl = add nsw i64 %i.fk, 65536
  store i64 %i.fl, ptr %1, align 8, !tbaa !52
  %i.fm = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  %i.fo = load i32, ptr %gep72.i, align 8, !tbaa !115
  %i.fp = icmp sgt i32 %i.fo, %i.fn
  br i1 %i.fp, label %bb.ab, label %compare_neighbor.exit35.us.i30

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.fn, ptr %gep72.i, align 8, !tbaa !115
  %i.fq = getelementptr inbounds nuw i8, ptr %gep72.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit35.us.i30

compare_neighbor.exit35.us.i30:                   ; preds = %bb.ab, %bb.aa, %.lr.ph39.us.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i, -1
  %i.fr = icmp sgt i64 %indvars.iv51.i, 0
  br i1 %i.fr, label %.lr.ph39.us.i29, label %._crit_edge40.us.i28.loopexit, !llvm.loop !126

._crit_edge40.us.i28.loopexit:                    ; preds = %compare_neighbor.exit35.us.i30
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, -1
  %i.fs = icmp sgt i64 %indvars.iv54.i, 0
  br i1 %i.fs, label %.preheader.us.i19, label %second_pass.exit, !llvm.loop !127

.preheader.lr.ph.split.i6:                        ; preds = %.preheader.lr.ph.i5
  %i.ft = icmp eq i32 %i.cv, 2
  br i1 %i.ft, label %.preheader.i8.a, label %second_pass.exit

.preheader.i8.a:                                  ; preds = %.preheader.lr.ph.split.i6
  %12 = zext nneg i32 %i.cz to i64
  %13 = zext nneg i32 %i.ct to i64
  %invariant.gep.i10 = getelementptr [32 x i8], ptr %i.cs, i64 %12
  br label %bb.ac

bb.ac:                                            ; preds = %compare_neighbor.exit35.i13, %.preheader.i8.a
  %indvars.iv.i11 = phi i64 [ %13, %.preheader.i8.a ], [ %indvars.iv.next.i14, %compare_neighbor.exit35.i13 ] ; 3 uses
  %14 = mul nsw i64 %indvars.iv.i11, %i.cx
  %gep.i12 = getelementptr [32 x i8], ptr %invariant.gep.i10, i64 %14 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.fu = getelementptr inbounds nuw i8, ptr %gep.i12, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !115
  %i.fw = add nsw i32 %i.fv, -65536
  %i.fx = load i32, ptr %gep.i12, align 8, !tbaa !115
  %i.fy = icmp slt i32 %i.fw, %i.fx
  br i1 %i.fy, label %bb.ad, label %compare_neighbor.exit35.i13

bb.ad:                                            ; preds = %bb.ac
  %i.fz = getelementptr inbounds nuw i8, ptr %gep.i12, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !tbaa.struct !121
  %i.ga = load i64, ptr %1, align 8, !tbaa !52
  %i.gb = add nsw i64 %i.ga, 65536
  store i64 %i.gb, ptr %1, align 8, !tbaa !52
  %i.gc = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.gd = trunc i64 %i.gc to i32                  ; 2 uses
  %i.ge = load i32, ptr %gep.i12, align 8, !tbaa !115
  %i.gf = icmp sgt i32 %i.ge, %i.gd
  br i1 %i.gf, label %bb.ae, label %compare_neighbor.exit35.i13

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.gd, ptr %gep.i12, align 8, !tbaa !115
  %i.gg = getelementptr inbounds nuw i8, ptr %gep.i12, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !121
  br label %compare_neighbor.exit35.i13

compare_neighbor.exit35.i13:                      ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next.i14 = add nsw i64 %indvars.iv.i11, -1
  %i.gh = icmp sgt i64 %indvars.iv.i11, 0
  br i1 %i.gh, label %bb.ac, label %second_pass.exit, !llvm.loop !127

second_pass.exit:                                 ; preds = %compare_neighbor.exit35.i13, %._crit_edge40.us.i28.loopexit, %bb.b, %.preheader.lr.ph.split.i6, %first_pass.exit, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %._crit_edge40.us.i28.loopexit ], [ 0, %first_pass.exit ], [ 0, %bb.b ], [ 0, %.preheader.lr.ph.split.i6 ], [ 0, %compare_neighbor.exit35.i13 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @finalize_sdf(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 3 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !45     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !102
  %.not = icmp eq i32 %i.b, %i.g
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !103
  %.not46 = icmp eq i32 %i.c, %i.i
  br i1 %.not46, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !128
  %i.l = shl i32 %i.k, 16                         ; 3 uses
  %i.m = icmp sgt i32 %i.c, 0
  br i1 %i.m, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.n = icmp sgt i32 %i.b, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.p = sext i32 %i.l to i64
  br i1 %i.n, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %i.b to i64                ; 2 uses
  %wide.trip.count54 = zext nneg i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next52, %._crit_edge ] ; 2 uses
  %i.r = mul nuw nsw i64 %indvars.iv51, %i.q
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv, %i.r        ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !115  ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.l)
  %.037 = select i1 %i.w, i32 %i.l, i32 %i.x      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !107
  %i.aa = icmp ult i8 %i.z, 127
  %i.ab = load i8, ptr %i.o, align 4, !tbaa !129
  %.not47 = icmp eq i8 %i.ab, 0
  %i.ac = xor i1 %i.aa, %.not47
  %i.ad = sub nsw i32 0, %.037
  %i.ae = select i1 %i.ac, i32 %.037, i32 %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call i64 @FT_DivFix(i64 noundef %i.af, i64 noundef %i.p) #12
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 2 uses
  %i.ak = lshr i32 %i.aj, 9
  %i.al = icmp sgt i32 %i.ah, 0
  %i.am = icmp samesign ugt i32 %i.aj, 65535
  %or.cond.i = select i1 %i.al, i1 %i.am, i1 false
  %spec.store.select4.i = select i1 %or.cond.i, i32 127, i32 %i.ak ; 2 uses
  %i.an = tail call i32 @llvm.umin.i32(i32 %spec.store.select4.i, i32 128)
  %i.ao = sub nsw i32 0, %i.an
  %.p.i = select i1 %i.ai, i32 %i.ao, i32 %spec.store.select4.i
  %i.ap = trunc i32 %.p.i to i8
  %i.aq = xor i8 %i.ap, -128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.loopexit, label %.preheader, !llvm.loop !131

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %.preheader.lr.ph, %bb.a, %bb.b
  %.040 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %.preheader.lr.ph ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  ret i32 %.040
}

declare i64 @FT_Vector_Length(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Vector_NormLen(ptr noundef) local_unnamed_addr #4

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 16777216) i32 @square_root(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %0 to i64
  %.not = icmp ult i32 %0, 1073741824             ; 2 uses
  %.116 = select i1 %.not, i64 0, i64 2147483648  ; 3 uses
  %.neg = select i1 %.not, i64 0, i64 -1073741824
  %.1 = add nsw i64 %.neg, %i.a
  %i.b = shl nsw i64 %.1, 1                       ; 2 uses
  %i.c = or disjoint i64 %.116, 536870912         ; 2 uses
  %.not.1 = icmp ult i64 %i.b, %i.c               ; 2 uses
  %i.d = or disjoint i64 %.116, 1073741824
  %.116.1 = select i1 %.not.1, i64 %.116, i64 %i.d ; 3 uses
  %i.e = select i1 %.not.1, i64 0, i64 %i.c
  %.1.1 = sub nuw nsw i64 %i.b, %i.e
  %i.f = shl nsw i64 %.1.1, 1                     ; 2 uses
  %i.g = or disjoint i64 %.116.1, 268435456       ; 2 uses
  %.not.2 = icmp ult i64 %i.f, %i.g               ; 2 uses
  %i.h = or disjoint i64 %.116.1, 536870912
  %.116.2 = select i1 %.not.2, i64 %.116.1, i64 %i.h ; 3 uses
  %i.i = select i1 %.not.2, i64 0, i64 %i.g
  %.1.2 = sub nuw nsw i64 %i.f, %i.i
  %i.j = shl nsw i64 %.1.2, 1                     ; 2 uses
  %i.k = or disjoint i64 %.116.2, 134217728       ; 2 uses
  %.not.3 = icmp ult i64 %i.j, %i.k               ; 2 uses
  %i.l = or disjoint i64 %.116.2, 268435456
  %.116.3 = select i1 %.not.3, i64 %.116.2, i64 %i.l ; 3 uses
  %i.m = select i1 %.not.3, i64 0, i64 %i.k
  %.1.3 = sub nuw nsw i64 %i.j, %i.m
  %i.n = shl nsw i64 %.1.3, 1                     ; 2 uses
  %i.o = add nuw nsw i64 %.116.3, 67108864        ; 2 uses
  %.not.4 = icmp ult i64 %i.n, %i.o               ; 2 uses
  %i.p = add nuw nsw i64 %.116.3, 134217728
  %.116.4 = select i1 %.not.4, i64 %.116.3, i64 %i.p ; 3 uses
  %i.q = select i1 %.not.4, i64 0, i64 %i.o
  %.1.4 = sub nuw nsw i64 %i.n, %i.q
  %i.r = shl nsw i64 %.1.4, 1                     ; 2 uses
  %i.s = add nuw nsw i64 %.116.4, 33554432        ; 2 uses
  %.not.5 = icmp ult i64 %i.r, %i.s               ; 2 uses
  %i.t = add nuw nsw i64 %.116.4, 67108864
  %.116.5 = select i1 %.not.5, i64 %.116.4, i64 %i.t ; 3 uses
  %i.u = select i1 %.not.5, i64 0, i64 %i.s
  %.1.5 = sub nuw nsw i64 %i.r, %i.u
  %i.v = shl nsw i64 %.1.5, 1                     ; 2 uses
  %i.w = add nuw nsw i64 %.116.5, 16777216        ; 2 uses
  %.not.6 = icmp ult i64 %i.v, %i.w               ; 2 uses
  %i.x = add nuw nsw i64 %.116.5, 33554432
  %.116.6 = select i1 %.not.6, i64 %.116.5, i64 %i.x ; 3 uses
  %i.y = select i1 %.not.6, i64 0, i64 %i.w
  %.1.6 = sub nuw nsw i64 %i.v, %i.y
  %i.z = shl nsw i64 %.1.6, 1                     ; 2 uses
  %i.aa = add nuw nsw i64 %.116.6, 8388608        ; 2 uses
  %.not.7 = icmp ult i64 %i.z, %i.aa              ; 2 uses
  %i.ab = add nuw nsw i64 %.116.6, 16777216
  %.116.7 = select i1 %.not.7, i64 %.116.6, i64 %i.ab ; 3 uses
  %i.ac = select i1 %.not.7, i64 0, i64 %i.aa
  %.1.7 = sub nuw nsw i64 %i.z, %i.ac
  %i.ad = shl nsw i64 %.1.7, 1                    ; 2 uses
  %i.ae = add nuw nsw i64 %.116.7, 4194304        ; 2 uses
  %.not.8 = icmp ult i64 %i.ad, %i.ae             ; 2 uses
  %i.af = add nuw nsw i64 %.116.7, 8388608
  %.116.8 = select i1 %.not.8, i64 %.116.7, i64 %i.af ; 3 uses
  %i.ag = select i1 %.not.8, i64 0, i64 %i.ae
  %.1.8 = sub nuw nsw i64 %i.ad, %i.ag
  %i.ah = shl nsw i64 %.1.8, 1                    ; 2 uses
  %i.ai = add nuw nsw i64 %.116.8, 2097152        ; 2 uses
  %.not.9 = icmp ult i64 %i.ah, %i.ai             ; 2 uses
  %i.aj = add nuw nsw i64 %.116.8, 4194304
  %.116.9 = select i1 %.not.9, i64 %.116.8, i64 %i.aj ; 3 uses
  %i.ak = select i1 %.not.9, i64 0, i64 %i.ai
  %.1.9 = sub nuw nsw i64 %i.ah, %i.ak
  %i.al = shl nsw i64 %.1.9, 1                    ; 2 uses
  %i.am = add nuw nsw i64 %.116.9, 1048576        ; 2 uses
  %.not.10 = icmp ult i64 %i.al, %i.am            ; 2 uses
  %i.an = add nuw nsw i64 %.116.9, 2097152
  %.116.10 = select i1 %.not.10, i64 %.116.9, i64 %i.an ; 3 uses
  %i.ao = select i1 %.not.10, i64 0, i64 %i.am
  %.1.10 = sub nuw nsw i64 %i.al, %i.ao
  %i.ap = shl nsw i64 %.1.10, 1                   ; 2 uses
  %i.aq = add nuw nsw i64 %.116.10, 524288        ; 2 uses
  %.not.11 = icmp ult i64 %i.ap, %i.aq            ; 2 uses
  %i.ar = add nuw nsw i64 %.116.10, 1048576
  %.116.11 = select i1 %.not.11, i64 %.116.10, i64 %i.ar ; 3 uses
  %i.as = select i1 %.not.11, i64 0, i64 %i.aq
  %.1.11 = sub nuw nsw i64 %i.ap, %i.as
  %i.at = shl nsw i64 %.1.11, 1                   ; 2 uses
  %i.au = add nuw nsw i64 %.116.11, 262144        ; 2 uses
  %.not.12 = icmp ult i64 %i.at, %i.au            ; 2 uses
  %i.av = add nuw nsw i64 %.116.11, 524288
  %.116.12 = select i1 %.not.12, i64 %.116.11, i64 %i.av ; 3 uses
  %i.aw = select i1 %.not.12, i64 0, i64 %i.au
  %.1.12 = sub nuw nsw i64 %i.at, %i.aw
  %i.ax = shl nsw i64 %.1.12, 1                   ; 2 uses
  %i.ay = add nuw nsw i64 %.116.12, 131072        ; 2 uses
  %.not.13 = icmp ult i64 %i.ax, %i.ay            ; 2 uses
  %i.az = add nuw nsw i64 %.116.12, 262144
  %.116.13 = select i1 %.not.13, i64 %.116.12, i64 %i.az ; 3 uses
  %i.ba = select i1 %.not.13, i64 0, i64 %i.ay
  %.1.13 = sub nuw nsw i64 %i.ax, %i.ba
  %i.bb = shl nsw i64 %.1.13, 1                   ; 2 uses
  %i.bc = add nuw nsw i64 %.116.13, 65536         ; 2 uses
end_hunk_0
