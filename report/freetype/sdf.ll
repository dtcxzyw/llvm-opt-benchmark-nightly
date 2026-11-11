Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sdf?download=true
inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@edt8:bb.a
  %i.fg = phi i32 [ %i.fc, %bb.af ], [ %i.fd, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.fh = icmp slt i32 %i.fg, 32769
  br i1 %i.fh, label %compare_neighbor.exit34.us.i21, label %bb.ag

bb.ag:                                            ; preds = %compare_neighbor.exit33.us.i28, %compare_neighbor.exit33.us.thread76.i
  %i.fi = phi i32 [ %i.et, %compare_neighbor.exit33.us.thread76.i ], [ %i.fg, %compare_neighbor.exit33.us.i28 ]
  %i.fj = getelementptr inbounds i8, ptr %gep79.i, i64 -32
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !90
  %i.fl = add nsw i32 %i.fk, -65536
  %i.fm = icmp slt i32 %i.fl, %i.fi
  br i1 %i.fm, label %bb.ah, label %compare_neighbor.exit34.us.i21

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds i8, ptr %gep79.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false), !tbaa.struct !91
  %i.fo = load i64, ptr %2, align 8, !tbaa !55
  %i.fp = add nsw i64 %i.fo, -65536
  store i64 %i.fp, ptr %2, align 8, !tbaa !55
  %i.fq = call i64 @FT_Vector_Length(ptr noundef nonnull %2) #12
  %i.fr = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fs = load i32, ptr %gep79.i, align 8, !tbaa !90
  %i.ft = icmp sgt i32 %i.fs, %i.fr
  br i1 %i.ft, label %bb.ai, label %compare_neighbor.exit34.us.i21

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.fr, ptr %gep79.i, align 8, !tbaa !90
  %i.fu = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !91
  br label %compare_neighbor.exit34.us.i21

compare_neighbor.exit34.us.i21:                   ; preds = %bb.ai, %bb.ah, %bb.ag, %compare_neighbor.exit33.us.i28, %compare_neighbor.exit33.us.thread.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %indvars.iv.next49.i22 = add nuw nsw i64 %indvars.iv48.i20, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next49.i22, %wide.trip.count.i18
  br i1 %exitcond.not.i23, label %.lr.ph39.us.i26, label %bb.w, !llvm.loop !140

.lr.ph39.us.i26:                                  ; preds = %compare_neighbor.exit34.us.i21, %compare_neighbor.exit35.us.i27
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %compare_neighbor.exit35.us.i27 ], [ %i.dl, %compare_neighbor.exit34.us.i21 ] ; 3 uses
  %gep81.i = getelementptr [32 x i8], ptr %invariant.gep78.i, i64 %indvars.iv51.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.fv = load i32, ptr %gep81.i, align 8, !tbaa !90 ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 32769
  br i1 %i.fw, label %compare_neighbor.exit35.us.i27, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph39.us.i26
  %i.fx = getelementptr inbounds nuw i8, ptr %gep81.i, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !90
  %i.fz = add nsw i32 %i.fy, -65536
  %i.ga = icmp slt i32 %i.fz, %i.fv
  br i1 %i.ga, label %bb.ak, label %compare_neighbor.exit35.us.i27

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %gep81.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !91
  %i.gc = load i64, ptr %1, align 8, !tbaa !55
  %i.gd = add nsw i64 %i.gc, 65536
  store i64 %i.gd, ptr %1, align 8, !tbaa !55
  %i.ge = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.gf = trunc i64 %i.ge to i32                  ; 2 uses
  %i.gg = load i32, ptr %gep81.i, align 8, !tbaa !90
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
  %2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select4.i, i32 128)
  %i.an = sub nsw i32 0, %2
  %.p.i = select i1 %i.ai, i32 %i.an, i32 %spec.store.select4.i
  %3 = trunc i32 %.p.i to i8
  %4 = xor i8 %3, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  store i8 %4, ptr %i.ao, align 1, !tbaa !70
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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !50   ; 2 uses
  %i.i = load i32, ptr %3, align 8, !tbaa !48     ; 2 uses
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
  %.0148.lcssa = phi i32 [ 0, %bb.c ], [ %i.j, %.lr.ph ] ; 7 uses
  %i.m = zext i32 %.0148.lcssa to i64             ; 8 uses
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
end_hunk_0
begin_hunk_1_@sdf_generate_subdivision:bb.a
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
  %.not66.i = icmp eq ptr %i.ax, null
  br i1 %.not66.i, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.loopexit.i, %bb.c
  %.046.lcssa.i = phi ptr [ null, %bb.c ], [ %i.ar, %.loopexit.i ]
  store ptr %.046.lcssa.i, ptr %i.f, align 8, !tbaa !92
  %.fr251.i = freeze i64 %0                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.bb = shl i32 %3, 16                          ; 6 uses
  %i.bc = icmp eq ptr %4, null
  %i.bd = add i32 %3, -33
  %or.cond3.i = icmp ult i32 %i.bd, -31
  %or.cond314.i = or i1 %i.bc, %or.cond3.i
  br i1 %or.cond314.i, label %.loopexit.sink.split.i, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.be = load ptr, ptr %2, align 8, !tbaa !82    ; 10 uses
  %.not.i10 = icmp eq ptr %i.be, null
  br i1 %.not.i10, label %.loopexit.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50 ; 2 uses
  %i.bi = udiv i32 2147483647, %i.bh
  %i.bj = icmp ugt i32 %i.bf, %i.bi
  br i1 %i.bj, label %.loopexit.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = mul i32 %i.bh, %i.bf
  %i.bl = zext i32 %i.bk to i64
  %i.bm = call ptr @ft_mem_realloc(ptr noundef nonnull %i.be, i64 noundef 12, i64 noundef 0, i64 noundef %i.bl, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 10 uses
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !24
  %.not164.i = icmp eq i32 %i.bn, 0
  br i1 %.not164.i, label %bb.n, label %sdf_generate_bounding_box.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !50 ; 5 uses
  %i.bp = load i32, ptr %4, align 8, !tbaa !48    ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47 ; 2 uses
  %i.bs = icmp eq i32 %i.bo, 0
  %i.bt = icmp eq i32 %i.bp, 0
  %or.cond5.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond5.i, label %.loopexit.sink.split.i, label %.preheader221.i

.preheader221.i:                                  ; preds = %bb.n
  %.0140238.i = load ptr, ptr %i.f, align 8, !tbaa !96 ; 2 uses
  %.not165239.i = icmp eq ptr %.0140238.i, null
  br i1 %.not165239.i, label %.preheader.i, label %.lr.ph241.i

.lr.ph241.i:                                      ; preds = %.preheader221.i
  %i.bu = zext nneg i32 %3 to i64                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i23.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cb = and i64 %.fr251.i, 4294967295
  %i.cc = icmp eq i64 %i.cb, 1
  %.not172.i = icmp samesign ult i64 %.fr251.i, 1099511627776
  %i.cd = sext i32 %i.bo to i64
  %i.ce = sext i32 %i.bp to i64
  br label %bb.q

.preheader.i:                                     ; preds = %._crit_edge.i13, %.preheader221.i
  %i.cf = icmp sgt i32 %i.bp, 0
  br i1 %i.cf, label %.lr.ph248.i, label %sdf_generate_bounding_box.exit

.lr.ph248.i:                                      ; preds = %.preheader.i
  %.not166.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %.not166.i, i8 -1, i8 1 ; 2 uses
  %i.cg = icmp sgt i32 %i.bo, 0
  %i.ch = zext nneg i32 %i.bb to i64              ; 2 uses
  br i1 %i.cg, label %.lr.ph248.split.i, label %sdf_generate_bounding_box.exit

.lr.ph248.split.i:                                ; preds = %.lr.ph248.i
  %i.ci = and i64 %.fr251.i, 1095216660480
  %.not167.i = icmp eq i64 %i.ci, 0
  %i.cj = zext nneg i32 %i.bo to i64              ; 4 uses
  %wide.trip.count279.i = zext nneg i32 %i.bp to i64 ; 2 uses
  br i1 %.not167.i, label %.lr.ph245.us.i, label %.lr.ph245.i

.lr.ph245.us.i:                                   ; preds = %.lr.ph248.split.i, %._crit_edge246.split.us.us.i
  %indvars.iv276.i = phi i64 [ %indvars.iv.next277.i, %._crit_edge246.split.us.us.i ], [ 0, %.lr.ph248.split.i ] ; 2 uses
  %i.ck = mul nuw nsw i64 %indvars.iv276.i, %i.cj
  br label %bb.o

bb.o:                                             ; preds = %.thread.i14, %.lr.ph245.us.i
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i, %.thread.i14 ], [ 0, %.lr.ph245.us.i ] ; 2 uses
  %.1243.us.us.i = phi i8 [ %.2.us.us304.i, %.thread.i14 ], [ %spec.select.i, %.lr.ph245.us.i ]
  %i.cl = add nuw nsw i64 %indvars.iv272.i, %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !174 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.thread.i14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.pre283.i = load i32, ptr %i.cm, align 4, !tbaa !175
  %spec.select312.i = call i32 @llvm.smin.i32(i32 %.pre283.i, i32 %i.bb)
  br label %.thread.i14

