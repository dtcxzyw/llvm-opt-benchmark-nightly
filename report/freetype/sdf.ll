inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@edt8:bb.a
  %i.w = icmp slt i32 %i.v, %i.q
  br i1 %i.w, label %bb.e, label %compare_neighbor.exit.us.thread79.i

compare_neighbor.exit.us.thread79.i:              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !123
  %i.y = load <2 x i64>, ptr %10, align 16, !tbaa !90
  %i.z = add nsw <2 x i64> %i.y, splat (i64 -65536)
  store <2 x i64> %i.z, ptr %10, align 16, !tbaa !90
  %i.aa = call i64 @FT_Vector_Length(ptr noundef nonnull %10) #12
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %i.ac = load i32, ptr %gep85.i, align 8, !tbaa !117 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, %i.ab
  br i1 %i.ad, label %bb.f, label %compare_neighbor.exit.us.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.ab, ptr %gep85.i, align 8, !tbaa !117
  %i.ae = getelementptr inbounds nuw i8, ptr %gep85.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit.us.i

compare_neighbor.exit.us.i:                       ; preds = %bb.f, %bb.e
  %i.af = phi i32 [ %i.ab, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.ag = icmp slt i32 %i.af, 32769
  br i1 %i.ag, label %compare_neighbor.exit32.us.thread.i, label %bb.g

bb.g:                                             ; preds = %compare_neighbor.exit.us.i, %compare_neighbor.exit.us.thread79.i
  %i.ah = phi i32 [ %i.q, %compare_neighbor.exit.us.thread79.i ], [ %i.af, %compare_neighbor.exit.us.i ] ; 2 uses
  %i.ai = load i32, ptr %i.s, align 8, !tbaa !117
  %i.aj = add nsw i32 %i.ai, -65536
  %i.ak = icmp slt i32 %i.aj, %i.ah
  br i1 %i.ak, label %bb.h, label %compare_neighbor.exit32.us.thread80.i

compare_neighbor.exit32.us.thread80.i:            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !123
  %i.am = load i64, ptr %i.j, align 8, !tbaa !55
  %i.an = add nsw i64 %i.am, -65536
  store i64 %i.an, ptr %i.j, align 8, !tbaa !55
  %i.ao = call i64 @FT_Vector_Length(ptr noundef nonnull %9) #12
  %i.ap = trunc i64 %i.ao to i32                  ; 3 uses
  %i.aq = load i32, ptr %gep85.i, align 8, !tbaa !117 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, %i.ap
  br i1 %i.ar, label %bb.i, label %compare_neighbor.exit32.us.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.ap, ptr %gep85.i, align 8, !tbaa !117
  %i.as = getelementptr inbounds nuw i8, ptr %gep85.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit32.us.i

compare_neighbor.exit32.us.thread.i:              ; preds = %compare_neighbor.exit.us.i, %compare_neighbor.exit.us.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  br label %compare_neighbor.exit33.us.thread.i

compare_neighbor.exit32.us.i:                     ; preds = %bb.i, %bb.h
  %i.at = phi i32 [ %i.ap, %bb.i ], [ %i.aq, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.au = icmp slt i32 %i.at, 32769
  br i1 %i.au, label %compare_neighbor.exit33.us.thread.i, label %bb.j

bb.j:                                             ; preds = %compare_neighbor.exit32.us.i, %compare_neighbor.exit32.us.thread80.i
  %i.av = phi i32 [ %i.ah, %compare_neighbor.exit32.us.thread80.i ], [ %i.at, %compare_neighbor.exit32.us.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !117
  %i.ay = add nsw i32 %i.ax, -65536
  %i.az = icmp slt i32 %i.ay, %i.av
  br i1 %i.az, label %bb.k, label %compare_neighbor.exit33.us.thread82.i

compare_neighbor.exit33.us.thread82.i:            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !123
  %i.bb = load <2 x i64>, ptr %8, align 16, !tbaa !90
  %i.bc = add nsw <2 x i64> %i.bb, <i64 65536, i64 -65536>
  store <2 x i64> %i.bc, ptr %8, align 16, !tbaa !90
  %i.bd = call i64 @FT_Vector_Length(ptr noundef nonnull %8) #12
  %i.be = trunc i64 %i.bd to i32                  ; 3 uses
  %i.bf = load i32, ptr %gep85.i, align 8, !tbaa !117 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %i.be
  br i1 %i.bg, label %bb.l, label %compare_neighbor.exit33.us.i

bb.l:                                             ; preds = %bb.k
  store i32 %i.be, ptr %gep85.i, align 8, !tbaa !117
  %i.bh = getelementptr inbounds nuw i8, ptr %gep85.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit33.us.i

compare_neighbor.exit33.us.thread.i:              ; preds = %compare_neighbor.exit32.us.i, %compare_neighbor.exit32.us.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br label %compare_neighbor.exit34.us.i

compare_neighbor.exit33.us.i:                     ; preds = %bb.l, %bb.k
  %i.bi = phi i32 [ %i.be, %bb.l ], [ %i.bf, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.bj = icmp slt i32 %i.bi, 32769
  br i1 %i.bj, label %compare_neighbor.exit34.us.i, label %bb.m

bb.m:                                             ; preds = %compare_neighbor.exit33.us.i, %compare_neighbor.exit33.us.thread82.i
  %i.bk = phi i32 [ %i.av, %compare_neighbor.exit33.us.thread82.i ], [ %i.bi, %compare_neighbor.exit33.us.i ]
  %i.bl = getelementptr inbounds i8, ptr %gep85.i, i64 -32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !117
  %i.bn = add nsw i32 %i.bm, -65536
  %i.bo = icmp slt i32 %i.bn, %i.bk
  br i1 %i.bo, label %bb.n, label %compare_neighbor.exit34.us.i

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds i8, ptr %gep85.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !123
  %i.bq = load i64, ptr %7, align 8, !tbaa !54
  %i.br = add nsw i64 %i.bq, -65536
  store i64 %i.br, ptr %7, align 8, !tbaa !54
  %i.bs = call i64 @FT_Vector_Length(ptr noundef nonnull %7) #12
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = load i32, ptr %gep85.i, align 8, !tbaa !117
  %i.bv = icmp sgt i32 %i.bu, %i.bt
  br i1 %i.bv, label %bb.o, label %compare_neighbor.exit34.us.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.bt, ptr %gep85.i, align 8, !tbaa !117
  %i.bw = getelementptr inbounds nuw i8, ptr %gep85.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit34.us.i

compare_neighbor.exit34.us.i:                     ; preds = %bb.o, %bb.n, %bb.m, %compare_neighbor.exit33.us.i, %compare_neighbor.exit33.us.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %._crit_edge.us.i, label %bb.c, !llvm.loop !124

bb.p:                                             ; preds = %._crit_edge.us.i, %compare_neighbor.exit35.us.i
  %indvars.iv53.i = phi i64 [ %i.m, %._crit_edge.us.i ], [ %indvars.iv.next54.i, %compare_neighbor.exit35.us.i ] ; 3 uses
  %gep87.i = getelementptr [32 x i8], ptr %invariant.gep86.i, i64 %indvars.iv53.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.bx = load i32, ptr %gep87.i, align 8, !tbaa !117 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 32769
  br i1 %i.by, label %compare_neighbor.exit35.us.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %gep87.i, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !117
  %i.cb = add nsw i32 %i.ca, -65536
  %i.cc = icmp slt i32 %i.cb, %i.bx
  br i1 %i.cc, label %bb.r, label %compare_neighbor.exit35.us.i

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %gep87.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !123
  %i.ce = load i64, ptr %6, align 8, !tbaa !54
  %i.cf = add nsw i64 %i.ce, 65536
  store i64 %i.cf, ptr %6, align 8, !tbaa !54
  %i.cg = call i64 @FT_Vector_Length(ptr noundef nonnull %6) #12
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = load i32, ptr %gep87.i, align 8, !tbaa !117
  %i.cj = icmp sgt i32 %i.ci, %i.ch
  br i1 %i.cj, label %bb.s, label %compare_neighbor.exit35.us.i

bb.s:                                             ; preds = %bb.r
  store i32 %i.ch, ptr %gep87.i, align 8, !tbaa !117
  %i.ck = getelementptr inbounds nuw i8, ptr %gep87.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.us.i

compare_neighbor.exit35.us.i:                     ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1
  %i.cl = icmp sgt i64 %indvars.iv53.i, 0
  br i1 %i.cl, label %bb.p, label %._crit_edge40.us.i.loopexit, !llvm.loop !125

._crit_edge40.us.i.loopexit:                      ; preds = %compare_neighbor.exit35.us.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %first_pass.exit, label %.preheader.us.i, !llvm.loop !126

._crit_edge.us.i:                                 ; preds = %compare_neighbor.exit34.us.i
  %invariant.gep86.i = getelementptr [32 x i8], ptr %i.a, i64 %i.o
  br label %bb.p

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.cm = icmp eq i32 %i.c, 2
  br i1 %i.cm, label %.preheader.preheader.i, label %first_pass.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %11 = zext nneg i32 %i.k to i64
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %.preheader.i.a

.preheader.i.a:                                   ; preds = %._crit_edge40.i, %.preheader.preheader.i
  %indvars.iv45.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next46.i, %._crit_edge40.i ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv45.i, 6
  %invariant.gep.i = getelementptr i8, ptr %i.a, i64 %.idx.i
  br label %bb.t

bb.t:                                             ; preds = %compare_neighbor.exit35.i, %.preheader.i.a
  %indvars.iv.i = phi i64 [ %11, %.preheader.i.a ], [ %indvars.iv.next.i, %compare_neighbor.exit35.i ] ; 3 uses
  %gep.i = getelementptr [32 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.cn = load i32, ptr %gep.i, align 8, !tbaa !117 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 32769
  br i1 %i.co, label %compare_neighbor.exit35.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %gep.i, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !117
  %i.cr = add nsw i32 %i.cq, -65536
  %i.cs = icmp slt i32 %i.cr, %i.cn
  br i1 %i.cs, label %bb.v, label %compare_neighbor.exit35.i

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %gep.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !123
  %i.cu = load i64, ptr %6, align 8, !tbaa !54
  %i.cv = add nsw i64 %i.cu, 65536
  store i64 %i.cv, ptr %6, align 8, !tbaa !54
  %i.cw = call i64 @FT_Vector_Length(ptr noundef nonnull %6) #12
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = load i32, ptr %gep.i, align 8, !tbaa !117
  %i.cz = icmp sgt i32 %i.cy, %i.cx
  br i1 %i.cz, label %bb.w, label %compare_neighbor.exit35.i

bb.w:                                             ; preds = %bb.v
  store i32 %i.cx, ptr %gep.i, align 8, !tbaa !117
  %i.da = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.i

compare_neighbor.exit35.i:                        ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %12 = icmp sgt i64 %indvars.iv.i, 0
  br i1 %12, label %bb.t, label %._crit_edge40.i, !llvm.loop !125

._crit_edge40.i:                                  ; preds = %compare_neighbor.exit35.i
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %first_pass.exit, label %.preheader.i.a, !llvm.loop !126

first_pass.exit:                                  ; preds = %._crit_edge40.i, %._crit_edge40.us.i.loopexit, %.preheader.lr.ph.split.i
  %.pr = load i32, ptr %i.d, align 4, !tbaa !105  ; 2 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.dc = add nsw i32 %.pr, -2                    ; 2 uses
  %i.dd = icmp sgt i32 %.pr, 1
  br i1 %i.dd, label %.preheader.lr.ph.i5, label %second_pass.exit

.preheader.lr.ph.i5:                              ; preds = %first_pass.exit
  %i.de = load i32, ptr %i.b, align 8, !tbaa !104 ; 5 uses
  %i.df = icmp sgt i32 %i.de, 2
  %i.dg = sext i32 %i.de to i64                   ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.di = add nsw i32 %i.de, -2                   ; 2 uses
  br i1 %i.df, label %.preheader.us.preheader.i17, label %.preheader.lr.ph.split.i6

.preheader.us.preheader.i17:                      ; preds = %.preheader.lr.ph.i5
  %i.dj = add nsw i32 %i.de, -1
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = zext nneg i32 %i.dc to i64
  %wide.trip.count.i18 = zext nneg i32 %i.dj to i64
  br label %.preheader.us.i19

.preheader.us.i19:                                ; preds = %._crit_edge40.us.i25.loopexit, %.preheader.us.preheader.i17
  %indvars.iv54.i = phi i64 [ %i.dl, %.preheader.us.preheader.i17 ], [ %indvars.iv.next55.i, %._crit_edge40.us.i25.loopexit ] ; 3 uses
  %i.dm = mul nsw i64 %indvars.iv54.i, %i.dg
  %invariant.gep78.i = getelementptr [32 x i8], ptr %i.db, i64 %i.dm ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %compare_neighbor.exit34.us.i21, %.preheader.us.i19
  %indvars.iv48.i20 = phi i64 [ 1, %.preheader.us.i19 ], [ %indvars.iv.next49.i22, %compare_neighbor.exit34.us.i21 ] ; 2 uses
  %gep79.i = getelementptr [32 x i8], ptr %invariant.gep78.i, i64 %indvars.iv48.i20 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.dn = load i32, ptr %gep79.i, align 8, !tbaa !117 ; 3 uses
  %i.do = icmp slt i32 %i.dn, 32769
  br i1 %i.do, label %compare_neighbor.exit.us.thread.i33, label %bb.y

compare_neighbor.exit.us.thread.i33:              ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br label %compare_neighbor.exit32.us.thread.i32

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %gep79.i, i64 %i.dg ; 6 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !117
  %i.ds = add nsw i32 %i.dr, -65536
  %i.dt = icmp slt i32 %i.ds, %i.dn
  br i1 %i.dt, label %bb.z, label %compare_neighbor.exit.us.thread73.i

compare_neighbor.exit.us.thread73.i:              ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !tbaa.struct !123
  %i.dv = load <2 x i64>, ptr %5, align 16, !tbaa !90
  %i.dw = add nsw <2 x i64> %i.dv, <i64 -65536, i64 65536>
  store <2 x i64> %i.dw, ptr %5, align 16, !tbaa !90
  %i.dx = call i64 @FT_Vector_Length(ptr noundef nonnull %5) #12
  %i.dy = trunc i64 %i.dx to i32                  ; 3 uses
  %i.dz = load i32, ptr %gep79.i, align 8, !tbaa !117 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, %i.dy
  br i1 %i.ea, label %bb.aa, label %compare_neighbor.exit.us.i31

bb.aa:                                            ; preds = %bb.z
  store i32 %i.dy, ptr %gep79.i, align 8, !tbaa !117
  %i.eb = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit.us.i31

compare_neighbor.exit.us.i31:                     ; preds = %bb.aa, %bb.z
  %i.ec = phi i32 [ %i.dy, %bb.aa ], [ %i.dz, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ed = icmp slt i32 %i.ec, 32769
  br i1 %i.ed, label %compare_neighbor.exit32.us.thread.i32, label %bb.ab

bb.ab:                                            ; preds = %compare_neighbor.exit.us.i31, %compare_neighbor.exit.us.thread73.i
  %i.ee = phi i32 [ %i.dn, %compare_neighbor.exit.us.thread73.i ], [ %i.ec, %compare_neighbor.exit.us.i31 ] ; 2 uses
  %i.ef = load i32, ptr %i.dp, align 8, !tbaa !117
  %i.eg = add nsw i32 %i.ef, -65536
  %i.eh = icmp slt i32 %i.eg, %i.ee
  br i1 %i.eh, label %bb.ac, label %compare_neighbor.exit32.us.thread74.i

compare_neighbor.exit32.us.thread74.i:            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !123
  %i.ej = load i64, ptr %i.dh, align 8, !tbaa !55
  %i.ek = add nsw i64 %i.ej, 65536
  store i64 %i.ek, ptr %i.dh, align 8, !tbaa !55
  %i.el = call i64 @FT_Vector_Length(ptr noundef nonnull %4) #12
  %i.em = trunc i64 %i.el to i32                  ; 3 uses
  %i.en = load i32, ptr %gep79.i, align 8, !tbaa !117 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, %i.em
  br i1 %i.eo, label %bb.ad, label %compare_neighbor.exit32.us.i29

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.em, ptr %gep79.i, align 8, !tbaa !117
  %i.ep = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit32.us.i29

compare_neighbor.exit32.us.thread.i32:            ; preds = %compare_neighbor.exit.us.i31, %compare_neighbor.exit.us.thread.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br label %compare_neighbor.exit33.us.thread.i30

compare_neighbor.exit32.us.i29:                   ; preds = %bb.ad, %bb.ac
  %i.eq = phi i32 [ %i.em, %bb.ad ], [ %i.en, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.er = icmp slt i32 %i.eq, 32769
  br i1 %i.er, label %compare_neighbor.exit33.us.thread.i30, label %bb.ae

bb.ae:                                            ; preds = %compare_neighbor.exit32.us.i29, %compare_neighbor.exit32.us.thread74.i
  %i.es = phi i32 [ %i.ee, %compare_neighbor.exit32.us.thread74.i ], [ %i.eq, %compare_neighbor.exit32.us.i29 ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !117
  %i.ev = add nsw i32 %i.eu, -65536
  %i.ew = icmp slt i32 %i.ev, %i.es
  br i1 %i.ew, label %bb.af, label %compare_neighbor.exit33.us.thread76.i

compare_neighbor.exit33.us.thread76.i:            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 16, i1 false), !tbaa.struct !123
  %i.ey = load <2 x i64>, ptr %3, align 16, !tbaa !90
  %i.ez = add nsw <2 x i64> %i.ey, splat (i64 65536)
  store <2 x i64> %i.ez, ptr %3, align 16, !tbaa !90
  %i.fa = call i64 @FT_Vector_Length(ptr noundef nonnull %3) #12
  %i.fb = trunc i64 %i.fa to i32                  ; 3 uses
  %i.fc = load i32, ptr %gep79.i, align 8, !tbaa !117 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, %i.fb
  br i1 %i.fd, label %bb.ag, label %compare_neighbor.exit33.us.i28

bb.ag:                                            ; preds = %bb.af
  store i32 %i.fb, ptr %gep79.i, align 8, !tbaa !117
  %i.fe = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit33.us.i28

compare_neighbor.exit33.us.thread.i30:            ; preds = %compare_neighbor.exit32.us.i29, %compare_neighbor.exit32.us.thread.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  br label %compare_neighbor.exit34.us.i21

compare_neighbor.exit33.us.i28:                   ; preds = %bb.ag, %bb.af
  %i.ff = phi i32 [ %i.fb, %bb.ag ], [ %i.fc, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.fg = icmp slt i32 %i.ff, 32769
  br i1 %i.fg, label %compare_neighbor.exit34.us.i21, label %bb.ah

bb.ah:                                            ; preds = %compare_neighbor.exit33.us.i28, %compare_neighbor.exit33.us.thread76.i
  %i.fh = phi i32 [ %i.es, %compare_neighbor.exit33.us.thread76.i ], [ %i.ff, %compare_neighbor.exit33.us.i28 ]
  %i.fi = getelementptr inbounds i8, ptr %gep79.i, i64 -32
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !117
  %i.fk = add nsw i32 %i.fj, -65536
  %i.fl = icmp slt i32 %i.fk, %i.fh
  br i1 %i.fl, label %bb.ai, label %compare_neighbor.exit34.us.i21

bb.ai:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds i8, ptr %gep79.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !123
  %i.fn = load i64, ptr %2, align 8, !tbaa !54
  %i.fo = add nsw i64 %i.fn, -65536
  store i64 %i.fo, ptr %2, align 8, !tbaa !54
  %i.fp = call i64 @FT_Vector_Length(ptr noundef nonnull %2) #12
  %i.fq = trunc i64 %i.fp to i32                  ; 2 uses
  %i.fr = load i32, ptr %gep79.i, align 8, !tbaa !117
  %i.fs = icmp sgt i32 %i.fr, %i.fq
  br i1 %i.fs, label %bb.aj, label %compare_neighbor.exit34.us.i21

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.fq, ptr %gep79.i, align 8, !tbaa !117
  %i.ft = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit34.us.i21

compare_neighbor.exit34.us.i21:                   ; preds = %bb.aj, %bb.ai, %bb.ah, %compare_neighbor.exit33.us.i28, %compare_neighbor.exit33.us.thread.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %indvars.iv.next49.i22 = add nuw nsw i64 %indvars.iv48.i20, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next49.i22, %wide.trip.count.i18
  br i1 %exitcond.not.i23, label %.lr.ph39.us.i26, label %bb.x, !llvm.loop !127

.lr.ph39.us.i26:                                  ; preds = %compare_neighbor.exit34.us.i21, %compare_neighbor.exit35.us.i27
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %compare_neighbor.exit35.us.i27 ], [ %i.dk, %compare_neighbor.exit34.us.i21 ] ; 3 uses
  %gep81.i = getelementptr [32 x i8], ptr %invariant.gep78.i, i64 %indvars.iv51.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.fu = load i32, ptr %gep81.i, align 8, !tbaa !117 ; 2 uses
  %i.fv = icmp slt i32 %i.fu, 32769
  br i1 %i.fv, label %compare_neighbor.exit35.us.i27, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph39.us.i26
  %i.fw = getelementptr inbounds nuw i8, ptr %gep81.i, i64 32
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !117
  %i.fy = add nsw i32 %i.fx, -65536
  %i.fz = icmp slt i32 %i.fy, %i.fu
  br i1 %i.fz, label %bb.al, label %compare_neighbor.exit35.us.i27

bb.al:                                            ; preds = %bb.ak
  %i.ga = getelementptr inbounds nuw i8, ptr %gep81.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false), !tbaa.struct !123
  %i.gb = load i64, ptr %1, align 8, !tbaa !54
  %i.gc = add nsw i64 %i.gb, 65536
  store i64 %i.gc, ptr %1, align 8, !tbaa !54
  %i.gd = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.ge = trunc i64 %i.gd to i32                  ; 2 uses
  %i.gf = load i32, ptr %gep81.i, align 8, !tbaa !117
  %i.gg = icmp sgt i32 %i.gf, %i.ge
  br i1 %i.gg, label %bb.am, label %compare_neighbor.exit35.us.i27

bb.am:                                            ; preds = %bb.al
  store i32 %i.ge, ptr %gep81.i, align 8, !tbaa !117
  %i.gh = getelementptr inbounds nuw i8, ptr %gep81.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.us.i27

compare_neighbor.exit35.us.i27:                   ; preds = %bb.am, %bb.al, %bb.ak, %.lr.ph39.us.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i, -1
  %i.gi = icmp sgt i64 %indvars.iv51.i, 0
  br i1 %i.gi, label %.lr.ph39.us.i26, label %._crit_edge40.us.i25.loopexit, !llvm.loop !128

._crit_edge40.us.i25.loopexit:                    ; preds = %compare_neighbor.exit35.us.i27
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, -1
  %i.gj = icmp sgt i64 %indvars.iv54.i, 0
  br i1 %i.gj, label %.preheader.us.i19, label %second_pass.exit, !llvm.loop !129

.preheader.lr.ph.split.i6:                        ; preds = %.preheader.lr.ph.i5
  %i.gk = icmp eq i32 %i.de, 2
  br i1 %i.gk, label %.preheader.preheader.i7, label %second_pass.exit

.preheader.preheader.i7:                          ; preds = %.preheader.lr.ph.split.i6
  %13 = zext nneg i32 %i.di to i64
  %14 = zext nneg i32 %i.dc to i64
  br label %.preheader.i8.a

.preheader.i8.a:                                  ; preds = %._crit_edge40.i15, %.preheader.preheader.i7
  %indvars.iv45.i9 = phi i64 [ %14, %.preheader.preheader.i7 ], [ %indvars.iv.next46.i16, %._crit_edge40.i15 ] ; 3 uses
  %15 = mul nsw i64 %indvars.iv45.i9, %i.dg
  %invariant.gep.i10 = getelementptr [32 x i8], ptr %i.db, i64 %15
  br label %bb.an

bb.an:                                            ; preds = %compare_neighbor.exit35.i13, %.preheader.i8.a
  %indvars.iv.i11 = phi i64 [ %13, %.preheader.i8.a ], [ %indvars.iv.next.i14, %compare_neighbor.exit35.i13 ] ; 3 uses
  %gep.i12 = getelementptr [32 x i8], ptr %invariant.gep.i10, i64 %indvars.iv.i11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.gl = load i32, ptr %gep.i12, align 8, !tbaa !117 ; 2 uses
  %i.gm = icmp slt i32 %i.gl, 32769
  br i1 %i.gm, label %compare_neighbor.exit35.i13, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gn = getelementptr inbounds nuw i8, ptr %gep.i12, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !117
  %i.gp = add nsw i32 %i.go, -65536
  %i.gq = icmp slt i32 %i.gp, %i.gl
  br i1 %i.gq, label %bb.ap, label %compare_neighbor.exit35.i13

bb.ap:                                            ; preds = %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %gep.i12, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !tbaa.struct !123
  %i.gs = load i64, ptr %1, align 8, !tbaa !54
  %i.gt = add nsw i64 %i.gs, 65536
  store i64 %i.gt, ptr %1, align 8, !tbaa !54
  %i.gu = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  %i.gw = load i32, ptr %gep.i12, align 8, !tbaa !117
  %i.gx = icmp sgt i32 %i.gw, %i.gv
  br i1 %i.gx, label %bb.aq, label %compare_neighbor.exit35.i13

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.gv, ptr %gep.i12, align 8, !tbaa !117
  %i.gy = getelementptr inbounds nuw i8, ptr %gep.i12, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.i13

compare_neighbor.exit35.i13:                      ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next.i14 = add nsw i64 %indvars.iv.i11, -1
  %i.gz = icmp sgt i64 %indvars.iv.i11, 0
  br i1 %i.gz, label %bb.an, label %._crit_edge40.i15, !llvm.loop !128

._crit_edge40.i15:                                ; preds = %compare_neighbor.exit35.i13
  %indvars.iv.next46.i16 = add nsw i64 %indvars.iv45.i9, -1
  %16 = icmp sgt i64 %indvars.iv45.i9, 0
  br i1 %16, label %.preheader.i8.a, label %second_pass.exit, !llvm.loop !129

second_pass.exit:                                 ; preds = %._crit_edge40.i15, %._crit_edge40.us.i25.loopexit, %bb.b, %.preheader.lr.ph.split.i6, %first_pass.exit, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %._crit_edge40.us.i25.loopexit ], [ 0, %first_pass.exit ], [ 0, %bb.b ], [ 0, %.preheader.lr.ph.split.i6 ], [ 0, %._crit_edge40.i15 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @finalize_sdf(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !104
  %.not = icmp eq i32 %i.b, %i.g
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %.not46 = icmp eq i32 %i.c, %i.i
  br i1 %.not46, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !130
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
  %i.t = load ptr, ptr %0, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !117  ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.l)
  %.037 = select i1 %i.w, i32 %i.l, i32 %i.x      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !109
  %i.aa = icmp ult i8 %i.z, 127
  %i.ab = load i8, ptr %i.o, align 4, !tbaa !131
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
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.loopexit, label %.preheader, !llvm.loop !133

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %.preheader.lr.ph, %bb.a, %bb.b
  %.040 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %.preheader.lr.ph ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  ret i32 %.040
}

declare i64 @FT_Vector_Length(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Vector_NormLen(ptr noundef) local_unnamed_addr #4

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #4

declare hidden i32 @FT_SqrtFixed(i32 noundef) local_unnamed_addr #4

declare i32 @FT_Outline_Get_Orientation(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sdf_generate_with_overlaps(i64 range(i64 0, 281474976710656) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.SDF_Shape_, align 8         ; 5 uses
  %.fr201 = freeze i64 %0                         ; 3 uses
  %.sroa.0129.0.extract.trunc = trunc i64 %.fr201 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !99     ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 2 uses
  %i.i = load i32, ptr %3, align 8, !tbaa !47     ; 2 uses
  %.not155174 = icmp eq ptr %i.f, null
  br i1 %.not155174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0143176 = phi ptr [ %i.l, %.lr.ph ], [ %i.f, %bb.c ]
  %.0148175 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.c ]
  %i.j = add nuw nsw i32 %.0148175, 1             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0143176, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135  ; 2 uses
  %.not155 = icmp eq ptr %i.l, null
  br i1 %.not155, label %._crit_edge, label %.lr.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0148.lcssa = phi i32 [ 0, %bb.c ], [ %i.j, %.lr.ph ] ; 7 uses
  %i.m = zext i32 %.0148.lcssa to i64             ; 8 uses
  %i.n = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 10 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !23
  %.not156 = icmp eq i32 %i.o, 0
  br i1 %.not156, label %bb.d, label %.thread

bb.d:                                             ; preds = %._crit_edge
  %i.p = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 9 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !23
  %.not157 = icmp eq i32 %i.q, 0
  br i1 %.not157, label %.preheader170, label %.loopexit

.preheader170:                                    ; preds = %bb.d
  %.not199 = icmp eq i32 %.0148.lcssa, 0          ; 2 uses
  br i1 %.not199, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %.preheader170
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.u = icmp eq i32 %.sroa.0129.0.extract.trunc, 0
  %i.v = icmp eq i32 %.sroa.0129.0.extract.trunc, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.0129.0.insert.insert = and i64 %.fr201, 280379760050175
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph181, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.1144180.in = phi ptr [ %i.e, %.lr.ph181 ], [ %i.cx, %bb.p ]
  %.0142179 = phi ptr [ null, %.lr.ph181 ], [ %i.da, %bb.p ]
  %.1144180 = load ptr, ptr %.1144180.in, align 8, !tbaa !139 ; 4 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv ; 7 uses
  call void @FT_Bitmap_Init(ptr noundef %i.x) #12
  %i.y = load <2 x i32>, ptr %3, align 8, !tbaa !23
  %i.z = load i32, ptr %3, align 8, !tbaa !47
  store <2 x i32> %i.y, ptr %i.x, align 8, !tbaa !23
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !48  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !48
  %i.ac = load i16, ptr %i.s, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i16 %i.ac, ptr %i.ad, align 8, !tbaa !51
  %i.ae = load i8, ptr %i.t, align 2, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !50
  %i.ag = sext i32 %i.aa to i64
  %i.ah = zext i32 %i.z to i64
  %i.ai = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef %i.ag, i64 noundef 0, i64 noundef %i.ah, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !46
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !23
  %.not159 = icmp eq i32 %i.ak, 0
  br i1 %.not159, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %.1144180, null
end_hunk_0
