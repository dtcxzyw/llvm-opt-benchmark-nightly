Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sdf?download=true
inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@edt8:bb.a
  %i.gh = icmp sgt i32 %i.gg, %i.gf
  br i1 %i.gh, label %bb.al, label %compare_neighbor.exit35.us.i27

bb.al:                                            ; preds = %bb.ak
  store i32 %i.gf, ptr %gep81.i, align 8, !tbaa !90
  %i.gi = getelementptr inbounds nuw i8, ptr %gep81.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !91
  br label %compare_neighbor.exit35.us.i27

compare_neighbor.exit35.us.i27:                   ; preds = %bb.al, %bb.ak, %bb.aj, %.lr.ph39.us.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i, -1
  %i.gj = icmp sgt i64 %indvars.iv51.i, 0
  br i1 %i.gj, label %.lr.ph39.us.i26, label %._crit_edge40.us.i25.loopexit, !llvm.loop !141

._crit_edge40.us.i25.loopexit:                    ; preds = %compare_neighbor.exit35.us.i27
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, -1
  %i.gk = icmp sgt i64 %indvars.iv54.i, 0
  br i1 %i.gk, label %.preheader.us.i19, label %second_pass.exit, !llvm.loop !142

.preheader.lr.ph.split.i6:                        ; preds = %.preheader.lr.ph.i5
  %i.gl = icmp eq i32 %i.df, 2
  br i1 %i.gl, label %.preheader.preheader.i7, label %second_pass.exit

.preheader.preheader.i7:                          ; preds = %.preheader.lr.ph.split.i6
  %i.gm = zext nneg i32 %i.dj to i64
  %i.gn = zext nneg i32 %i.dd to i64
  %invariant.gep79 = getelementptr [32 x i8], ptr %i.dc, i64 %i.gm
  br label %.preheader.i8

.preheader.i8:                                    ; preds = %compare_neighbor.exit35.i13, %.preheader.preheader.i7
  %indvars.iv45.i9 = phi i64 [ %i.gn, %.preheader.preheader.i7 ], [ %indvars.iv.next46.i16, %compare_neighbor.exit35.i13 ] ; 3 uses
  %i.go = mul nuw nsw i64 %indvars.iv45.i9, %i.dh
  %gep80 = getelementptr [32 x i8], ptr %invariant.gep79, i64 %i.go ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.gp = load i32, ptr %gep80, align 8, !tbaa !90 ; 2 uses
  %i.gq = icmp slt i32 %i.gp, 32769
  br i1 %i.gq, label %compare_neighbor.exit35.i13, label %bb.am

bb.am:                                            ; preds = %.preheader.i8
  %i.gr = getelementptr inbounds nuw i8, ptr %gep80, i64 32
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !90
  %i.gt = add nsw i32 %i.gs, -65536
  %i.gu = icmp slt i32 %i.gt, %i.gp
  br i1 %i.gu, label %bb.an, label %compare_neighbor.exit35.i13

bb.an:                                            ; preds = %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %gep80, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false), !tbaa.struct !91
  %i.gw = load i64, ptr %1, align 8, !tbaa !55
  %i.gx = add nsw i64 %i.gw, 65536
  store i64 %i.gx, ptr %1, align 8, !tbaa !55
  %i.gy = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.gz = trunc i64 %i.gy to i32                  ; 2 uses
  %i.ha = load i32, ptr %gep80, align 8, !tbaa !90
  %i.hb = icmp sgt i32 %i.ha, %i.gz
  br i1 %i.hb, label %bb.ao, label %compare_neighbor.exit35.i13

bb.ao:                                            ; preds = %bb.an
  store i32 %i.gz, ptr %gep80, align 8, !tbaa !90
  %i.hc = getelementptr inbounds nuw i8, ptr %gep80, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !91
  br label %compare_neighbor.exit35.i13

compare_neighbor.exit35.i13:                      ; preds = %bb.ao, %bb.an, %bb.am, %.preheader.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next46.i16 = add nsw i64 %indvars.iv45.i9, -1
  %i.hd = icmp sgt i64 %indvars.iv45.i9, 0
  br i1 %i.hd, label %.preheader.i8, label %second_pass.exit, !llvm.loop !142