.thread.i14:                                      ; preds = %bb.p, %bb.o
  %.2.us.us304.i = phi i8 [ %.1243.us.us.i, %bb.o ], [ %i.co, %bb.p ] ; 2 uses
  %i.cq = phi i32 [ %i.bb, %bb.o ], [ %spec.select312.i, %bb.p ]
  %i.cr = sext i8 %.2.us.us304.i to i32
  %i.cs = mul nsw i32 %i.cq, %i.cr                ; 2 uses
  store i32 %i.cs, ptr %i.cm, align 4, !tbaa !175
  %i.ct = sext i32 %i.cs to i64
  %i.cu = call i64 @FT_DivFix(i64 noundef %i.ct, i64 noundef %i.ch) #12
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  %i.cx = call i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.cy = lshr i32 %i.cx, 9
  %i.cz = icmp sgt i32 %i.cv, 0
  %i.da = icmp samesign ugt i32 %i.cx, 65535
  %or.cond.i.us.us.i = select i1 %i.cz, i1 %i.da, i1 false
  %spec.store.select4.i.us.us.i = select i1 %or.cond.i.us.us.i, i32 127, i32 %i.cy ; 2 uses
  %15 = call i32 @llvm.umin.i32(i32 %spec.store.select4.i.us.us.i, i32 128)
  %i.db = sub nsw i32 0, %15
  %.p.i.us.us.i = select i1 %i.cw, i32 %i.db, i32 %spec.store.select4.i.us.us.i
  %16 = trunc i32 %.p.i.us.us.i to i8
  %17 = xor i8 %16, -128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cl
  store i8 %17, ptr %i.dc, align 1, !tbaa !70
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %exitcond275.not.i = icmp eq i64 %indvars.iv.next273.i, %i.cj
  br i1 %exitcond275.not.i, label %._crit_edge246.split.us.us.i, label %bb.o, !llvm.loop !164

._crit_edge246.split.us.us.i:                     ; preds = %.thread.i14
  %indvars.iv.next277.i = add nuw nsw i64 %indvars.iv276.i, 1 ; 2 uses
  %exitcond280.not.i = icmp eq i64 %indvars.iv.next277.i, %wide.trip.count279.i
  br i1 %exitcond280.not.i, label %sdf_generate_bounding_box.exit, label %.lr.ph245.us.i, !llvm.loop !165

bb.q:                                             ; preds = %._crit_edge.i13, %.lr.ph241.i
  %.0140240.i = phi ptr [ %.0140238.i, %.lr.ph241.i ], [ %.0140.i, %._crit_edge.i13 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0140240.i, i64 16
  %.0148234.i = load ptr, ptr %i.dd, align 8, !tbaa !101 ; 2 uses
  %.not168235.i = icmp eq ptr %.0148234.i, null
  br i1 %.not168235.i, label %._crit_edge.i13, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.q, %._crit_edge228.i
  %.0148236.i = phi ptr [ %.0148.i, %._crit_edge228.i ], [ %.0148234.i, %bb.q ] ; 13 uses
  %.0148175.sroa.0.0.copyload.i = load i64, ptr %.0148236.i, align 8 ; 4 uses
  %.0148175.sroa.5.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 8 ; 4 uses
  %.0148175.sroa.5.0.copyload.i = load i64, ptr %.0148175.sroa.5.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.7.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 16 ; 4 uses
  %.0148175.sroa.7.0.copyload.i = load i64, ptr %.0148175.sroa.7.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.8.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 24 ; 4 uses
  %.0148175.sroa.8.0.copyload.i = load i64, ptr %.0148175.sroa.8.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.9.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 32 ; 3 uses
  %.0148175.sroa.9.0.copyload.i = load i64, ptr %.0148175.sroa.9.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.11.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 40 ; 3 uses
  %.0148175.sroa.11.0.copyload.i = load i64, ptr %.0148175.sroa.11.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.13.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 48 ; 2 uses
  %.0148175.sroa.14.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 56 ; 2 uses
  %.0148175.sroa.15.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 64 ; 2 uses
  %.0148175.sroa.15.0.copyload.i = load i32, ptr %.0148175.sroa.15.0..0148.sroa_idx.i, align 8
  switch i32 %.0148175.sroa.15.0.copyload.i, label %get_control_box.exit.i [
    i32 3, label %.critedge.i.i
    i32 2, label %.critedge4.i.i
    i32 1, label %bb.r
  ]

.critedge.i.i:                                    ; preds = %.lr.ph.i12
  %.0148175.sroa.14.0.copyload.i = load i64, ptr %.0148175.sroa.14.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.13.0.copyload.i = load i64, ptr %.0148175.sroa.13.0..0148.sroa_idx.i, align 8 ; 2 uses
  %i.de = call i64 @llvm.smin.i64(i64 %.0148175.sroa.9.0.copyload.i, i64 %.0148175.sroa.13.0.copyload.i)
  %i.df = call i64 @llvm.smax.i64(i64 %.0148175.sroa.9.0.copyload.i, i64 %.0148175.sroa.13.0.copyload.i)
  %i.dg = call i64 @llvm.smin.i64(i64 %.0148175.sroa.11.0.copyload.i, i64 %.0148175.sroa.14.0.copyload.i)
  %i.dh = call i64 @llvm.smax.i64(i64 %.0148175.sroa.11.0.copyload.i, i64 %.0148175.sroa.14.0.copyload.i)
  br label %.critedge4.i.i

.critedge4.i.i:                                   ; preds = %.critedge.i.i, %.lr.ph.i12
  %i.di = phi i64 [ %i.dh, %.critedge.i.i ], [ %.0148175.sroa.11.0.copyload.i, %.lr.ph.i12 ]
  %i.dj = phi i64 [ %i.dg, %.critedge.i.i ], [ %.0148175.sroa.11.0.copyload.i, %.lr.ph.i12 ]
  %i.dk = phi i64 [ %i.df, %.critedge.i.i ], [ %.0148175.sroa.9.0.copyload.i, %.lr.ph.i12 ]
  %i.dl = phi i64 [ %i.de, %.critedge.i.i ], [ %.0148175.sroa.9.0.copyload.i, %.lr.ph.i12 ]
  %i.dm = call i64 @llvm.smin.i64(i64 %.0148175.sroa.0.0.copyload.i, i64 %i.dl)
  %i.dn = call i64 @llvm.smax.i64(i64 %.0148175.sroa.0.0.copyload.i, i64 %i.dk)
  %i.do = call i64 @llvm.smin.i64(i64 %.0148175.sroa.5.0.copyload.i, i64 %i.dj)
  %i.dp = call i64 @llvm.smax.i64(i64 %.0148175.sroa.5.0.copyload.i, i64 %i.di)
  br label %bb.r

bb.r:                                             ; preds = %.critedge4.i.i, %.lr.ph.i12
  %i.dq = phi i64 [ %i.dp, %.critedge4.i.i ], [ %.0148175.sroa.5.0.copyload.i, %.lr.ph.i12 ]
  %i.dr = phi i64 [ %i.do, %.critedge4.i.i ], [ %.0148175.sroa.5.0.copyload.i, %.lr.ph.i12 ]
  %i.ds = phi i64 [ %i.dn, %.critedge4.i.i ], [ %.0148175.sroa.0.0.copyload.i, %.lr.ph.i12 ]
  %i.dt = phi i64 [ %i.dm, %.critedge4.i.i ], [ %.0148175.sroa.0.0.copyload.i, %.lr.ph.i12 ]
  %i.du = call i64 @llvm.smin.i64(i64 %.0148175.sroa.7.0.copyload.i, i64 %i.dt)
  %i.dv = call i64 @llvm.smax.i64(i64 %.0148175.sroa.7.0.copyload.i, i64 %i.ds)
  %i.dw = call i64 @llvm.smin.i64(i64 %.0148175.sroa.8.0.copyload.i, i64 %i.dr)
  %i.dx = call i64 @llvm.smax.i64(i64 %.0148175.sroa.8.0.copyload.i, i64 %i.dq)
  %i.dy = add nsw i64 %i.du, -63
  %i.dz = sdiv i64 %i.dy, 64
  %i.ea = add nsw i64 %i.dv, 63
  %i.eb = sdiv i64 %i.ea, 64
  %i.ec = add nsw i64 %i.dw, -63
  %i.ed = sdiv i64 %i.ec, 64
  %i.ee = add nsw i64 %i.dx, 63
  %i.ef = sdiv i64 %i.ee, 64
  %i.eg = trunc i64 %i.ed to i32
  %i.eh = trunc i64 %i.dz to i32
  br label %get_control_box.exit.i

get_control_box.exit.i:                           ; preds = %bb.r, %.lr.ph.i12
  %.sroa.0.0.i = phi i32 [ 0, %.lr.ph.i12 ], [ %i.eh, %bb.r ]
  %.sroa.7.0.i = phi i32 [ 0, %.lr.ph.i12 ], [ %i.eg, %bb.r ]
  %.sroa.9.0.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.eb, %bb.r ]
  %.sroa.11.0.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.ef, %bb.r ]
  %i.ei = add nsw i64 %.sroa.9.0.i, %i.bu         ; 2 uses
  %i.ej = add nsw i64 %.sroa.11.0.i, %i.bu        ; 2 uses
  %i.ek = sub i32 %.sroa.7.0.i, %3
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %i.em = icmp sgt i64 %i.ej, %i.el
  br i1 %i.em, label %.lr.ph227.i, label %._crit_edge228.i