second_pass.exit:                                 ; preds = %compare_neighbor.exit35.i13, %._crit_edge40.us.i25.loopexit, %bb.b, %.preheader.lr.ph.split.i6, %first_pass.exit, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %._crit_edge40.us.i25.loopexit ], [ 0, %first_pass.exit ], [ 0, %bb.b ], [ 0, %.preheader.lr.ph.split.i6 ], [ 0, %compare_neighbor.exit35.i13 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @finalize_sdf(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50   ; 3 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !48     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !85
  %.not = icmp eq i32 %i.b, %i.g
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !86
  %.not46 = icmp eq i32 %i.c, %i.i
  br i1 %.not46, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !145
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
  %i.t = load ptr, ptr %0, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !90   ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.l)
  %.037 = select i1 %i.w, i32 %i.l, i32 %i.x      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !89
  %i.aa = icmp ult i8 %i.z, 127
  %i.ab = load i8, ptr %i.o, align 4, !tbaa !146
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
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.loopexit, label %.preheader, !llvm.loop !144

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
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !82     ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !50   ; 3 uses
  %i.i = load i32, ptr %3, align 8, !tbaa !48     ; 3 uses
  %.not155174 = icmp eq ptr %i.f, null
  br i1 %.not155174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0143176 = phi ptr [ %i.l, %.lr.ph ], [ %i.f, %bb.c ]
  %.0148175 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.c ]
  %i.j = add nuw nsw i32 %.0148175, 1             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0143176, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95   ; 2 uses
  %.not155 = icmp eq ptr %i.l, null
  br i1 %.not155, label %._crit_edge, label %.lr.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0148.lcssa = phi i32 [ 0, %bb.c ], [ %i.j, %.lr.ph ] ; 8 uses
  %i.m = zext nneg i32 %.0148.lcssa to i64        ; 2 uses
  %i.n = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 10 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !24
  %.not156 = icmp eq i32 %i.o, 0
  br i1 %.not156, label %bb.d, label %.thread