.lr.ph227.i:                                      ; preds = %get_control_box.exit.i
  %i.en = sub i32 %.sroa.0.0.i, %3
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp sgt i64 %i.ei, %i.eo
  br i1 %i.ep, label %.lr.ph.us.i, label %._crit_edge228.i

.lr.ph.us.i:                                      ; preds = %.lr.ph227.i, %._crit_edge.us.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %._crit_edge.us.i ], [ %i.el, %.lr.ph227.i ] ; 5 uses
  %i.eq = icmp sgt i64 %indvars.iv262.i, -1
  %.not170.us.i = icmp slt i64 %indvars.iv262.i, %i.ce
  %or.cond174.us.i = select i1 %i.eq, i1 %.not170.us.i, i1 false
  %i.er = shl nuw nsw i64 %indvars.iv262.i, 6
  %i.es = or disjoint i64 %i.er, 32               ; 5 uses
  %i.et = shl nuw nsw i64 %i.es, 10               ; 2 uses
  %or.cond174.fr.us.i = freeze i1 %or.cond174.us.i
  br i1 %or.cond174.fr.us.i, label %.lr.ph.split.us.us.preheader.i, label %._crit_edge.us.i

.lr.ph.split.us.us.preheader.i:                   ; preds = %.lr.ph.us.i
  %i.eu = trunc nsw i64 %indvars.iv262.i to i32   ; 2 uses
  %i.ev = xor i32 %i.eu, -1
  %i.ew = add i32 %i.bp, %i.ev
  %.0146.pn.us.i = select i1 %.not172.i, i32 %i.ew, i32 %i.eu
  %.pn.us.i = mul nsw i32 %.0146.pn.us.i, %i.bo
  br label %.lr.ph.split.us.us.i

.lr.ph.split.us.us.i:                             ; preds = %bb.as, %.lr.ph.split.us.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.eo, %.lr.ph.split.us.us.preheader.i ], [ %indvars.iv.next.i, %bb.as ] ; 5 uses
  %i.ex = icmp sgt i64 %indvars.iv.i, -1
  %.not169.us.us.i = icmp slt i64 %indvars.iv.i, %i.cd
  %or.cond173.us.us.i = and i1 %i.ex, %.not169.us.us.i
  br i1 %or.cond173.us.us.i, label %bb.s, label %bb.as

bb.s:                                             ; preds = %.lr.ph.split.us.us.i
  %i.ey = shl nuw nsw i64 %indvars.iv.i, 6
  %i.ez = or disjoint i64 %i.ey, 32               ; 6 uses
  %i.fa = load i32, ptr %.0148175.sroa.15.0..0148.sroa_idx.i, align 8, !tbaa !99
  switch i32 %i.fa, label %.loopexit.sink.split.i [
    i32 1, label %bb.aj
    i32 2, label %bb.ab
    i32 3, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.069.0.copyload.i.i.us.us.i = load i64, ptr %.0148236.i, align 8, !tbaa !77 ; 4 uses
  %.sroa.773.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.5.0..0148.sroa_idx.i, align 8, !tbaa !77 ; 4 uses
  %.sroa.063.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.9.0..0148.sroa_idx.i, align 8, !tbaa !77 ; 3 uses
  %.sroa.666.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.11.0..0148.sroa_idx.i, align 8, !tbaa !77 ; 3 uses
  %.sroa.060.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.13.0..0148.sroa_idx.i, align 8, !tbaa !77 ; 2 uses
  %.sroa.5.0.copyload.i22.i.us.us.i = load i64, ptr %.0148175.sroa.14.0..0148.sroa_idx.i, align 8, !tbaa !77 ; 2 uses
  %.sroa.058.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.7.0..0148.sroa_idx.i, align 8, !tbaa !77
  %.sroa.459.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.8.0..0148.sroa_idx.i, align 8, !tbaa !77
  %i.fb = sub nsw i64 %.sroa.063.0.copyload.i.i.us.us.i, %.sroa.060.0.copyload.i.i.us.us.i
  %i.fc = mul nsw i64 %i.fb, 3
  %i.fd = sub nsw i64 %i.fc, %.sroa.069.0.copyload.i.i.us.us.i
  %i.fe = add nsw i64 %i.fd, %.sroa.058.0.copyload.i.i.us.us.i ; 4 uses
  %i.ff = sub nsw i64 %.sroa.666.0.copyload.i.i.us.us.i, %.sroa.5.0.copyload.i22.i.us.us.i
  %i.fg = mul nsw i64 %i.ff, 3
  %i.fh = sub nsw i64 %i.fg, %.sroa.773.0.copyload.i.i.us.us.i
  %i.fi = add nsw i64 %i.fh, %.sroa.459.0.copyload.i.i.us.us.i ; 4 uses
  %i.fj = shl nsw i64 %.sroa.063.0.copyload.i.i.us.us.i, 1
  %i.fk = sub nsw i64 %.sroa.069.0.copyload.i.i.us.us.i, %i.fj
  %i.fl = add nsw i64 %i.fk, %.sroa.060.0.copyload.i.i.us.us.i ; 2 uses
  %i.fm = mul nsw i64 %i.fl, 3                    ; 3 uses
  %i.fn = shl nsw i64 %.sroa.666.0.copyload.i.i.us.us.i, 1
  %i.fo = sub nsw i64 %.sroa.773.0.copyload.i.i.us.us.i, %i.fn
  %i.fp = add nsw i64 %i.fo, %.sroa.5.0.copyload.i22.i.us.us.i ; 2 uses
  %i.fq = mul nsw i64 %i.fp, 3                    ; 3 uses
  %i.fr = sub nsw i64 %.sroa.063.0.copyload.i.i.us.us.i, %.sroa.069.0.copyload.i.i.us.us.i
  %i.fs = mul nsw i64 %i.fr, 3                    ; 3 uses
  %i.ft = sub nsw i64 %.sroa.666.0.copyload.i.i.us.us.i, %.sroa.773.0.copyload.i.i.us.us.i
  %i.fu = mul nsw i64 %i.ft, 3                    ; 3 uses
  %i.fv = mul nsw i64 %i.fl, 6
  %i.fw = mul nsw i64 %i.fp, 6
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  %i.fx = phi i64 [ 0, %bb.t ], [ %i.ie, %bb.y ]
  %i.fy = phi i64 [ 0, %bb.t ], [ %i.if, %bb.y ]
  %indvars.iv.i24.i.us.us.i = phi i32 [ 0, %bb.t ], [ %indvars.iv.next.i28.i.us.us.i, %bb.y ] ; 2 uses
  %.0115139.i.i.us.us.i = phi i32 [ 2147483647, %bb.t ], [ %.2.i25.i.us.us.i, %bb.y ]
  %.0116138.i.i.us.us.i = phi i32 [ 0, %bb.t ], [ %.2118.i.i.us.us.i, %bb.y ]
  %.0120137.i.i.us.us.i = phi i32 [ 0, %bb.t ], [ %.2122.i.i.us.us.i, %bb.y ]
  %i.fz = shl nuw nsw i32 %indvars.iv.i24.i.us.us.i, 14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %i.ga = phi i64 [ %i.fx, %bb.u ], [ %i.ie, %bb.x ]
  %i.gb = phi i64 [ %i.fy, %bb.u ], [ %i.if, %bb.x ]
  %.0136.i.i.us.us.i = phi i32 [ %i.fz, %bb.u ], [ %i.kv, %bb.x ] ; 5 uses
  %.0113135.i.i.us.us.i = phi i16 [ 0, %bb.u ], [ %i.kw, %bb.x ] ; 2 uses
  %.1134.i.i.us.us.i = phi i32 [ %.0115139.i.i.us.us.i, %bb.u ], [ %.2.i25.i.us.us.i, %bb.x ] ; 2 uses
  %.1117133.i.i.us.us.i = phi i32 [ %.0116138.i.i.us.us.i, %bb.u ], [ %.2118.i.i.us.us.i, %bb.x ]
  %.1121132.i.i.us.us.i = phi i32 [ %.0120137.i.i.us.us.i, %bb.u ], [ %.2122.i.i.us.us.i, %bb.x ]
  %i.gc = zext nneg i32 %.0136.i.i.us.us.i to i64 ; 5 uses
  %i.gd = mul nuw nsw i64 %i.gc, %i.gc
  %i.ge = add nuw nsw i64 %i.gd, 32768
  %i.gf = lshr i64 %i.ge, 16                      ; 5 uses
  %i.gg = shl nuw nsw i64 %i.gc, 16
  %i.gh = mul i64 %i.gg, %i.gf
  %i.gi = add i64 %i.gh, 2147483648
  %i.gj = lshr i64 %i.gi, 32                      ; 2 uses
  %i.gk = mul i64 %i.gj, %i.fe                    ; 2 uses
  %i.gl = ashr i64 %i.gk, 63
  %i.gm = add i64 %i.gk, 32768
  %i.gn = add i64 %i.gm, %i.gl
end_hunk_1
begin_hunk_2_@sdf_generate_subdivision:bb.a
  %i.tq = add nsw i64 %i.tp, %i.tn
  %i.tr = shl i64 %i.tq, 32
  %i.ts = ashr exact i64 %i.tr, 32
  %i.tt = shl i64 %i.tl, 32
  %i.tu = ashr exact i64 %i.tt, 32
  %i.tv = call i64 @FT_DivFix(i64 noundef %i.ts, i64 noundef %i.tu) #12
  %i.tw = trunc i64 %i.tv to i32                  ; 2 uses
  %i.tx = call i32 @llvm.smax.i32(i32 %i.tw, i32 0)
  %i.ty = call i32 @llvm.umin.i32(i32 %i.tx, i32 65536)
  %i.tz = shl nsw i64 %i.td, 10
  %i.ua = zext nneg i32 %i.ty to i64              ; 2 uses
  %i.ub = mul i64 %i.tz, %i.ua                    ; 2 uses
  %i.uc = ashr i64 %i.ub, 63
  %i.ud = add i64 %i.ub, 32768
  %i.ue = add i64 %i.ud, %i.uc
  %i.uf = ashr i64 %i.ue, 16
  %i.ug = shl nsw i64 %i.te, 10
  %i.uh = mul i64 %i.ug, %i.ua                    ; 2 uses
  %i.ui = ashr i64 %i.uh, 63
  %i.uj = add i64 %i.uh, 32768
  %i.uk = add i64 %i.uj, %i.ui
  %i.ul = ashr i64 %i.uk, 16
  %i.um = sub i64 %.sroa.021.0.copyload.i.i.us.us.i, %i.ez
  %i.un = shl i64 %i.um, 10
  %i.uo = add i64 %i.uf, %i.un                    ; 2 uses
  store i64 %i.uo, ptr %12, align 8, !tbaa !55
  %i.up = sub i64 %.sroa.624.0.copyload.i.i.us.us.i, %i.es
  %i.uq = shl i64 %i.up, 10
  %i.ur = add i64 %i.ul, %i.uq                    ; 2 uses
  store i64 %i.ur, ptr %i.ca, align 8, !tbaa !56
  %i.us = mul i64 %i.uo, %i.te                    ; 2 uses
  %i.ut = ashr i64 %i.us, 63
  %i.uu = add i64 %i.us, 32768
  %i.uv = add i64 %i.uu, %i.ut
  %i.uw = lshr i64 %i.uv, 16
  %i.ux = mul i64 %i.ur, %i.td                    ; 2 uses
  %i.uy = ashr i64 %i.ux, 63
  %i.uz = add i64 %i.ux, 32768
  %i.va = add i64 %i.uz, %i.uy
  %i.vb = lshr i64 %i.va, 16
  %i.vc = sub nsw i64 %i.uw, %i.vb
  %i.vd = and i64 %i.vc, 2147483648
  %.not39.i.i.us.us.i = icmp eq i64 %i.vd, 0
  %i.ve = select i1 %.not39.i.i.us.us.i, i8 -1, i8 1
  %i.vf = call i64 @FT_Vector_Length(ptr noundef nonnull %12) #12
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = add i32 %i.tw, -1
  %or.cond3.i.i.us.us.i = icmp ult i32 %i.vh, 65535
  br i1 %or.cond3.i.i.us.us.i, label %get_min_distance_line.exit.i.us.us.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.vi = call i32 @FT_Vector_NormLen(ptr noundef nonnull %11) #12 ; 0 uses
  %i.vj = call i32 @FT_Vector_NormLen(ptr noundef nonnull %12) #12 ; 0 uses
  %i.vk = load i64, ptr %11, align 8, !tbaa !55
  %i.vl = load i64, ptr %i.ca, align 8, !tbaa !56
  %i.vm = mul i64 %i.vl, %i.vk                    ; 2 uses
  %i.vn = ashr i64 %i.vm, 63
  %i.vo = add i64 %i.vm, 32768
  %i.vp = add i64 %i.vo, %i.vn
  %i.vq = lshr i64 %i.vp, 16
  %i.vr = load i64, ptr %i.bz, align 8, !tbaa !56
  %i.vs = load i64, ptr %12, align 8, !tbaa !55
  %i.vt = mul i64 %i.vs, %i.vr                    ; 2 uses
  %i.vu = ashr i64 %i.vt, 63
  %i.vv = add i64 %i.vt, 32768
  %i.vw = add i64 %i.vv, %i.vu
  %i.vx = lshr i64 %i.vw, 16
  %i.vy = sub nsw i64 %i.vq, %i.vx
  %i.vz = trunc i64 %i.vy to i32
  br label %get_min_distance_line.exit.i.us.us.i

get_min_distance_line.exit.i.us.us.i:             ; preds = %bb.ak, %bb.aj
  %.sink.i.i.us.us.i = phi i32 [ %i.vz, %bb.ak ], [ 65536, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.al

bb.al:                                            ; preds = %get_min_distance_line.exit.i.us.us.i, %get_min_distance_conic.exit.i.us.us.i, %get_min_distance_cubic.exit.i.us.us.i
  %.sroa.0.sroa.12.0.ph.us.us.i = phi i32 [ %.sink.i32.i.us.us.i, %get_min_distance_cubic.exit.i.us.us.i ], [ %.sink.i19.i.us.us.i, %get_min_distance_conic.exit.i.us.us.i ], [ %.sink.i.i.us.us.i, %get_min_distance_line.exit.i.us.us.i ] ; 4 uses
  %.sroa.0.sroa.0.0.ph.us.us.i = phi i32 [ %.2.i25.i.us.us.i, %get_min_distance_cubic.exit.i.us.us.i ], [ %.2.i.i.us.us.i, %get_min_distance_conic.exit.i.us.us.i ], [ %i.vg, %get_min_distance_line.exit.i.us.us.i ] ; 6 uses
  %.sroa.15.1.ph.us.us.i = phi i8 [ %i.mp, %get_min_distance_cubic.exit.i.us.us.i ], [ %i.sj, %get_min_distance_conic.exit.i.us.us.i ], [ %i.ve, %get_min_distance_line.exit.i.us.us.i ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.wa = sub nsw i8 0, %.sroa.15.1.ph.us.us.i
  %spec.select220.us.us.i = select i1 %i.cc, i8 %i.wa, i8 %.sroa.15.1.ph.us.us.i ; 3 uses
  %i.wb = icmp sgt i32 %.sroa.0.sroa.0.0.ph.us.us.i, %i.bb
  br i1 %i.wb, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.wc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.wd = add i32 %.pn.us.i, %i.wc
  %i.we = zext i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.we ; 8 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8 ; 4 uses
  %i.wh = load i8, ptr %i.wg, align 4, !tbaa !174 ; 2 uses
  %i.wi = icmp eq i8 %i.wh, 0
  br i1 %i.wi, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.wj = load i32, ptr %i.wf, align 4, !tbaa !175 ; 2 uses
  %reass.sub = sub i32 %i.wj, %.sroa.0.sroa.0.0.ph.us.us.i
  %i.wk = add i32 %reass.sub, 32
  %i.wl = icmp ult i32 %i.wk, 65
  br i1 %i.wl, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.wm = icmp sgt i32 %i.wj, %.sroa.0.sroa.0.0.ph.us.us.i
  br i1 %i.wm, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.sroa.0.sroa.12.0.insert.ext196.us.us.i = zext i32 %.sroa.0.sroa.12.0.ph.us.us.i to i64
  %.sroa.0.sroa.12.0.insert.shift197.us.us.i = shl nuw i64 %.sroa.0.sroa.12.0.insert.ext196.us.us.i, 32
  %.sroa.0.sroa.0.0.insert.ext189.us.us.i = zext i32 %.sroa.0.sroa.0.0.ph.us.us.i to i64
  %.sroa.0.sroa.0.0.insert.insert191.us.us.i = or disjoint i64 %.sroa.0.sroa.12.0.insert.shift197.us.us.i, %.sroa.0.sroa.0.0.insert.ext189.us.us.i
  store i64 %.sroa.0.sroa.0.0.insert.insert191.us.us.i, ptr %i.wf, align 4, !tbaa !24
  store i8 %spec.select220.us.us.i, ptr %i.wg, align 4, !tbaa !70
  %.sroa.21.0..sroa_idx185.us.us.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21.0..sroa_idx185.us.us.i, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @__const.sdf_generate_bounding_box.dist, i64 9), i64 3, i1 false), !tbaa.struct !176
  br label %bb.as

bb.aq:                                            ; preds = %bb.an
  %.sroa.018.0.copyload.us.us.i = load i64, ptr %i.wf, align 4 ; 2 uses
  %.sroa.0.sroa.12.0.insert.ext.us.us.i = zext i32 %.sroa.0.sroa.12.0.ph.us.us.i to i64
  %.sroa.0.sroa.12.0.insert.shift.us.us.i = shl nuw i64 %.sroa.0.sroa.12.0.insert.ext.us.us.i, 32
  %.sroa.0.sroa.0.0.insert.ext.us.us.i = zext i32 %.sroa.0.sroa.0.0.ph.us.us.i to i64
  %.sroa.0.sroa.0.0.insert.insert.us.us.i = or disjoint i64 %.sroa.0.sroa.12.0.insert.shift.us.us.i, %.sroa.0.sroa.0.0.insert.ext.us.us.i
  %.sroa.012.sroa.2.0.extract.shift.i.us.us.i = lshr i64 %.sroa.018.0.copyload.us.us.i, 32
  %.sroa.012.sroa.2.0.extract.trunc.i.us.us.i = trunc nuw i64 %.sroa.012.sroa.2.0.extract.shift.i.us.us.i to i32
  %i.wn = call i32 @llvm.abs.i32(i32 %.sroa.012.sroa.2.0.extract.trunc.i.us.us.i, i1 true)
  %i.wo = call i32 @llvm.abs.i32(i32 %.sroa.0.sroa.12.0.ph.us.us.i, i1 true)
  %i.wp = icmp samesign ugt i32 %i.wn, %i.wo      ; 2 uses
  %..i.us.us.i = select i1 %i.wp, i64 %.sroa.018.0.copyload.us.us.i, i64 %.sroa.0.sroa.0.0.insert.insert.us.us.i
  %.22.i.us.us.i = select i1 %i.wp, i8 %i.wh, i8 %spec.select220.us.us.i
  store i64 %..i.us.us.i, ptr %i.wf, align 4, !tbaa !24
  store i8 %.22.i.us.us.i, ptr %i.wg, align 4, !tbaa !70
  br label %bb.as

bb.ar:                                            ; preds = %bb.am
  %.sroa.0.sroa.12.0.insert.ext192.us.us.i = zext i32 %.sroa.0.sroa.12.0.ph.us.us.i to i64
  %.sroa.0.sroa.12.0.insert.shift193.us.us.i = shl nuw i64 %.sroa.0.sroa.12.0.insert.ext192.us.us.i, 32
  %.sroa.0.sroa.0.0.insert.ext186.us.us.i = zext i32 %.sroa.0.sroa.0.0.ph.us.us.i to i64
  %.sroa.0.sroa.0.0.insert.insert188.us.us.i = or disjoint i64 %.sroa.0.sroa.12.0.insert.shift193.us.us.i, %.sroa.0.sroa.0.0.insert.ext186.us.us.i
  store i64 %.sroa.0.sroa.0.0.insert.insert188.us.us.i, ptr %i.wf, align 4, !tbaa !24
  store i8 %spec.select220.us.us.i, ptr %i.wg, align 4, !tbaa !70
  %.sroa.21.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21.0..sroa_idx.us.us.i, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @__const.sdf_generate_bounding_box.dist, i64 9), i64 3, i1 false), !tbaa.struct !176
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.al, %.lr.ph.split.us.us.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.ei
  br i1 %exitcond.not, label %._crit_edge.us.i, label %.lr.ph.split.us.us.i, !llvm.loop !170