bb.d:                                             ; preds = %._crit_edge
  %i.p = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 9 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !24
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
  %smax = call i32 @llvm.smax.i32(i32 %.0148.lcssa, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph181, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.1144180.in = phi ptr [ %i.e, %.lr.ph181 ], [ %i.cx, %bb.p ]
  %.0142179 = phi ptr [ null, %.lr.ph181 ], [ %i.da, %bb.p ]
  %.1144180 = load ptr, ptr %.1144180.in, align 8, !tbaa !96 ; 4 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv ; 7 uses
  call void @FT_Bitmap_Init(ptr noundef %i.x) #12
  %i.y = load <2 x i32>, ptr %3, align 8, !tbaa !24
  %i.z = load i32, ptr %3, align 8, !tbaa !48
  store <2 x i32> %i.y, ptr %i.x, align 8, !tbaa !24
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !49  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = load i16, ptr %i.s, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i16 %i.ac, ptr %i.ad, align 8, !tbaa !52
  %i.ae = load i8, ptr %i.t, align 2, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !51
  %i.ag = sext i32 %i.aa to i64
  %i.ah = zext i32 %i.z to i64
  %i.ai = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef %i.ag, i64 noundef 0, i64 noundef %i.ah, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !47
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !24
  %.not159 = icmp eq i32 %i.ak, 0
  br i1 %.not159, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %.1144180, null
  br i1 %.not.i, label %get_contour_orientation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.1144180, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !97 ; 2 uses
  %.not41.i = icmp eq ptr %i.am, null
  br i1 %.not41.i, label %get_contour_orientation.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.k
  %.045.i = phi i32 [ %i.cr, %bb.k ], [ 0, %bb.g ] ; 3 uses
  %.03744.i = phi ptr [ %i.ct, %bb.k ], [ %i.am, %bb.g ] ; 18 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03744.i, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !99
  switch i32 %i.ao, label %get_contour_orientation.exit [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %.preheader.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !154
  %i.ar = load i64, ptr %.03744.i, align 8, !tbaa !155
  %i.as = sub nsw i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.03744.i, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !156
  br label %bb.k

bb.i:                                             ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %.03744.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !157 ; 2 uses
  %i.ax = load i64, ptr %.03744.i, align 8, !tbaa !155
  %i.ay = sub nsw i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.03744.i, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !158 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03744.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !159
  %i.bd = add nsw i64 %i.bc, %i.ba
  %i.be = mul nsw i64 %i.bd, %i.ay
  %i.bf = sdiv i64 %i.be, 64
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %.045.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !154
  %i.bk = sub nsw i64 %i.bj, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.03744.i, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !157 ; 2 uses
  %i.bn = load i64, ptr %.03744.i, align 8, !tbaa !155
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.03744.i, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !158 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.03744.i, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !159
  %i.bt = add nsw i64 %i.bs, %i.bq
  %i.bu = mul nsw i64 %i.bt, %i.bo
  %i.bv = sdiv i64 %i.bu, 64
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add i32 %.045.i, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.03744.i, i64 48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !160 ; 2 uses
  %i.ca = sub nsw i64 %i.bz, %i.bm
  %i.cb = getelementptr inbounds nuw i8, ptr %.03744.i, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !161 ; 2 uses
  %i.cd = add nsw i64 %i.cc, %i.bq
  %i.ce = mul nsw i64 %i.cd, %i.ca
  %i.cf = sdiv i64 %i.ce, 64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = add i32 %i.bx, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !154
  %i.ck = sub nsw i64 %i.cj, %i.bz
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sink56.i = phi i64 [ 24, %bb.j ], [ 24, %bb.i ], [ 8, %bb.h ]
  %.sink54.i = phi i64 [ %i.cc, %bb.j ], [ %i.ba, %bb.i ], [ %i.au, %bb.h ]
  %.sink52.i = phi i64 [ %i.ck, %bb.j ], [ %i.bk, %bb.i ], [ %i.as, %bb.h ]
  %.sink.i = phi i32 [ %i.ch, %bb.j ], [ %i.bh, %bb.i ], [ %.045.i, %bb.h ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.03744.i, i64 %.sink56.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !77
  %i.cn = add nsw i64 %i.cm, %.sink54.i
  %i.co = mul nsw i64 %i.cn, %.sink52.i
  %i.cp = sdiv i64 %i.co, 64
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = add i32 %.sink.i, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.03744.i, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !100 ; 2 uses
  %.not42.i = icmp eq ptr %i.ct, null
  br i1 %.not42.i, label %bb.l, label %.preheader.i, !llvm.loop !148

bb.l:                                             ; preds = %bb.k
  %.inv.i = icmp slt i32 %i.cr, 1
  %..i = select i1 %.inv.i, i32 2, i32 1
  br label %get_contour_orientation.exit

get_contour_orientation.exit:                     ; preds = %.preheader.i, %bb.f, %bb.g, %bb.l
  %.038.i = phi i32 [ 0, %bb.f ], [ %..i, %bb.l ], [ 0, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv ; 3 uses
  store i32 %.038.i, ptr %i.cu, align 4, !tbaa !24
  %i.cv = icmp eq i32 %.038.i, 2
  %or.cond4 = and i1 %i.cv, %i.u
  %i.cw = icmp eq i32 %.038.i, 1
  %or.cond7 = and i1 %i.cw, %i.v
  %narrow = or i1 %or.cond4, %or.cond7
  %.sroa.8.sroa.2.0 = zext i1 %narrow to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %.1144180, i64 24 ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !95
  store ptr null, ptr %i.cx, align 8, !tbaa !95
  store ptr %.1144180, ptr %i.w, align 8, !tbaa !92
  %i.cz = call fastcc i32 @sdf_generate_subdivision(i64 %.sroa.0129.0.insert.insert, i32 %.sroa.8.sroa.2.0, ptr noundef nonnull %4, i32 noundef %2, ptr noundef nonnull %i.x) ; 2 uses
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !24
  %.not160 = icmp eq i32 %i.cz, 0
  br i1 %.not160, label %bb.m, label %.thread165

bb.m:                                             ; preds = %get_contour_orientation.exit
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !95
  %i.da = load ptr, ptr %i.w, align 8, !tbaa !92  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr %.0142179, ptr %i.db, align 8, !tbaa !95
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dc = load i32, ptr %i.cu, align 4, !tbaa !24
  switch i32 %i.dc, label %bb.p [
    i32 1, label %.sink.split
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %.sink = phi i32 [ 1, %bb.o ], [ 2, %bb.n ]
  store i32 %.sink, ptr %i.cu, align 4, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge182, label %bb.e, !llvm.loop !149

._crit_edge182:                                   ; preds = %bb.p, %.preheader170
  %.0142.lcssa = phi ptr [ null, %.preheader170 ], [ %i.da, %bb.p ]
  store ptr %.0142.lcssa, ptr %i.e, align 8, !tbaa !92
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47 ; 3 uses
  %i.df = icmp sgt i32 %i.i, 0
  br i1 %i.df, label %.preheader169.lr.ph, label %.loopexit

.preheader169.lr.ph:                              ; preds = %._crit_edge182
  %i.dg = icmp sgt i32 %i.h, 0
  %i.dh = and i64 %.fr201, 1095216660480
  %.not158 = icmp ne i64 %i.dh, 0                 ; 2 uses
  %spec.select = sext i1 %.not158 to i8
  br i1 %i.dg, label %.preheader169.lr.ph.split, label %.loopexit

.preheader169.lr.ph.split:                        ; preds = %.preheader169.lr.ph
  br i1 %.not199, label %.preheader169.preheader, label %.preheader169.lr.ph.split.split.us

.preheader169.preheader:                          ; preds = %.preheader169.lr.ph.split
  %5 = zext nneg i32 %i.h to i64
  %6 = zext nneg i32 %i.i to i64
  %i.di = mul nuw nsw i64 %5, %6
  call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 %spec.select, i64 %i.di, i1 false), !tbaa !70
  br label %.loopexit

.preheader169.lr.ph.split.split.us:               ; preds = %.preheader169.lr.ph.split
  %smax225 = call i32 @llvm.smax.i32(i32 %.0148.lcssa, i32 1) ; 3 uses
  %7 = zext nneg i32 %i.h to i64                  ; 4 uses
  %wide.trip.count236 = zext nneg i32 %i.i to i64 ; 2 uses
  %wide.trip.count226 = zext nneg i32 %smax225 to i64 ; 4 uses
  br i1 %.not158, label %.preheader169.us.preheader, label %.preheader169.us.us.preheader

.preheader169.us.us.preheader:                    ; preds = %.preheader169.lr.ph.split.split.us
  %xtraiter = and i64 %wide.trip.count226, 1
  %8 = icmp slt i32 %.0148.lcssa, 2
  %unroll_iter = and i64 %wide.trip.count226, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11 = trunc i32 %smax225 to i1
  br label %.preheader169.us.us

.preheader169.us.preheader:                       ; preds = %.preheader169.lr.ph.split.split.us
  %xtraiter13 = and i64 %wide.trip.count226, 1
  %9 = icmp slt i32 %.0148.lcssa, 2
  %unroll_iter18 = and i64 %wide.trip.count226, 2147483646
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  %lcmp.mod17 = trunc i32 %smax225 to i1
  br label %.preheader169.us

.preheader169.us.us:                              ; preds = %.preheader169.us.us.preheader, %._crit_edge194.split.us.us.split.us.us
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %._crit_edge194.split.us.us.split.us.us ], [ 0, %.preheader169.us.us.preheader ] ; 2 uses
  %i.dj = mul nuw nsw i64 %indvars.iv217, %7
  br label %.lr.ph188.us.us.us.us

.lr.ph188.us.us.us.us:                            ; preds = %._crit_edge189.us.us.us.us, %.preheader169.us.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %._crit_edge189.us.us.us.us ], [ 0, %.preheader169.us.us ] ; 2 uses
  %i.dk = add nuw nsw i64 %indvars.iv212, %i.dj   ; 4 uses
  br i1 %8, label %.epil.preheader, label %.lr.ph188.us.us.us.us.new

.lr.ph188.us.us.us.us.new:                        ; preds = %.lr.ph188.us.us.us.us, %bb.v
  %indvars.iv208 = phi i64 [ %indvars.iv.next209.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ] ; 4 uses
  %.0186.us.us.us.us = phi i8 [ %.1.us.us.us.us.1, %bb.v ], [ -1, %.lr.ph188.us.us.us.us ] ; 2 uses
  %.0137185.us.us.us.us = phi i8 [ %.1138.us.us.us.us.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ]
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv208
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !47
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !70  ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv208
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !24
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph188.us.us.us.us.new
  %i.dt = call i8 @llvm.umin.i8(i8 %.0186.us.us.us.us, i8 %i.dp)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph188.us.us.us.us.new
  %i.du = call i8 @llvm.umax.i8(i8 %.0137185.us.us.us.us, i8 %i.dp)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1138.us.us.us.us = phi i8 [ %i.du, %bb.r ], [ %.0137185.us.us.us.us, %bb.q ] ; 2 uses
  %.1.us.us.us.us = phi i8 [ %.0186.us.us.us.us, %bb.r ], [ %i.dt, %bb.q ] ; 2 uses
  %indvars.iv.next209 = or disjoint i64 %indvars.iv208, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv.next209
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dk
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !70  ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next209
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !24
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = call i8 @llvm.umin.i8(i8 %.1.us.us.us.us, i8 %i.dz)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ee = call i8 @llvm.umax.i8(i8 %.1138.us.us.us.us, i8 %i.dz)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1138.us.us.us.us.1 = phi i8 [ %i.ee, %bb.u ], [ %.1138.us.us.us.us, %bb.t ] ; 3 uses
  %.1.us.us.us.us.1 = phi i8 [ %.1.us.us.us.us, %bb.u ], [ %i.ed, %bb.t ] ; 3 uses
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge189.us.us.us.us.unr-lcssa, label %.lr.ph188.us.us.us.us.new, !llvm.loop !150

._crit_edge189.us.us.us.us.unr-lcssa:             ; preds = %bb.v
  br i1 %lcmp.mod.not, label %._crit_edge189.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge189.us.us.us.us.unr-lcssa, %.lr.ph188.us.us.us.us
  %indvars.iv208.epil.init = phi i64 [ 0, %.lr.ph188.us.us.us.us ], [ %indvars.iv.next209.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  %.0186.us.us.us.us.epil.init = phi i8 [ -1, %.lr.ph188.us.us.us.us ], [ %.1.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  %.0137185.us.us.us.us.epil.init = phi i8 [ 0, %.lr.ph188.us.us.us.us ], [ %.1138.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod11)
  %i.ef = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv208.epil.init
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dk
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !70  ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv208.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !24
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.epil.preheader
  %i.en = call i8 @llvm.umin.i8(i8 %.0186.us.us.us.us.epil.init, i8 %i.ej)
  br label %._crit_edge189.us.us.us.us

bb.x:                                             ; preds = %.epil.preheader
  %i.eo = call i8 @llvm.umax.i8(i8 %.0137185.us.us.us.us.epil.init, i8 %i.ej)
  br label %._crit_edge189.us.us.us.us

._crit_edge189.us.us.us.us:                       ; preds = %bb.w, %bb.x, %._crit_edge189.us.us.us.us.unr-lcssa
  %.1138.us.us.us.us.lcssa = phi i8 [ %.1138.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ], [ %i.eo, %bb.x ], [ %.0137185.us.us.us.us.epil.init, %bb.w ]
  %.1.us.us.us.us.lcssa = phi i8 [ %.1.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ], [ %.0186.us.us.us.us.epil.init, %bb.x ], [ %i.en, %bb.w ]
  %i.ep = call i8 @llvm.umin.i8(i8 %.1138.us.us.us.us.lcssa, i8 %.1.us.us.us.us.lcssa)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dk
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !70
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %7
  br i1 %exitcond216.not, label %._crit_edge194.split.us.us.split.us.us, label %.lr.ph188.us.us.us.us, !llvm.loop !151

._crit_edge194.split.us.us.split.us.us:           ; preds = %._crit_edge189.us.us.us.us
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count236
  br i1 %exitcond221.not, label %.thread165, label %.preheader169.us.us, !llvm.loop !152

.preheader169.us:                                 ; preds = %.preheader169.us.preheader, %._crit_edge194.split.us.us.split
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %._crit_edge194.split.us.us.split ], [ 0, %.preheader169.us.preheader ] ; 2 uses
  %i.er = mul nuw nsw i64 %indvars.iv231, %7
  br label %.lr.ph188.us.us

.lr.ph188.us.us:                                  ; preds = %._crit_edge189.us.us, %.preheader169.us
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %._crit_edge189.us.us ], [ 0, %.preheader169.us ] ; 2 uses
  %i.es = add nuw nsw i64 %indvars.iv226, %i.er   ; 4 uses
  br i1 %9, label %.epil.preheader12, label %.lr.ph188.us.us.new

.lr.ph188.us.us.new:                              ; preds = %.lr.ph188.us.us, %bb.ad
  %indvars.iv222 = phi i64 [ %indvars.iv.next223.1, %bb.ad ], [ 0, %.lr.ph188.us.us ] ; 4 uses
  %.0186.us.us = phi i8 [ %.1.us.us.1, %bb.ad ], [ -1, %.lr.ph188.us.us ] ; 2 uses
  %.0137185.us.us = phi i8 [ %.1138.us.us.1, %bb.ad ], [ 0, %.lr.ph188.us.us ] ; 2 uses
  %niter19 = phi i64 [ %niter19.next.1, %bb.ad ], [ 0, %.lr.ph188.us.us ]
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv222
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !70  ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv222
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !24
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph188.us.us.new
  %i.fb = call i8 @llvm.umin.i8(i8 %.0186.us.us, i8 %i.ex)
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph188.us.us.new
  %i.fc = call i8 @llvm.umax.i8(i8 %.0137185.us.us, i8 %i.ex)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1138.us.us = phi i8 [ %i.fc, %bb.z ], [ %.0137185.us.us, %bb.y ] ; 2 uses
  %.1.us.us = phi i8 [ %.0186.us.us, %bb.z ], [ %i.fb, %bb.y ] ; 2 uses
  %indvars.iv.next223 = or disjoint i64 %indvars.iv222, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv.next223
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !47
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.es
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !70  ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next223
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !24
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fl = call i8 @llvm.umin.i8(i8 %.1.us.us, i8 %i.fh)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fm = call i8 @llvm.umax.i8(i8 %.1138.us.us, i8 %i.fh)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1138.us.us.1 = phi i8 [ %i.fm, %bb.ac ], [ %.1138.us.us, %bb.ab ] ; 3 uses
  %.1.us.us.1 = phi i8 [ %.1.us.us, %bb.ac ], [ %i.fl, %bb.ab ] ; 3 uses
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter19.next.1 = add i64 %niter19, 2           ; 2 uses
  %niter19.ncmp.1 = icmp eq i64 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %._crit_edge189.us.us.unr-lcssa, label %.lr.ph188.us.us.new, !llvm.loop !150

._crit_edge189.us.us.unr-lcssa:                   ; preds = %bb.ad
  br i1 %lcmp.mod14.not, label %._crit_edge189.us.us, label %.epil.preheader12

.epil.preheader12:                                ; preds = %._crit_edge189.us.us.unr-lcssa, %.lr.ph188.us.us
  %indvars.iv222.epil.init = phi i64 [ 0, %.lr.ph188.us.us ], [ %indvars.iv.next223.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  %.0186.us.us.epil.init = phi i8 [ -1, %.lr.ph188.us.us ], [ %.1.us.us.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  %.0137185.us.us.epil.init = phi i8 [ 0, %.lr.ph188.us.us ], [ %.1138.us.us.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod17)
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv222.epil.init
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !47
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.es
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !70  ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv222.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !24
  %i.fu = icmp eq i32 %i.ft, 1
  br i1 %i.fu, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader12
  %i.fv = call i8 @llvm.umin.i8(i8 %.0186.us.us.epil.init, i8 %i.fr)
  br label %._crit_edge189.us.us

bb.af:                                            ; preds = %.epil.preheader12
  %i.fw = call i8 @llvm.umax.i8(i8 %.0137185.us.us.epil.init, i8 %i.fr)
  br label %._crit_edge189.us.us

._crit_edge189.us.us:                             ; preds = %bb.ae, %bb.af, %._crit_edge189.us.us.unr-lcssa
  %.1138.us.us.lcssa = phi i8 [ %.1138.us.us.1, %._crit_edge189.us.us.unr-lcssa ], [ %i.fw, %bb.af ], [ %.0137185.us.us.epil.init, %bb.ae ]
  %.1.us.us.lcssa = phi i8 [ %.1.us.us.1, %._crit_edge189.us.us.unr-lcssa ], [ %.0186.us.us.epil.init, %bb.af ], [ %i.fv, %bb.ae ]
  %i.fx = call i8 @llvm.umin.i8(i8 %.1138.us.us.lcssa, i8 %.1.us.us.lcssa)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.es
  %i.fz = xor i8 %i.fx, -1
  store i8 %i.fz, ptr %i.fy, align 1, !tbaa !70
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %7
  br i1 %exitcond230.not, label %._crit_edge194.split.us.us.split, label %.lr.ph188.us.us, !llvm.loop !151

._crit_edge194.split.us.us.split:                 ; preds = %._crit_edge189.us.us
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count236
  br i1 %exitcond235.not, label %.thread165, label %.preheader169.us, !llvm.loop !152

.loopexit:                                        ; preds = %bb.e, %.preheader169.preheader, %._crit_edge182, %.preheader169.lr.ph, %bb.d
  %.not161 = icmp eq ptr %i.p, null
  br i1 %.not161, label %.thread, label %.thread165

.thread165:                                       ; preds = %get_contour_orientation.exit, %._crit_edge194.split.us.us.split.us.us, %._crit_edge194.split.us.us.split, %.loopexit
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef nonnull %i.p) #12
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %.thread165, %.loopexit
  %.not162 = icmp eq ptr %i.n, null
  br i1 %.not162, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.ga = icmp eq i32 %.0148.lcssa, 0
  br i1 %i.ga, label %bb.ah, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ag
  %smax245 = call i32 @llvm.smax.i32(i32 %.0148.lcssa, i32 1)
  %wide.trip.count246 = zext nneg i32 %smax245 to i64
  br label %.preheader

bb.ah:                                            ; preds = %bb.ag
  store i32 97, ptr %i.a, align 4, !tbaa !24
  br label %bb.aj

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv240 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next241, %.preheader ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv240
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !47
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef %i.gd) #12
  store ptr null, ptr %i.gc, align 8, !tbaa !47
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count246
  br i1 %exitcond244.not, label %bb.ai, label %.preheader, !llvm.loop !153

bb.ai:                                            ; preds = %.preheader
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.thread
  %i.ge = load i32, ptr %i.a, align 4, !tbaa !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %bb.aj
  %.0140 = phi i32 [ %i.ge, %bb.aj ], [ 6, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0140
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sdf_generate_subdivision(i64 range(i64 0, 281474976710656) %0, i32 range(i32 0, 2) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %6 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %9 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %10 = alloca %struct.FT_Vector_, align 8        ; 7 uses
  %11 = alloca %struct.FT_Vector_, align 8        ; 6 uses
  %12 = alloca %struct.FT_Vector_, align 8        ; 7 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %13 = alloca [3 x %struct.FT_Vector_], align 16 ; 7 uses
  %14 = alloca [4 x %struct.FT_Vector_], align 16 ; 7 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %split_sdf_shape.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !82     ; 7 uses
  %.not65.i = icmp eq ptr %i.e, null
  br i1 %.not65.i, label %split_sdf_shape.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  %.not66112.i = icmp eq ptr %i.g, null
  br i1 %.not66112.i, label %.loopexit, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph116.i
  %.046114.i = phi ptr [ null, %.lr.ph116.i ], [ %i.ar, %.loopexit.i ]
  %.048113.i = phi ptr [ %i.g, %.lr.ph116.i ], [ %i.ax, %.loopexit.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.048113.i, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !101
  %.not67107.i = icmp eq ptr %i.n, null
  br i1 %.not67107.i, label %._crit_edge111.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.d, %bb.i
  %.044108.i = phi ptr [ %i.aq, %bb.i ], [ %i.n, %bb.d ] ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.044108.i, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !99
  switch i32 %i.p, label %.thread95.i [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %i.q = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 80, ptr noundef nonnull %i.c) #12 ; 4 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %.not8.i.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i.i, label %.thread.i, label %sdf_edge_new.exit.i

sdf_edge_new.exit.i:                              ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread95.i

.thread.i:                                        ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %.044108.i, i64 72, i1 false)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr %i.s, ptr %i.t, align 8, !tbaa !100
  store ptr %i.q, ptr %i.d, align 8, !tbaa !101
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.044108.i, i64 16, i1 false), !tbaa.struct !91
  %i.u = getelementptr inbounds nuw i8, ptr %.044108.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !91
  %i.v = getelementptr inbounds nuw i8, ptr %.044108.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !91
  %i.w = load <2 x i64>, ptr %i.l, align 16, !tbaa !77
  %i.x = load <2 x i64>, ptr %13, align 16, !tbaa !77
  %i.y = add nsw <2 x i64> %i.x, %i.w
  %i.z = load <2 x i64>, ptr %i.k, align 16, !tbaa !77
  %i.aa = shl <2 x i64> %i.z, splat (i64 1)
  %i.ab = sub <2 x i64> %i.y, %i.aa
  %i.ac = call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.ab, i1 true)
  %i.ad = trunc <2 x i64> %i.ac to <2 x i32>      ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ad, i64 0
  %i.af = extractelement <2 x i32> %i.ad, i64 1
  %.042.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.af) ; 2 uses
  %i.ag = icmp sgt i32 %.042.i, 8
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.041106.i = phi i32 [ %i.ai, %.lr.ph.i ], [ 1, %bb.f ]
  %.143105.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %.042.i, %bb.f ] ; 2 uses
  %i.ah = lshr i32 %.143105.i, 2
  %i.ai = shl i32 %.041106.i, 1                   ; 2 uses
  %i.aj = icmp samesign ugt i32 %.143105.i, 35
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.041.lcssa.i = phi i32 [ 1, %bb.f ], [ %i.ai, %.lr.ph.i ]
  %i.ak = call fastcc i32 @split_sdf_conic(ptr noundef %i.e, ptr noundef %13, i32 noundef %.041.lcssa.i, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %.044108.i, i64 16, i1 false), !tbaa.struct !91
  %i.al = getelementptr inbounds nuw i8, ptr %.044108.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !91
  %i.am = getelementptr inbounds nuw i8, ptr %.044108.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !91
  %i.an = getelementptr inbounds nuw i8, ptr %.044108.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !91
  %i.ao = call fastcc i32 @split_sdf_cubic(ptr noundef %i.e, ptr noundef %14, i32 noundef 32, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.151.i = phi i32 [ %i.ao, %bb.g ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  %.not70.i = icmp eq i32 %.151.i, 0
  br i1 %.not70.i, label %bb.i, label %.thread95.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.044108.i, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !100 ; 2 uses
  %.not67.i = icmp eq ptr %i.aq, null
  br i1 %.not67.i, label %._crit_edge111.i, label %.lr.ph110.i, !llvm.loop !163

._crit_edge111.i:                                 ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.ar = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 32, ptr noundef nonnull %i.b) #12 ; 5 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %.not8.i72.i = icmp eq i32 %i.as, 0
  br i1 %.not8.i72.i, label %bb.j, label %sdf_contour_new.exit.i

sdf_contour_new.exit.i:                           ; preds = %._crit_edge111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread95.i

bb.j:                                             ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %.046114.i, ptr %i.at, align 8, !tbaa !95
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !97
  store ptr null, ptr %i.d, align 8, !tbaa !101
  %i.aw = getelementptr inbounds nuw i8, ptr %.048113.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !95 ; 2 uses
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !97  ; 2 uses
  %.not1617.i.i = icmp eq ptr %i.ay, null
  br i1 %.not1617.i.i, label %.loopexit.i, label %sdf_edge_done.exit.i.i

sdf_edge_done.exit.i.i:                           ; preds = %bb.j, %sdf_edge_done.exit.i.i
  %.018.i.i = phi ptr [ %i.ba, %sdf_edge_done.exit.i.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !100 ; 2 uses
  call void @ft_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %.018.i.i) #12
  %.not16.i.i = icmp eq ptr %i.ba, null
  br i1 %.not16.i.i, label %.loopexit.i, label %sdf_edge_done.exit.i.i, !llvm.loop !0

.thread95.i:                                      ; preds = %bb.h, %.lr.ph110.i, %sdf_contour_new.exit.i, %sdf_edge_new.exit.i
  %.3.ph.i = phi i32 [ %i.as, %sdf_contour_new.exit.i ], [ %i.r, %sdf_edge_new.exit.i ], [ %.151.i, %bb.h ], [ 6, %.lr.ph110.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %split_sdf_shape.exit.thread

.loopexit.i:                                      ; preds = %sdf_edge_done.exit.i.i, %bb.j
  call void @ft_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %.048113.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
end_hunk_0