._crit_edge.us.i:                                 ; preds = %bb.as, %.lr.ph.us.i
  %indvars.iv.next263.i = add nsw i64 %indvars.iv262.i, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next263.i, %i.ej
  br i1 %exitcond39.not, label %._crit_edge228.i, label %.lr.ph.us.i, !llvm.loop !171

._crit_edge228.i:                                 ; preds = %._crit_edge.us.i, %.lr.ph227.i, %get_control_box.exit.i
  %i.wq = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 72
  %.0148.i = load ptr, ptr %i.wq, align 8, !tbaa !101 ; 2 uses
  %.not168.i = icmp eq ptr %.0148.i, null
  br i1 %.not168.i, label %._crit_edge.i13, label %.lr.ph.i12, !llvm.loop !172

._crit_edge.i13:                                  ; preds = %._crit_edge228.i, %bb.q
  %i.wr = getelementptr inbounds nuw i8, ptr %.0140240.i, i64 24
  %.0140.i = load ptr, ptr %i.wr, align 8, !tbaa !96 ; 2 uses
  %.not165.i = icmp eq ptr %.0140.i, null
  br i1 %.not165.i, label %.preheader.i, label %bb.q

.lr.ph245.i:                                      ; preds = %.lr.ph248.split.i, %._crit_edge246.split.i
  %indvars.iv267.i = phi i64 [ %indvars.iv.next268.i, %._crit_edge246.split.i ], [ 0, %.lr.ph248.split.i ] ; 2 uses
  %i.ws = mul nuw nsw i64 %indvars.iv267.i, %i.cj
  br label %bb.at

bb.at:                                            ; preds = %.thread305.i, %.lr.ph245.i
  %indvars.iv265.i = phi i64 [ 0, %.lr.ph245.i ], [ %indvars.iv.next266.i, %.thread305.i ] ; 2 uses
  %.1243.i = phi i8 [ %spec.select.i, %.lr.ph245.i ], [ %.2307.i, %.thread305.i ]
  %i.wt = add nuw nsw i64 %indvars.iv265.i, %i.ws ; 2 uses
  %i.wu = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.wt ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.ww = load i8, ptr %i.wv, align 4, !tbaa !174 ; 2 uses
  %i.wx = icmp eq i8 %i.ww, 0
  br i1 %i.wx, label %.thread305.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.pre.i = load i32, ptr %i.wu, align 4, !tbaa !175
  %spec.select313.i = call i32 @llvm.smin.i32(i32 %.pre.i, i32 %i.bb)
  br label %.thread305.i

.thread305.i:                                     ; preds = %bb.au, %bb.at
  %.2307.i = phi i8 [ %.1243.i, %bb.at ], [ %i.ww, %bb.au ] ; 2 uses
  %i.wy = phi i32 [ %i.bb, %bb.at ], [ %spec.select313.i, %bb.au ]
  %i.wz = sext i8 %.2307.i to i32
  %i.xa = mul i32 %i.wy, %i.wz
  %i.xb = sub i32 0, %i.xa                        ; 2 uses
  store i32 %i.xb, ptr %i.wu, align 4, !tbaa !175
  %i.xc = sext i32 %i.xb to i64
  %i.xd = call i64 @FT_DivFix(i64 noundef %i.xc, i64 noundef %i.ch) #12
  %i.xe = trunc i64 %i.xd to i32                  ; 3 uses
  %i.xf = icmp slt i32 %i.xe, 0
  %i.xg = call i32 @llvm.abs.i32(i32 %i.xe, i1 true) ; 2 uses
  %i.xh = lshr i32 %i.xg, 9
  %i.xi = icmp sgt i32 %i.xe, 0
  %i.xj = icmp samesign ugt i32 %i.xg, 65535
  %or.cond.i.i = select i1 %i.xi, i1 %i.xj, i1 false
  %spec.store.select4.i.i = select i1 %or.cond.i.i, i32 127, i32 %i.xh ; 2 uses
  %18 = call i32 @llvm.umin.i32(i32 %spec.store.select4.i.i, i32 128)
  %i.xk = sub nsw i32 0, %18
  %.p.i.i = select i1 %i.xf, i32 %i.xk, i32 %spec.store.select4.i.i
  %19 = trunc i32 %.p.i.i to i8
  %20 = xor i8 %19, -128
  %i.xl = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.wt
  store i8 %20, ptr %i.xl, align 1, !tbaa !70
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next266.i, %i.cj
  br i1 %exitcond.not.i, label %._crit_edge246.split.i, label %bb.at, !llvm.loop !164

._crit_edge246.split.i:                           ; preds = %.thread305.i
  %indvars.iv.next268.i = add nuw nsw i64 %indvars.iv267.i, 1 ; 2 uses
  %exitcond271.not.i = icmp eq i64 %indvars.iv.next268.i, %wide.trip.count279.i
  br i1 %exitcond271.not.i, label %sdf_generate_bounding_box.exit, label %.lr.ph245.i, !llvm.loop !165

.loopexit.sink.split.i:                           ; preds = %bb.s, %bb.n, %bb.l, %bb.k, %.loopexit
  %.sink.i = phi i32 [ 10, %bb.l ], [ 6, %bb.k ], [ 19, %bb.n ], [ 6, %.loopexit ], [ 6, %bb.s ]
  %.0150.ph.i = phi ptr [ null, %bb.l ], [ null, %bb.k ], [ %i.bm, %bb.n ], [ null, %.loopexit ], [ %i.bm, %bb.s ]
  %.0137.ph.i = phi ptr [ %i.be, %bb.l ], [ null, %bb.k ], [ %i.be, %bb.n ], [ null, %.loopexit ], [ %i.be, %bb.s ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !24
  br label %sdf_generate_bounding_box.exit

sdf_generate_bounding_box.exit:                   ; preds = %._crit_edge246.split.i, %._crit_edge246.split.us.us.i, %bb.m, %.preheader.i, %.lr.ph248.i, %.loopexit.sink.split.i
  %.0150.i = phi ptr [ %i.bm, %.preheader.i ], [ %i.bm, %._crit_edge246.split.us.us.i ], [ %i.bm, %bb.m ], [ %i.bm, %.lr.ph248.i ], [ %.0150.ph.i, %.loopexit.sink.split.i ], [ %i.bm, %._crit_edge246.split.i ]
  %.0137.i = phi ptr [ %i.be, %.preheader.i ], [ %i.be, %._crit_edge246.split.us.us.i ], [ %i.be, %bb.m ], [ %i.be, %.lr.ph248.i ], [ %.0137.ph.i, %.loopexit.sink.split.i ], [ %i.be, %._crit_edge246.split.i ]
  call void @ft_mem_free(ptr noundef %.0137.i, ptr noundef %.0150.i) #12
  %i.xm = load i32, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %split_sdf_shape.exit.thread

split_sdf_shape.exit.thread:                      ; preds = %bb.a, %bb.b, %.thread95.i, %sdf_generate_bounding_box.exit
  %.0 = phi i32 [ %i.xm, %sdf_generate_bounding_box.exit ], [ 6, %bb.a ], [ 6, %bb.b ], [ %.3.ph.i, %.thread95.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sdf_shape_done(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 4 uses
  %.not14 = icmp eq ptr %i.b, null
  br i1 %.not14, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %.not1516 = icmp eq ptr %i.d, null
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %sdf_contour_done.exit
  %.017 = phi ptr [ %i.f, %sdf_contour_done.exit ], [ %i.d, %.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %.not1617.i = icmp eq ptr %i.h, null
  br i1 %.not1617.i, label %sdf_contour_done.exit, label %sdf_edge_done.exit.i

sdf_edge_done.exit.i:                             ; preds = %.lr.ph, %sdf_edge_done.exit.i
  %.018.i = phi ptr [ %i.j, %sdf_edge_done.exit.i ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.018.i, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100  ; 2 uses
  tail call void @ft_mem_free(ptr noundef nonnull %i.b, ptr noundef nonnull %.018.i) #12
  %.not16.i = icmp eq ptr %i.j, null
  br i1 %.not16.i, label %sdf_contour_done.exit, label %sdf_edge_done.exit.i, !llvm.loop !0

sdf_contour_done.exit:                            ; preds = %sdf_edge_done.exit.i, %.lr.ph
  tail call void @ft_mem_free(ptr noundef nonnull %i.b, ptr noundef nonnull %.017) #12
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !177

._crit_edge.loopexit:                             ; preds = %sdf_contour_done.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !84
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %.preheader ]
  tail call void @ft_mem_free(ptr noundef nonnull %i.b, ptr noundef %i.k) #12
  store ptr null, ptr %0, align 8, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  ret void
}

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @FT_Outline_Decompose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @sdf_move_to(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sdf_contour_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %i.a) #12 ; 4 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %bb.d, label %sdf_contour_new.exit.thread

sdf_contour_new.exit.thread:                      ; preds = %bb.c, %bb.b
  %.ph = phi i32 [ 6, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !91
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !95
  store ptr %i.c, ptr %i.e, align 8, !tbaa !92
  br label %bb.e

bb.e:                                             ; preds = %sdf_contour_new.exit.thread, %bb.a, %bb.d
  %.0 = phi i32 [ %.ph, %sdf_contour_new.exit.thread ], [ 0, %bb.d ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @sdf_line_to(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !102
  %i.f = load i64, ptr %0, align 8, !tbaa !55
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sdf_edge_new.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.b, i64 noundef 80, ptr noundef nonnull %i.a) #12 ; 6 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not8.i = icmp eq i32 %i.n, 0
  br i1 %.not8.i, label %bb.f, label %sdf_edge_new.exit.thread

sdf_edge_new.exit.thread:                         ; preds = %bb.e, %bb.d
  %.ph = phi i32 [ 6, %bb.d ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i32 1, ptr %i.o, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !91
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !91
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr %i.r, ptr %i.s, align 8, !tbaa !100
  store ptr %i.m, ptr %i.q, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !91
  br label %bb.g

bb.g:                                             ; preds = %sdf_edge_new.exit.thread, %bb.a, %bb.c, %bb.f
  %.0 = phi i32 [ 0, %bb.c ], [ %.ph, %sdf_edge_new.exit.thread ], [ 0, %bb.f ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @sdf_conic_to(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !82     ; 4 uses
  %i.d = icmp ne ptr %0, null
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %sdf_line_to.exit
end_hunk_2
