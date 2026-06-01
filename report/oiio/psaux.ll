inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@cf2_builder_cubeTo:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.val3047.ph, i64 2 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !153
  %i.ax = add i16 %i.aw, 1
  store i16 %i.ax, ptr %i.av, align 2, !tbaa !153
  br label %ps_builder_add_point.exit38

ps_builder_add_point.exit36:                      ; preds = %ps_builder_add_point.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !152
  %i.bb = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !153
  %i.bd = sext i16 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !154
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bd
  %i.bi = load <2 x i64>, ptr %i.ay, align 8, !tbaa !42
  %i.bj = ashr <2 x i64> %i.bi, splat (i64 10)
  store <2 x i64> %i.bj, ptr %i.be, align 8, !tbaa !42
  store i8 2, ptr %i.bh, align 1, !tbaa !38
  %.val28.pre = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 5 uses
  %.val29.pre = load i8, ptr %i.ab, align 1, !tbaa !93
  %i.bk = icmp eq i8 %.val29.pre, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 2 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !153
  %i.bn = add i16 %i.bm, 1
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !153
  br i1 %i.bk, label %ps_builder_add_point.exit38, label %bb.h

bb.h:                                             ; preds = %ps_builder_add_point.exit36
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.val28.pre, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !152
  %i.br = getelementptr inbounds nuw i8, ptr %.val28.pre, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !153
  %i.bt = sext i16 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.val28.pre, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !154
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bt
  %i.by = load <2 x i64>, ptr %i.bo, align 8, !tbaa !42
  %i.bz = ashr <2 x i64> %i.by, splat (i64 10)
  store <2 x i64> %i.bz, ptr %i.bu, align 8, !tbaa !42
  store i8 1, ptr %i.bx, align 1, !tbaa !38
  br label %ps_builder_add_point.exit38

ps_builder_add_point.exit38:                      ; preds = %ps_builder_add_point.exit36.thread, %ps_builder_add_point.exit36, %bb.h
  %.val2851 = phi ptr [ %.val3047.ph, %ps_builder_add_point.exit36.thread ], [ %.val28.pre, %ps_builder_add_point.exit36 ], [ %.val28.pre, %bb.h ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val2851, i64 2 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !153
  %i.cc = add i16 %i.cb, 1
  store i16 %i.cc, ptr %i.ca, align 2, !tbaa !153
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %ps_builder_add_point.exit38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_builder_start_point(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !92
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %ps_builder_add_point1.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %ps_builder_add_point1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 89         ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !93
  %.not17.i = icmp eq i8 %i.f, 0
  br i1 %.not17.i, label %.sink.split.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !555  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i16, ptr %i.i, align 8, !tbaa !157
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.m = load i16, ptr %i.l, align 8, !tbaa !158
  %i.n = sext i16 %i.m to i32
  %i.o = add nsw i32 %i.k, 1
  %i.p = add nsw i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !159
  %.not18.i = icmp ugt i32 %i.p, %i.r
  br i1 %.not18.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1) #19 ; 2 uses
  %.not19.i = icmp eq i32 %i.s, 0
  br i1 %.not19.i, label %.thread.i, label %ps_builder_add_point1.exit

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.t = load i16, ptr %i.d, align 8, !tbaa !160  ; 3 uses
  %i.u = icmp sgt i16 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread.i
  %i.v = zext nneg i16 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !153
  %i.y = add i16 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  %i.ab = add nuw nsw i64 %i.v, 4294967295
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2, !tbaa !44
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.f, %bb.c
  %.pre.i = load i16, ptr %i.d, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.sink.split.i, %.thread.i
  %.sink24.i = phi i16 [ %i.t, %.thread.i ], [ %.pre.i, %.sink.split.sink.split.i ]
  %i.ae = add i16 %.sink24.i, 1
  store i16 %i.ae, ptr %i.d, align 8, !tbaa !160
  %i.af = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !555 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 26
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !147
  %i.ai = sext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 98
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !150
  %i.al = sext i16 %i.ak to i32
  %i.am = add nsw i32 %i.ai, 1
  %i.an = add nsw i32 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !151
  %.not.i.i = icmp ugt i32 %i.an, %i.ap
  br i1 %.not.i.i, label %ps_builder_check_points.exit.i, label %ps_builder_check_points.exit.thread.i

ps_builder_check_points.exit.i:                   ; preds = %bb.g
  %i.aq = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.val.i, i32 noundef 1, i32 noundef 0) #19 ; 2 uses
  %.not.i9 = icmp eq i32 %i.aq, 0
  br i1 %.not.i9, label %ps_builder_check_points.exit.thread.i, label %ps_builder_add_point1.exit

ps_builder_check_points.exit.thread.i:            ; preds = %ps_builder_check_points.exit.i, %bb.g
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !81 ; 4 uses
  %.val6.i = load i8, ptr %i.e, align 1, !tbaa !93
  %.not.i7.i = icmp eq i8 %.val6.i, 0
  br i1 %.not.i7.i, label %ps_builder_add_point.exit.i, label %bb.h

bb.h:                                             ; preds = %ps_builder_check_points.exit.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !152
  %i.at = getelementptr inbounds nuw i8, ptr %.val5.i, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !153
  %i.av = sext i16 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !154
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.av
  %i.ba = ashr i64 %1, 10
  store i64 %i.ba, ptr %i.aw, align 8, !tbaa !155
  %i.bb = ashr i64 %2, 10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !156
  store i8 1, ptr %i.az, align 1, !tbaa !38
  br label %ps_builder_add_point.exit.i

ps_builder_add_point.exit.i:                      ; preds = %bb.h, %ps_builder_check_points.exit.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.val5.i, i64 2 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !153
  %i.bf = add i16 %i.be, 1
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !153
  br label %ps_builder_add_point1.exit

ps_builder_add_point1.exit:                       ; preds = %bb.e, %bb.b, %ps_builder_add_point.exit.i, %ps_builder_check_points.exit.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.aq, %ps_builder_check_points.exit.i ], [ 0, %ps_builder_add_point.exit.i ], [ %i.s, %bb.e ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_interpT2CharString(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext range(i8 0, 2) %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.FT_Data_, align 8           ; 5 uses
  %9 = alloca %struct.FT_Data_, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 34 uses
  %i.d = alloca i32, align 4                      ; 32 uses
  %i.e = alloca [3 x i32], align 4                ; 5 uses
  %i.f = alloca [32 x i32], align 16              ; 5 uses
  %i.g = alloca [6 x i32], align 16               ; 10 uses
  %i.h = alloca i8, align 1                       ; 20 uses
  %10 = alloca %struct.CF2_ArrStackRec_, align 8  ; 13 uses
  %11 = alloca %struct.CF2_ArrStackRec_, align 8  ; 14 uses
  %12 = alloca %struct.CF2_HintMaskRec_, align 8  ; 12 uses
  %13 = alloca %struct.CF2_GlyphPathRec_, align 8 ; 71 uses
  %14 = alloca %struct.CF2_BufferRec_, align 8    ; 8 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %15 = alloca %struct.CF2_BufferRec_, align 8    ; 8 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %16 = alloca %struct.CF2_HintMapRec_, align 8   ; 9 uses
  %17 = alloca %struct.CF2_HintMaskRec_, align 8  ; 9 uses
  store i32 %5, ptr %i.c, align 4, !tbaa !3
  store i32 %6, ptr %i.d, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !238  ; 32 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 22 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !206    ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr i8, ptr %i.l, i64 1056     ; 4 uses
  %.val1281 = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.q = getelementptr i8, ptr %.val1281, i64 1032
  %.val1281.val = load i64, ptr %i.q, align 8, !tbaa !556
  %i.r = trunc i64 %.val1281.val to i32
  %i.s = shl i32 %i.r, 16                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.f, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.n, ptr %10, align 8, !tbaa !557
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.m, ptr %i.t, align 8, !tbaa !559
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 20, ptr %i.u, align 8, !tbaa !560
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store ptr %i.n, ptr %11, align 8, !tbaa !557
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.m, ptr %i.w, align 8, !tbaa !559
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 20, ptr %i.x, align 8, !tbaa !560
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store ptr %i.m, ptr %12, align 8, !tbaa !561
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 18632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ac, i8 0, i64 240, i1 false)
  store ptr %0, ptr %13, align 8, !tbaa !563
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.ad, align 8, !tbaa !572
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 18568 ; 6 uses
  store ptr %i.n, ptr %i.ae, align 8, !tbaa !557
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 18576
  store ptr %i.m, ptr %i.af, align 8, !tbaa !559
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 18584
  store i64 16, ptr %i.ag, align 8, !tbaa !560
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 18592 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 12384 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 12408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.aj, i8 0, i64 6160, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !312 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 12409
  store i8 %i.al, ptr %i.am, align 1, !tbaa !573
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 12412
  store ptr %0, ptr %i.ai, align 8, !tbaa !574
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 12392
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !575
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 12400
  store ptr %i.ae, ptr %i.ap, align 8, !tbaa !576
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 6200
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 6224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.ar, i8 0, i64 6160, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 6225
  store i8 %i.al, ptr %i.as, align 1, !tbaa !573
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 6228
  store ptr %0, ptr %i.aq, align 8, !tbaa !574
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 6208
  store ptr %i.ai, ptr %i.au, align 8, !tbaa !575
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 6216
  store ptr %i.ae, ptr %i.av, align 8, !tbaa !576
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.aw, i8 0, i64 6160, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 41
  store i8 %i.al, ptr %i.ax, align 1, !tbaa !573
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 44
  store ptr %0, ptr %i.ab, align 8, !tbaa !574
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.ai, ptr %i.az, align 8, !tbaa !575
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.ae, ptr %i.ba, align 8, !tbaa !576
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !577
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 18624
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !578
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 18628
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !325 ; 4 uses
  %i.bh = load <2 x i32>, ptr %i.be, align 4, !tbaa !3
  store i32 %i.bg, ptr %i.an, align 4, !tbaa !579
  store i32 %i.bg, ptr %i.at, align 4, !tbaa !579
  store i32 %i.bg, ptr %i.ay, align 4, !tbaa !579
  store <2 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 18640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !580
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 18664
  store ptr %10, ptr %i.bj, align 8, !tbaa !581
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 18672
  store ptr %11, ptr %i.bk, align 8, !tbaa !582
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 18680
  store ptr %12, ptr %i.bl, align 8, !tbaa !583
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 18688
  store i32 %6, ptr %i.bm, align 8, !tbaa !584
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 18696
  store ptr %i.aa, ptr %i.bn, align 8, !tbaa !585
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !323
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 18658
  store i8 %i.bp, ptr %i.bq, align 2, !tbaa !586
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !321 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 18704
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !587
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !322 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 18708
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !588
  %i.bx = call i32 @llvm.abs.i32(i32 %i.bs, i1 false)
  %i.by = call i32 @llvm.abs.i32(i32 %i.bv, i1 false)
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bx, i32 %i.by)
  %i.bz = shl nsw i32 %spec.select.i, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 18712
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !589
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 18716
  store i32 6554, ptr %i.cb, align 4, !tbaa !590
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 18659 ; 2 uses
  store i8 1, ptr %i.cc, align 1, !tbaa !591
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 18656 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 18657 ; 3 uses
  store i8 0, ptr %i.ce, align 1, !tbaa !592
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 18800 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 6 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !282 ; 2 uses
  %.not = icmp ne i8 %i.ch, 0
  %i.ci = zext i1 %.not to i8
  store i8 %i.ci, ptr %i.h, align 1, !tbaa !38
  %.val1282 = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.cj = getelementptr i8, ptr %.val1282, i64 1024
  %.val1282.val = load i64, ptr %i.cj, align 8, !tbaa !593
  %i.ck = trunc i64 %.val1282.val to i32
  %i.cl = shl i32 %i.ck, 16
  store i32 %i.cl, ptr %7, align 4, !tbaa !3
  %.not1147 = icmp eq i8 %i.ch, 0
  br i1 %.not1147, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cm = getelementptr i8, ptr %i.l, i64 1048
  %.val1283 = load ptr, ptr %i.cm, align 8, !tbaa !216
  %i.cn = getelementptr i8, ptr %.val1283, i64 1960
  %.val1283.val = load i32, ptr %i.cn, align 8, !tbaa !594
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.co = phi i32 [ %.val1283.val, %bb.b ], [ 48, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cp = call ptr @ft_mem_qalloc(ptr noundef %i.n, i64 noundef 40, ptr noundef nonnull %i.b) #19 ; 148 uses
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %bb.d, label %cf2_stack_init.exit.thread

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.cp, align 8, !tbaa !595
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 93 uses
  store ptr %i.m, ptr %i.cr, align 8, !tbaa !598
  %i.cs = zext i32 %i.co to i64
  %i.ct = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 8, i64 noundef 0, i64 noundef %i.cs, ptr noundef null, ptr noundef nonnull %i.b) #19 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cp, i64 16     ; 77 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !599
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !3
  %.not15.i = icmp eq i32 %i.cv, 0
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ft_mem_free(ptr noundef %i.n, ptr noundef nonnull %i.cp) #19
  br label %cf2_stack_init.exit.thread

cf2_stack_init.exit.thread:                       ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 36 uses
  store i32 %i.co, ptr %i.cw, align 8, !tbaa !600
  %i.cx = getelementptr i8, ptr %i.cp, i64 24     ; 157 uses
  store ptr %i.ct, ptr %i.cx, align 8, !tbaa !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.cy = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 1, i64 noundef 0, i64 noundef 544, ptr noundef null, ptr noundef nonnull %i.a) #19 ; 60 uses
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.cz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.pr = load i32, ptr %i.m, align 8, !tbaa !3
  %.not1149 = icmp eq i32 %.pr, 0                 ; 2 uses
  br i1 %.not.i.i, label %cf2_arrstack_setCount.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not1149, label %cf2_setError.exit.sink.split, label %cf2_setError.exit

cf2_arrstack_setCount.exit:                       ; preds = %bb.f
  br i1 %.not1149, label %bb.h, label %cf2_setError.exit

bb.h:                                             ; preds = %cf2_arrstack_setCount.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !602
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 1080 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 928 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 25
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 28
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 9
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 9 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 10 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 91 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 1240 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 1256 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 1248 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 932 ; 4 uses
  %i.dz = getelementptr i8, ptr %i.l, i64 24      ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 1184
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 1096
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 1088
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 1104
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 1176
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 1168
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 1100
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 1092
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 1112
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 18784
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 18792
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 18720
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 18736
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 18744
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %.01043 = phi i32 [ 0, %bb.h ], [ %.01043.be, %.backedge.backedge ] ; 235 uses
  %.01039 = phi ptr [ %i.cy, %bb.h ], [ %.01039.be, %.backedge.backedge ] ; 237 uses
  %.01038 = phi i32 [ 20000000, %bb.h ], [ %.01038.be, %.backedge.backedge ] ; 2 uses
  %.01027 = phi i32 [ 0, %bb.h ], [ %.01027.be, %.backedge.backedge ] ; 4 uses
  %.01025 = phi i8 [ 0, %bb.h ], [ %.01025.be, %.backedge.backedge ] ; 225 uses
  %.01018 = phi i8 [ 0, %bb.h ], [ %.01018.be, %.backedge.backedge ] ; 4 uses
  %.01003 = phi i32 [ 0, %bb.h ], [ %.01003.be, %.backedge.backedge ] ; 129 uses
  %i.fc = getelementptr i8, ptr %.01039, i64 16   ; 3 uses
  %.01039.val = load ptr, ptr %i.fc, align 8, !tbaa !254 ; 10 uses
  %i.fd = getelementptr i8, ptr %.01039, i64 24   ; 15 uses
  %.01039.val1285 = load ptr, ptr %i.fd, align 8, !tbaa !251 ; 4 uses
  %.not2062 = icmp ult ptr %.01039.val1285, %.01039.val
  br i1 %.not2062, label %cf2_buf_readByte.exit, label %bb.i

bb.i:                                             ; preds = %.backedge
  %.not1152 = icmp eq i32 %.01043, 0
  %. = select i1 %.not1152, i8 14, i8 11
  br label %cf2_buf_readByte.exit.thread

cf2_buf_readByte.exit:                            ; preds = %.backedge
  %i.fe = getelementptr inbounds nuw i8, ptr %.01039.val1285, i64 1 ; 3 uses
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !251
  %i.ff = load i8, ptr %.01039.val1285, align 1, !tbaa !38 ; 3 uses
  switch i8 %i.ff, label %cf2_buf_readByte.exit.thread [
    i8 14, label %bb.j
    i8 11, label %bb.j
  ]

bb.j:                                             ; preds = %cf2_buf_readByte.exit, %cf2_buf_readByte.exit
  %i.fg = load i8, ptr %i.cg, align 1, !tbaa !282
  %.not1151 = icmp eq i8 %i.fg, 0
  %spec.select = select i1 %.not1151, i8 %i.ff, i8 0
  br label %cf2_buf_readByte.exit.thread

cf2_buf_readByte.exit.thread:                     ; preds = %bb.j, %cf2_buf_readByte.exit, %bb.i
  %i.fh = phi ptr [ %.01039.val1285, %bb.i ], [ %i.fe, %cf2_buf_readByte.exit ], [ %i.fe, %bb.j ] ; 21 uses
  %.01037 = phi i8 [ %., %bb.i ], [ %i.ff, %cf2_buf_readByte.exit ], [ %spec.select, %bb.j ] ; 17 uses
  %i.fi = load i8, ptr %i.da, align 4, !tbaa !283 ; 2 uses
  %.not1153 = icmp eq i8 %i.fi, 0                 ; 13 uses
  br i1 %.not1153, label %bb.n, label %bb.k

bb.k:                                             ; preds = %cf2_buf_readByte.exit.thread
  %i.fj = icmp ne i8 %.01025, 0
  %i.fk = and i8 %.01037, -3
  %i.fl = icmp eq i8 %i.fk, 1
  %i.fm = icmp eq i8 %.01037, 13
  %i.fn = or i1 %i.fm, %i.fl
  %i.fo = and i8 %.01037, -2
  %i.fp = icmp eq i8 %i.fo, 10
  %i.fq = or i1 %i.fp, %i.fn
  %or.cond21 = select i1 %i.fj, i1 true, i1 %i.fq
  %i.fr = icmp eq i8 %.01037, 12                  ; 2 uses
  %i.fs = icmp eq i8 %.01037, 14
  %i.ft = or i1 %i.fr, %i.fs
  %i.fu = icmp ugt i8 %.01037, 31                 ; 3 uses
  %i.fv = or i1 %i.fu, %i.ft
  %or.cond30 = select i1 %or.cond21, i1 true, i1 %i.fv
  br i1 %or.cond30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fw = load ptr, ptr %i.cu, align 8, !tbaa !599
  store ptr %i.fw, ptr %i.cx, align 8, !tbaa !601
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.k
  %i.fx = icmp slt i32 %.01027, 1
  %i.fy = add i8 %.01037, -10
  %i.fz = icmp ult i8 %i.fy, 3
  %i.ga = or i1 %i.fu, %i.fz
  %or.cond42 = select i1 %i.fx, i1 true, i1 %i.ga
  %spec.select1249 = select i1 %or.cond42, i32 %.01027, i32 0
  %i.gb = icmp eq i8 %.01018, 0
  %i.gc = or i1 %i.fu, %i.fr
  %or.cond48 = select i1 %i.gb, i1 true, i1 %i.gc
  %spec.select1278 = select i1 %or.cond48, i8 %.01018, i8 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %cf2_buf_readByte.exit.thread
  %.21029 = phi i32 [ %spec.select1249, %bb.m ], [ %.01027, %cf2_buf_readByte.exit.thread ] ; 172 uses
  %.11019 = phi i8 [ %spec.select1278, %bb.m ], [ %.01018, %cf2_buf_readByte.exit.thread ] ; 174 uses
  %i.gd = load i32, ptr %i.m, align 8, !tbaa !3
  %.not1154 = icmp eq i32 %i.gd, 0
  br i1 %.not1154, label %bb.o, label %cf2_setError.exit

bb.o:                                             ; preds = %bb.n
  %i.ge = add i32 %.01038, -1                     ; 179 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %cf2_setError.exit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gg = zext i8 %.01037 to i32                  ; 3 uses
  switch i8 %.01037, label %bb.aah [
    i8 0, label %cf2_hintmask_read.exit
    i8 2, label %cf2_hintmask_read.exit
    i8 17, label %cf2_hintmask_read.exit
    i8 15, label %bb.q
    i8 16, label %bb.aa
    i8 18, label %bb.am
    i8 1, label %bb.am
    i8 23, label %bb.ap
    i8 3, label %bb.ap
    i8 4, label %bb.as
    i8 5, label %bb.bf
    i8 6, label %bb.bs
    i8 7, label %bb.bs
    i8 24, label %bb.bz
    i8 8, label %bb.bz
    i8 9, label %bb.dy
    i8 29, label %bb.ed
    i8 10, label %bb.ed
    i8 11, label %bb.fa
    i8 12, label %bb.fd
    i8 13, label %bb.pn
    i8 14, label %bb.qd
    i8 20, label %bb.qz
    i8 19, label %bb.qz
    i8 21, label %bb.rr
    i8 22, label %bb.sk
    i8 25, label %bb.sx
    i8 26, label %bb.uu
    i8 27, label %bb.wa
    i8 30, label %bb.xg
    i8 31, label %bb.xg
    i8 28, label %bb.zu
  ]

bb.q:                                             ; preds = %bb.p
  %i.gh = load i8, ptr %i.cg, align 1, !tbaa !282
  %.not1243 = icmp eq i8 %i.gh, 0
  br i1 %.not1243, label %cf2_hintmask_read.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = load i8, ptr %i.fa, align 1, !tbaa !305
  %.not1244 = icmp eq i8 %i.gi, 0
  br i1 %.not1244, label %bb.s, label %cf2_arrstack_setCount.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.gj = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 3 uses
  %i.gk = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.gm = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1341 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i1341, label %cf2_stack_popInt.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %.not3.i.i1342 = icmp eq i32 %i.gn, 0
  br i1 %.not3.i.i1342, label %bb.v, label %cf2_stack_popInt.exit.thread

bb.v:                                             ; preds = %bb.u
  store i32 161, ptr %i.gm, align 4, !tbaa !3
  br label %cf2_stack_popInt.exit.thread

bb.w:                                             ; preds = %bb.s
  %i.go = getelementptr inbounds i8, ptr %i.gj, i64 -4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !604
  %.not.i1339 = icmp eq i32 %i.gp, 2
  br i1 %.not.i1339, label %cf2_stack_popInt.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.gq, null
  br i1 %.not.i8.i, label %cf2_stack_popInt.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3
  %.not3.i9.i = icmp eq i32 %i.gr, 0
  br i1 %.not3.i9.i, label %bb.z, label %cf2_stack_popInt.exit.thread

bb.z:                                             ; preds = %bb.y
  store i32 160, ptr %i.gq, align 4, !tbaa !3
  br label %cf2_stack_popInt.exit.thread

cf2_stack_popInt.exit:                            ; preds = %bb.w
  %i.gs = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 2 uses
  store ptr %i.gs, ptr %i.cx, align 8, !tbaa !601
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !38 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, -1
  br i1 %i.gu, label %cf2_stack_popInt.exit.thread, label %cf2_hintmask_read.exit

cf2_stack_popInt.exit.thread:                     ; preds = %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.v, %cf2_stack_popInt.exit
  %.0.i13401948 = phi i32 [ %i.gt, %cf2_stack_popInt.exit ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ]
  store i32 %.0.i13401948, ptr %i.ex, align 8, !tbaa !306
  br label %cf2_hintmask_read.exit

bb.aa:                                            ; preds = %bb.p
  %i.gv = load i8, ptr %i.cg, align 1, !tbaa !282
  %.not1239 = icmp eq i8 %i.gv, 0
  br i1 %.not1239, label %cf2_hintmask_read.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gw = load ptr, ptr %i.ev, align 8, !tbaa !304
  %.not1240 = icmp eq ptr %i.gw, null
  br i1 %.not1240, label %cf2_arrstack_setCount.exit.thread, label %bb.ac
end_hunk_0
begin_hunk_1_@cf2_interpT2CharString:bb.a
  %i.uh = icmp eq i32 %.0.i14701969, 1            ; 2 uses
  %i.ui = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.cp, i32 noundef 0)
  %i.uj = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.cp, i32 noundef 2) ; 2 uses
  %i.uk = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.cp, i32 noundef 4)
  %i.ul = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.cp, i32 noundef 1)
  %.val.i1472 = load ptr, ptr %i.cu, align 8, !tbaa !599 ; 2 uses
  %.val7.i = load ptr, ptr %i.cx, align 8, !tbaa !601
  %i.um = ptrtoint ptr %.val7.i to i64
  %i.un = ptrtoint ptr %.val.i1472 to i64
  %i.uo = sub i64 %i.um, %i.un
  %i.up = and i64 %i.uo, 34359738352
  %i.uq = icmp eq i64 %i.up, 0
  br i1 %i.uq, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.ur = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1473 = icmp eq ptr %i.ur, null
  br i1 %.not.i.i1473, label %cf2_stack_setReal.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !3
  %.not3.i.i1474 = icmp eq i32 %i.us, 0
  br i1 %.not3.i.i1474, label %bb.fr, label %cf2_stack_setReal.exit

bb.fr:                                            ; preds = %bb.fq
  store i32 130, ptr %i.ur, align 4, !tbaa !3
  br label %cf2_stack_setReal.exit

bb.fs:                                            ; preds = %bb.fo
  %i.ut = add i32 %i.ui, %i.ul
  %i.uu = sub i32 %i.uj, %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %.val.i1472, i64 16
  store i32 %i.uu, ptr %i.uv, align 4, !tbaa !38
  %i.uw = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 20
  store i32 0, ptr %i.ux, align 4, !tbaa !604
  br label %cf2_stack_setReal.exit

cf2_stack_setReal.exit:                           ; preds = %bb.fp, %bb.fq, %bb.fr, %bb.fs
  %i.uy = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.cp, i32 noundef 3)
  %.val.i1475 = load ptr, ptr %i.cu, align 8, !tbaa !599 ; 2 uses
  %.val7.i1476 = load ptr, ptr %i.cx, align 8, !tbaa !601
  %i.uz = ptrtoint ptr %.val7.i1476 to i64
  %i.va = ptrtoint ptr %.val.i1475 to i64
  %i.vb = sub i64 %i.uz, %i.va
  %i.vc = and i64 %i.vb, 34359738336
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %cf2_stack_setReal.exit
  %i.ve = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1477 = icmp eq ptr %i.ve, null
  br i1 %.not.i.i1477, label %cf2_stack_setReal.exit1479, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !3
  %.not3.i.i1478 = icmp eq i32 %i.vf, 0
  br i1 %.not3.i.i1478, label %bb.fv, label %cf2_stack_setReal.exit1479

bb.fv:                                            ; preds = %bb.fu
  store i32 130, ptr %i.ve, align 4, !tbaa !3
  br label %cf2_stack_setReal.exit1479

bb.fw:                                            ; preds = %cf2_stack_setReal.exit
  %i.vg = add i32 %i.uj, %i.uy
  %i.vh = sub i32 %i.uk, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %.val.i1475, i64 32
  store i32 %i.vh, ptr %i.vi, align 4, !tbaa !38
  %i.vj = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 36
  store i32 0, ptr %i.vk, align 4, !tbaa !604
  br label %cf2_stack_setReal.exit1479

cf2_stack_setReal.exit1479:                       ; preds = %bb.ft, %bb.fu, %bb.fv, %bb.fw
  %i.vl = select i1 %i.uh, ptr %11, ptr %10
  %i.vm = load ptr, ptr %i.dt, align 8, !tbaa !608
  %.in.idx = select i1 %i.uh, i64 0, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.in.idx
  %i.vn = load i64, ptr %.in, align 8, !tbaa !42
  %i.vo = trunc i64 %i.vn to i32
  call fastcc void @cf2_doStems(ptr noundef nonnull %0, ptr noundef %i.cp, ptr noundef %i.vl, ptr noundef %7, ptr noundef %i.h, i32 noundef %i.vo)
  %i.vp = load i8, ptr %i.db, align 8, !tbaa !503
  %.not1220 = icmp eq i8 %i.vp, 0
  br i1 %.not1220, label %cf2_hintmask_read.exit, label %cf2_arrstack_setCount.exit.thread

bb.fx:                                            ; preds = %bb.fm
  %i.vq = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.vr = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.vs = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.vt = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.vu = load i32, ptr %i.cw, align 8, !tbaa !600
  %i.vv = zext i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vv
  %i.vx = icmp eq ptr %i.vs, %i.vw
  br i1 %i.vx, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.vy = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1480 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i1480, label %.backedge.backedge, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !3
  %.not3.i.i1481 = icmp eq i32 %i.vz, 0
  br i1 %.not3.i.i1481, label %bb.ga, label %.backedge.backedge

bb.ga:                                            ; preds = %bb.fz
  store i32 130, ptr %i.vy, align 4, !tbaa !3
  br label %.backedge.backedge

bb.gb:                                            ; preds = %bb.fx
  %i.wa = icmp ne i32 %i.vr, 0
  %i.wb = icmp ne i32 %i.vq, 0
  %i.wc = select i1 %i.wa, i1 %i.wb, i1 false
  %i.wd = zext i1 %i.wc to i32
  store i32 %i.wd, ptr %i.vs, align 4, !tbaa !38
  %i.we = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  store i32 2, ptr %i.wf, align 4, !tbaa !604
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store ptr %i.wg, ptr %i.cx, align 8, !tbaa !601
  br label %.backedge.backedge

bb.gc:                                            ; preds = %bb.fm
  %i.wh = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.wi = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.wj = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.wk = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.wl = load i32, ptr %i.cw, align 8, !tbaa !600
  %i.wm = zext i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.wm
  %i.wo = icmp eq ptr %i.wj, %i.wn
  br i1 %i.wo, label %bb.gd, label %bb.gg

bb.gd:                                            ; preds = %bb.gc
  %i.wp = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1482 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i1482, label %.backedge.backedge, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !3
  %.not3.i.i1483 = icmp eq i32 %i.wq, 0
  br i1 %.not3.i.i1483, label %bb.gf, label %.backedge.backedge

bb.gf:                                            ; preds = %bb.ge
  store i32 130, ptr %i.wp, align 4, !tbaa !3
  br label %.backedge.backedge

bb.gg:                                            ; preds = %bb.gc
  %i.wr = icmp ne i32 %i.wi, 0
  %i.ws = icmp ne i32 %i.wh, 0
  %i.wt = select i1 %i.wr, i1 true, i1 %i.ws
  %i.wu = zext i1 %i.wt to i32
  store i32 %i.wu, ptr %i.wj, align 4, !tbaa !38
  %i.wv = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  store i32 2, ptr %i.ww, align 4, !tbaa !604
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  store ptr %i.wx, ptr %i.cx, align 8, !tbaa !601
  br label %.backedge.backedge

bb.gh:                                            ; preds = %bb.fm
  %i.wy = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.wz = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.xa = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.xb = load i32, ptr %i.cw, align 8, !tbaa !600
  %i.xc = zext i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.xc
  %i.xe = icmp eq ptr %i.wz, %i.xd
  br i1 %i.xe, label %bb.gi, label %bb.gl

bb.gi:                                            ; preds = %bb.gh
  %i.xf = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1485 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i1485, label %.backedge.backedge, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !3
  %.not3.i.i1486 = icmp eq i32 %i.xg, 0
  br i1 %.not3.i.i1486, label %bb.gk, label %.backedge.backedge

bb.gk:                                            ; preds = %bb.gj
  store i32 130, ptr %i.xf, align 4, !tbaa !3
  br label %.backedge.backedge

bb.gl:                                            ; preds = %bb.gh
  %.not1218 = icmp eq i32 %i.wy, 0
  %i.xh = zext i1 %.not1218 to i32
  store i32 %i.xh, ptr %i.wz, align 4, !tbaa !38
  %i.xi = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  store i32 2, ptr %i.xj, align 4, !tbaa !604
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  store ptr %i.xk, ptr %i.cx, align 8, !tbaa !601
  br label %.backedge.backedge

bb.gm:                                            ; preds = %bb.fm
  br i1 %.not1153, label %cf2_hintmask_read.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.xl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.xn = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp) ; 3 uses
  %i.xo = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp) ; 3 uses
  %i.xp = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  %i.xq = sext i32 %i.xp to i64
  %i.xr = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.xs = sext i32 %i.xr to i64
  %i.xt = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  %i.xu = sext i32 %i.xt to i64
  %.not1209 = icmp eq i8 %4, 0
  br i1 %.not1209, label %bb.go, label %bb.he

bb.go:                                            ; preds = %bb.gn
  %i.xv = load i8, ptr %i.du, align 1, !tbaa !625
  %.not1210 = icmp eq i8 %i.xv, 0
  br i1 %.not1210, label %bb.gp, label %bb.he

bb.gp:                                            ; preds = %bb.go
  %i.xw = getelementptr inbounds nuw i8, ptr %i.l, i64 1120
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !491
  %i.xy = icmp eq ptr %i.xx, null
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xm, i64 240
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !626
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 104
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !627
  %.not1211 = icmp eq ptr %i.yc, null             ; 2 uses
  br i1 %i.xy, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  br i1 %.not1211, label %bb.he, label %.thread

.thread:                                          ; preds = %bb.gq
  %i.yd = load ptr, ptr %i.dt, align 8, !tbaa !608
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !155
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gp
  %i.yf = load ptr, ptr %i.dt, align 8, !tbaa !608
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !155 ; 2 uses
  br i1 %.not1211, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.yh = call fastcc i32 @t1_lookup_glyph_by_stdcharcode_ps(ptr noundef nonnull %i.l, i32 noundef %i.xo)
  %i.yi = call fastcc i32 @t1_lookup_glyph_by_stdcharcode_ps(ptr noundef nonnull %i.l, i32 noundef %i.xn)
  br label %bb.gt

bb.gt:                                            ; preds = %.thread, %bb.gr, %bb.gs
  %.pn = phi i64 [ %i.yg, %bb.gs ], [ %i.yg, %bb.gr ], [ %i.ye, %.thread ]
  %.01086 = phi i32 [ %i.yi, %bb.gs ], [ %i.xn, %bb.gr ], [ %i.xn, %.thread ] ; 3 uses
  %.01083 = phi i32 [ %i.yh, %bb.gs ], [ %i.xo, %bb.gr ], [ %i.xo, %.thread ] ; 3 uses
  %i.yj = add nsw i64 %.pn, %i.xs                 ; 2 uses
  %i.yk = icmp slt i32 %.01083, 0
  %i.yl = icmp slt i32 %.01086, 0
  %or.cond66 = select i1 %i.yk, i1 true, i1 %i.yl
  br i1 %or.cond66, label %bb.he, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ym = getelementptr inbounds nuw i8, ptr %i.l, i64 90
  %i.yn = load i8, ptr %i.ym, align 2, !tbaa !628
  %.not1213 = icmp eq i8 %i.yn, 0
  br i1 %.not1213, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.yo = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !255 ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 296
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !123
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !131 ; 4 uses
  %i.yt = call i32 @FT_GlyphLoader_CheckSubGlyphs(ptr noundef %i.ys, i32 noundef 2) #19 ; 2 uses
  %.not1217 = icmp eq i32 %i.yt, 0
  br i1 %.not1217, label %bb.gw, label %bb.he

bb.gw:                                            ; preds = %bb.gv
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 160
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !629 ; 8 uses
  store i32 %.01083, ptr %i.yv, align 8, !tbaa !630
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  store i16 514, ptr %i.yw, align 4, !tbaa !632
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store i32 0, ptr %i.yx, align 8, !tbaa !633
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 12
  store i32 0, ptr %i.yy, align 4, !tbaa !634
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 48
  store i32 %.01086, ptr %i.yz, align 8, !tbaa !630
  %i.za = getelementptr inbounds nuw i8, ptr %i.yv, i64 52
  store i16 2, ptr %i.za, align 4, !tbaa !632
  %i.zb = sub nsw i64 %i.yj, %i.xu
  %i.zc = call i64 @FT_RoundFix(i64 noundef %i.zb) #19
  %i.zd = lshr i64 %i.zc, 16
  %i.ze = trunc i64 %i.zd to i32
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yv, i64 56
  store i32 %i.ze, ptr %i.zf, align 8, !tbaa !633
  %i.zg = call i64 @FT_RoundFix(i64 noundef %i.xq) #19
  %i.zh = lshr i64 %i.zg, 16
  %i.zi = trunc i64 %i.zh to i32
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yv, i64 60
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !634
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yp, i64 240
  store i32 2, ptr %i.zk, align 8, !tbaa !635
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ys, i64 88
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !636
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yp, i64 248
  store ptr %i.zm, ptr %i.zn, align 8, !tbaa !637
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yp, i64 144
  store i32 1668246896, ptr %i.zo, align 8, !tbaa !638
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ys, i64 152
  store i32 2, ptr %i.zp, align 8, !tbaa !639
  br label %bb.he

bb.gx:                                            ; preds = %bb.gu
  %i.zq = load ptr, ptr %i.dz, align 8, !tbaa !361
  call void @FT_GlyphLoader_Prepare(ptr noundef %i.zq) #19
  %.val1326 = load ptr, ptr %i.xl, align 8, !tbaa !285
  %i.zr = call fastcc i32 @cf2_getT1SeacComponent(ptr %.val1326, i32 noundef %.01083, ptr noundef %14) ; 2 uses
  %.not1214 = icmp eq i32 %i.zr, 0
  br i1 %.not1214, label %bb.gy, label %bb.he

bb.gy:                                            ; preds = %bb.gx
  %i.zs = load ptr, ptr %i.dt, align 8, !tbaa !608
  %.sroa.02566.0.copyload = load <2 x i64>, ptr %i.zs, align 8
  %i.zt = load ptr, ptr %i.ds, align 8, !tbaa !640
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.zt, align 8
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %14, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, ptr noundef %i.i)
  %.val1330 = load ptr, ptr %i.xl, align 8, !tbaa !285
  %i.zu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.val1331 = load ptr, ptr %i.zu, align 8, !tbaa !253 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.val1332 = load ptr, ptr %i.zv, align 8, !tbaa !254
  %i.zw = getelementptr i8, ptr %.val1330, i64 240
  %.val1330.val = load ptr, ptr %i.zw, align 8, !tbaa !626
  %i.zx = getelementptr i8, ptr %.val1330.val, i64 104
  %.val1330.val.val = load ptr, ptr %i.zx, align 8, !tbaa !627 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %.val1331, ptr %9, align 8, !tbaa !641
  %i.zy = ptrtoint ptr %.val1332 to i64
  %i.zz = ptrtoint ptr %.val1331 to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = trunc i64 %i.aaa to i32
  %i.aac = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.aab, ptr %i.aac, align 8, !tbaa !643
  %.not.i1488 = icmp eq ptr %.val1330.val.val, null
  br i1 %.not.i1488, label %cf2_freeT1SeacComponent.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aad = load ptr, ptr %.val1330.val.val, align 8, !tbaa !644
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !648
  %i.aag = getelementptr inbounds nuw i8, ptr %.val1330.val.val, i64 8
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !650
  call void %i.aaf(ptr noundef %i.aah, ptr noundef nonnull %9) #19, !inline_history !651
  br label %cf2_freeT1SeacComponent.exit

cf2_freeT1SeacComponent.exit:                     ; preds = %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.aai = load i8, ptr %i.h, align 1, !tbaa !38
  %.not1215 = icmp eq i8 %i.aai, 0
  %.pre2225 = load ptr, ptr %i.dt, align 8, !tbaa !608 ; 2 uses
  br i1 %.not1215, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %cf2_freeT1SeacComponent.exit
  %.sroa.02566.0.copyload2567 = load <2 x i64>, ptr %.pre2225, align 8
  %i.aaj = load ptr, ptr %i.ds, align 8, !tbaa !640
  %.sroa.0.0.copyload2564 = load <2 x i64>, ptr %i.aaj, align 8
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %cf2_freeT1SeacComponent.exit
  %.sroa.02566.0 = phi <2 x i64> [ %.sroa.02566.0.copyload2567, %bb.ha ], [ %.sroa.02566.0.copyload, %cf2_freeT1SeacComponent.exit ]
  %.sroa.0.0 = phi <2 x i64> [ %.sroa.0.0.copyload2564, %bb.ha ], [ %.sroa.0.0.copyload, %cf2_freeT1SeacComponent.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.pre2225, i8 0, i64 16, i1 false)
  %.val1325 = load ptr, ptr %i.xl, align 8, !tbaa !285
  %i.aak = call fastcc i32 @cf2_getT1SeacComponent(ptr %.val1325, i32 noundef %.01086, ptr noundef %14) ; 2 uses
  %.not1216 = icmp eq i32 %i.aak, 0
  br i1 %.not1216, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %bb.hb
  %i.aal = trunc i64 %i.yj to i32
  %i.aam = sub i32 %i.aal, %i.xt
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %14, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef %i.aam, i32 noundef %i.xp, ptr noundef %i.i)
  %.val1327 = load ptr, ptr %i.xl, align 8, !tbaa !285
  %.val1328 = load ptr, ptr %i.zu, align 8, !tbaa !253 ; 2 uses
  %.val1329 = load ptr, ptr %i.zv, align 8, !tbaa !254
  %i.aan = getelementptr i8, ptr %.val1327, i64 240
  %.val1327.val = load ptr, ptr %i.aan, align 8, !tbaa !626
  %i.aao = getelementptr i8, ptr %.val1327.val, i64 104
  %.val1327.val.val = load ptr, ptr %i.aao, align 8, !tbaa !627 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %.val1328, ptr %8, align 8, !tbaa !641
  %i.aap = ptrtoint ptr %.val1329 to i64
  %i.aaq = ptrtoint ptr %.val1328 to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  %i.aas = trunc i64 %i.aar to i32
  %i.aat = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.aas, ptr %i.aat, align 8, !tbaa !643
  %.not.i1489 = icmp eq ptr %.val1327.val.val, null
  br i1 %.not.i1489, label %cf2_freeT1SeacComponent.exit1490, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aau = load ptr, ptr %.val1327.val.val, align 8, !tbaa !644
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !648
  %i.aax = getelementptr inbounds nuw i8, ptr %.val1327.val.val, i64 8
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !650
  call void %i.aaw(ptr noundef %i.aay, ptr noundef nonnull %8) #19, !inline_history !651
  br label %cf2_freeT1SeacComponent.exit1490

cf2_freeT1SeacComponent.exit1490:                 ; preds = %bb.hc, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.aaz = load ptr, ptr %i.dt, align 8, !tbaa !608
  store <2 x i64> %.sroa.02566.0, ptr %i.aaz, align 8
  %i.aba = load ptr, ptr %i.ds, align 8, !tbaa !640
  store <2 x i64> %.sroa.0.0, ptr %i.aba, align 8
  br label %bb.he

bb.he:                                            ; preds = %bb.hb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gq, %bb.go, %bb.gn, %cf2_freeT1SeacComponent.exit1490
  %.5 = phi i32 [ 18, %bb.go ], [ 18, %bb.gn ], [ 18, %bb.gq ], [ 18, %bb.gt ], [ %i.yt, %bb.gv ], [ %i.zr, %bb.gx ], [ 0, %cf2_freeT1SeacComponent.exit1490 ], [ 0, %bb.gw ], [ %i.aak, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.hf:                                            ; preds = %bb.fm
  br i1 %.not1153, label %cf2_hintmask_read.exit, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.abb = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.abc = sext i32 %i.abb to i64
  %i.abd = load ptr, ptr %i.ds, align 8, !tbaa !85
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  store i64 %i.abc, ptr %i.abe, align 8, !tbaa !156
  %i.abf = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.abg = sext i32 %i.abf to i64
  %i.abh = load ptr, ptr %i.ds, align 8, !tbaa !85
  store i64 %i.abg, ptr %i.abh, align 8, !tbaa !155
  %i.abi = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  %i.abj = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  %i.abk = load ptr, ptr %i.dt, align 8, !tbaa !84 ; 3 uses
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !155
  %i.abm = trunc i64 %i.abl to i32
  %i.abn = add i32 %i.abj, %i.abm
  %i.abo = sext i32 %i.abn to i64
  store i64 %i.abo, ptr %i.abk, align 8, !tbaa !155
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abk, i64 8 ; 2 uses
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !156
  %i.abr = trunc i64 %i.abq to i32
  %i.abs = add i32 %i.abi, %i.abr
  %i.abt = sext i32 %i.abs to i64
  store i64 %i.abt, ptr %i.abp, align 8, !tbaa !156
  store i8 1, ptr %i.h, align 1, !tbaa !38
  %i.abu = load i8, ptr %i.du, align 1, !tbaa !95
  %.not1206 = icmp eq i8 %i.abu, 0
  br i1 %.not1206, label %bb.hh, label %cf2_arrstack_setCount.exit.thread

bb.hh:                                            ; preds = %bb.hg
  %.not1207 = icmp eq i8 %.01025, 0
  br i1 %.not1207, label %cf2_hintmask_read.exit, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.abv = load i32, ptr %i.c, align 4, !tbaa !3
  %i.abw = add i32 %i.abv, %i.abj
  store i32 %i.abw, ptr %i.c, align 4, !tbaa !3
  %i.abx = load i32, ptr %i.d, align 4, !tbaa !3
  %i.aby = add i32 %i.abx, %i.abi
  store i32 %i.aby, ptr %i.d, align 4, !tbaa !3
  br label %cf2_hintmask_read.exit

bb.hj:                                            ; preds = %bb.fm
  %i.abz = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  %i.aca = icmp eq i32 %i.abz, -2147483648
  %i.acb = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 3 uses
  %i.acc = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.acd = load i32, ptr %i.cw, align 8, !tbaa !600
  %i.ace = zext i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %i.ace
  %i.acg = icmp eq ptr %i.acb, %i.acf             ; 2 uses
  br i1 %i.aca, label %bb.hk, label %bb.hp

bb.hk:                                            ; preds = %bb.hj
  br i1 %i.acg, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  %i.ach = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1491 = icmp eq ptr %i.ach, null
  br i1 %.not.i.i1491, label %.backedge.backedge, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !3
  %.not3.i.i1492 = icmp eq i32 %i.aci, 0
  br i1 %.not3.i.i1492, label %bb.hn, label %.backedge.backedge

bb.hn:                                            ; preds = %bb.hm
  store i32 130, ptr %i.ach, align 4, !tbaa !3
  br label %.backedge.backedge

bb.ho:                                            ; preds = %bb.hk
  store i32 2147483647, ptr %i.acb, align 4, !tbaa !38
  %i.acj = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  store i32 0, ptr %i.ack, align 4, !tbaa !604
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  store ptr %i.acl, ptr %i.cx, align 8, !tbaa !601
  br label %.backedge.backedge

bb.hp:                                            ; preds = %bb.hj
  br i1 %i.acg, label %bb.hq, label %bb.ht

bb.hq:                                            ; preds = %bb.hp
  %i.acm = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1493 = icmp eq ptr %i.acm, null
  br i1 %.not.i.i1493, label %.backedge.backedge, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !3
  %.not3.i.i1494 = icmp eq i32 %i.acn, 0
  br i1 %.not3.i.i1494, label %bb.hs, label %.backedge.backedge

bb.hs:                                            ; preds = %bb.hr
  store i32 130, ptr %i.acm, align 4, !tbaa !3
  br label %.backedge.backedge

bb.ht:                                            ; preds = %bb.hp
  %i.aco = call i32 @llvm.abs.i32(i32 %i.abz, i1 true)
  store i32 %i.aco, ptr %i.acb, align 4, !tbaa !38
  %i.acp = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  store i32 0, ptr %i.acq, align 4, !tbaa !604
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  store ptr %i.acr, ptr %i.cx, align 8, !tbaa !601
  br label %.backedge.backedge

bb.hu:                                            ; preds = %bb.fm
  %i.acs = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.act = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.acu = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.acv = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.acw = load i32, ptr %i.cw, align 8, !tbaa !600
  %i.acx = zext i32 %i.acw to i64
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %i.acx
  %i.acz = icmp eq ptr %i.acu, %i.acy
  br i1 %i.acz, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %bb.hu
  %i.ada = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1496 = icmp eq ptr %i.ada, null
  br i1 %.not.i.i1496, label %.backedge.backedge, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !3
  %.not3.i.i1497 = icmp eq i32 %i.adb, 0
  br i1 %.not3.i.i1497, label %bb.hx, label %.backedge.backedge

bb.hx:                                            ; preds = %bb.hw
  store i32 130, ptr %i.ada, align 4, !tbaa !3
  br label %.backedge.backedge

bb.hy:                                            ; preds = %bb.hu
  %i.adc = add i32 %i.act, %i.acs
  store i32 %i.adc, ptr %i.acu, align 4, !tbaa !38
  %i.add = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  store i32 0, ptr %i.ade, align 4, !tbaa !604
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store ptr %i.adf, ptr %i.cx, align 8, !tbaa !601
  br label %.backedge.backedge

bb.hz:                                            ; preds = %bb.fm
  %i.adg = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.adh = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.adi = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.adj = load ptr, ptr %i.cu, align 8, !tbaa !599
  %i.adk = load i32, ptr %i.cw, align 8, !tbaa !600
  %i.adl = zext i32 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.adl
  %i.adn = icmp eq ptr %i.adi, %i.adm
  br i1 %i.adn, label %bb.ia, label %bb.id

bb.ia:                                            ; preds = %bb.hz
  %i.ado = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1499 = icmp eq ptr %i.ado, null
  br i1 %.not.i.i1499, label %.backedge.backedge, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !3
  %.not3.i.i1500 = icmp eq i32 %i.adp, 0
  br i1 %.not3.i.i1500, label %bb.ic, label %.backedge.backedge

bb.ic:                                            ; preds = %bb.ib
  store i32 130, ptr %i.ado, align 4, !tbaa !3
  br label %.backedge.backedge

bb.id:                                            ; preds = %bb.hz
  %i.adq = sub i32 %i.adh, %i.adg
  store i32 %i.adq, ptr %i.adi, align 4, !tbaa !38
  %i.adr = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  store i32 0, ptr %i.ads, align 4, !tbaa !604
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  store ptr %i.adt, ptr %i.cx, align 8, !tbaa !601
  br label %.backedge.backedge

bb.ie:                                            ; preds = %bb.fm
  %i.adu = icmp ne i8 %.11019, 0
  %or.cond69 = select i1 %i.ue, i1 %i.adu, i1 false
  br i1 %or.cond69, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.adv = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp)
  %i.adw = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp)
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ie
  %i.adx = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  %i.ady = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.01088 = phi i32 [ %i.adv, %bb.if ], [ %i.adx, %bb.ig ]
  %.01087 = phi i32 [ %i.adw, %bb.if ], [ %i.ady, %bb.ig ]
  %.21020 = phi i8 [ 0, %bb.if ], [ %.11019, %bb.ig ] ; 4 uses
end_hunk_1
begin_hunk_2_@cf2_interpT2CharString:bb.a
  %.not3.i.i1593 = icmp eq i32 %i.azc, 0
  br i1 %.not3.i.i1593, label %bb.px, label %cf2_stack_popFixed.exit1594

bb.px:                                            ; preds = %bb.pw
  store i32 161, ptr %i.azb, align 4, !tbaa !3
  br label %cf2_stack_popFixed.exit1594

bb.py:                                            ; preds = %cf2_stack_popFixed.exit1589
  %i.azd = getelementptr inbounds i8, ptr %i.ayw, i64 -8 ; 2 uses
  store ptr %i.azd, ptr %i.cx, align 8, !tbaa !601
  %i.aze = getelementptr inbounds i8, ptr %i.ayw, i64 -4
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !604
  %i.azg = load i32, ptr %i.azd, align 4, !tbaa !38 ; 4 uses
  switch i32 %i.azf, label %cf2_stack_popFixed.exit1594 [
    i32 2, label %bb.pz
    i32 1, label %bb.qa
  ]

bb.pz:                                            ; preds = %bb.py
  %i.azh = shl i32 %i.azg, 16
  br label %cf2_stack_popFixed.exit1594

bb.qa:                                            ; preds = %bb.py
  %i.azi = add nsw i32 %i.azg, 8192
  %.lobit.neg.i1590 = ashr i32 %i.azg, 31
  %i.azj = add nsw i32 %i.azi, %.lobit.neg.i1590
  %i.azk = ashr i32 %i.azj, 14
  br label %cf2_stack_popFixed.exit1594

cf2_stack_popFixed.exit1594:                      ; preds = %bb.pv, %bb.pw, %bb.px, %bb.py, %bb.pz, %bb.qa
  %.0.i1591 = phi i32 [ %i.azk, %bb.qa ], [ 0, %bb.px ], [ %i.azh, %bb.pz ], [ 0, %bb.pv ], [ 0, %bb.pw ], [ %i.azg, %bb.py ] ; 2 uses
  %i.azl = load ptr, ptr %i.dt, align 8, !tbaa !84 ; 2 uses
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !155
  %i.azn = trunc i64 %i.azm to i32
  %i.azo = add i32 %.0.i1591, %i.azn
  %i.azp = sext i32 %i.azo to i64
  store i64 %i.azp, ptr %i.azl, align 8, !tbaa !155
  store i8 1, ptr %i.h, align 1, !tbaa !38
  %i.azq = load i8, ptr %i.du, align 1, !tbaa !95
  %.not1171 = icmp eq i8 %i.azq, 0
  br i1 %.not1171, label %bb.qb, label %cf2_arrstack_setCount.exit.thread

bb.qb:                                            ; preds = %cf2_stack_popFixed.exit1594
  %.not1172 = icmp eq i8 %.01025, 0
  br i1 %.not1172, label %cf2_hintmask_read.exit, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.azr = load i32, ptr %i.c, align 4, !tbaa !3
  %i.azs = add i32 %i.azr, %.0.i1591
  store i32 %i.azs, ptr %i.c, align 4, !tbaa !3
  br label %cf2_hintmask_read.exit

bb.qd:                                            ; preds = %bb.p
  %i.azt = icmp ne i8 %.01025, 0
  %or.cond83 = select i1 %.not1153, i1 true, i1 %i.azt
  br i1 %or.cond83, label %bb.qm, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.azu = load i32, ptr %i.c, align 4, !tbaa !3
  %i.azv = load i32, ptr %i.d, align 4, !tbaa !3
  call fastcc void @cf2_glyphpath_moveTo(ptr noundef %13, i32 noundef %i.azu, i32 noundef %i.azv)
  store i64 0, ptr %i.dj, align 8, !tbaa !653
  store i64 0, ptr %i.di, align 8, !tbaa !653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store ptr %i.m, ptr %12, align 8, !tbaa !561
  store i8 1, ptr %i.dq, align 1, !tbaa !654
  %i.azw = icmp sgt i32 %.01043, 0
  br i1 %i.azw, label %.lr.ph2123.preheader, label %bb.ql

.lr.ph2123.preheader:                             ; preds = %bb.qe
  %i.azx = zext nneg i32 %.01043 to i64           ; 3 uses
  %xtraiter = and i64 %i.azx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2123.prol.loopexit, label %.lr.ph2123.prol

.lr.ph2123.prol:                                  ; preds = %.lr.ph2123.preheader
  %indvars.iv.next.prol = add nsw i64 %i.azx, -1  ; 4 uses
  %.not.i1595.prol = icmp ult i32 %.01043, 18
  br i1 %.not.i1595.prol, label %.lr.ph2123.prol.loopexit, label %bb.qf

bb.qf:                                            ; preds = %.lr.ph2123.prol
  %i.azy = load i32, ptr %i.m, align 8, !tbaa !3
  %.not3.i.i1597.prol = icmp eq i32 %i.azy, 0
  br i1 %.not3.i.i1597.prol, label %bb.qg, label %.lr.ph2123.prol.loopexit

bb.qg:                                            ; preds = %bb.qf
  store i32 130, ptr %i.m, align 8, !tbaa !3
  br label %.lr.ph2123.prol.loopexit

.lr.ph2123.prol.loopexit:                         ; preds = %.lr.ph2123.prol, %bb.qf, %bb.qg, %.lr.ph2123.preheader
  %indvars.iv.unr = phi i64 [ %i.azx, %.lr.ph2123.preheader ], [ %indvars.iv.next.prol, %bb.qg ], [ %indvars.iv.next.prol, %bb.qf ], [ %indvars.iv.next.prol, %.lr.ph2123.prol ]
  %.0.i1598.lcssa.unr = phi i64 [ poison, %.lr.ph2123.preheader ], [ %indvars.iv.next.prol, %.lr.ph2123.prol ], [ 0, %bb.qg ], [ 0, %bb.qf ]
  %i.azz = icmp eq i32 %.01043, 1
  br i1 %i.azz, label %._crit_edge2124, label %.lr.ph2123

.lr.ph2123:                                       ; preds = %.lr.ph2123.prol.loopexit, %cf2_arrstack_getPointer.exit1599.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %cf2_arrstack_getPointer.exit1599.1 ], [ %indvars.iv.unr, %.lr.ph2123.prol.loopexit ] ; 4 uses
  %.not.i1595 = icmp samesign ult i64 %indvars.iv, 18
  br i1 %.not.i1595, label %cf2_arrstack_getPointer.exit1599, label %bb.qh

bb.qh:                                            ; preds = %.lr.ph2123
  %i.baa = load i32, ptr %i.m, align 8, !tbaa !3
  %.not3.i.i1597 = icmp eq i32 %i.baa, 0
  br i1 %.not3.i.i1597, label %bb.qi, label %cf2_arrstack_getPointer.exit1599

bb.qi:                                            ; preds = %bb.qh
  store i32 130, ptr %i.m, align 8, !tbaa !3
  br label %cf2_arrstack_getPointer.exit1599

cf2_arrstack_getPointer.exit1599:                 ; preds = %.lr.ph2123, %bb.qh, %bb.qi
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %.not.i1595.1 = icmp slt i64 %indvars.iv, 19
  br i1 %.not.i1595.1, label %cf2_arrstack_getPointer.exit1599.1, label %bb.qj

bb.qj:                                            ; preds = %cf2_arrstack_getPointer.exit1599
  %i.bab = load i32, ptr %i.m, align 8, !tbaa !3
  %.not3.i.i1597.1 = icmp eq i32 %i.bab, 0
  br i1 %.not3.i.i1597.1, label %bb.qk, label %cf2_arrstack_getPointer.exit1599.1

bb.qk:                                            ; preds = %bb.qj
  store i32 130, ptr %i.m, align 8, !tbaa !3
  br label %cf2_arrstack_getPointer.exit1599.1

cf2_arrstack_getPointer.exit1599.1:               ; preds = %bb.qk, %bb.qj, %cf2_arrstack_getPointer.exit1599
  %.0.i1598.1 = phi i64 [ %indvars.iv.next.1, %cf2_arrstack_getPointer.exit1599 ], [ 0, %bb.qk ], [ 0, %bb.qj ]
  %i.bac = icmp sgt i64 %indvars.iv, 2
  br i1 %i.bac, label %.lr.ph2123, label %._crit_edge2124, !llvm.loop !661

._crit_edge2124:                                  ; preds = %cf2_arrstack_getPointer.exit1599.1, %.lr.ph2123.prol.loopexit
  %.0.i1598.lcssa = phi i64 [ %.0.i1598.lcssa.unr, %.lr.ph2123.prol.loopexit ], [ %.0.i1598.1, %cf2_arrstack_getPointer.exit1599.1 ]
  %i.bad = shl nuw nsw i64 %.0.i1598.lcssa, 5
  %i.bae = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bad
  br label %bb.ql

bb.ql:                                            ; preds = %._crit_edge2124, %bb.qe
  %.21045.lcssa = phi i32 [ 0, %._crit_edge2124 ], [ %.01043, %bb.qe ]
  %.21041.lcssa = phi ptr [ %i.bae, %._crit_edge2124 ], [ %.01039, %bb.qe ] ; 3 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %.21041.lcssa, i64 8
  %i.bag = load ptr, ptr %i.baf, align 8, !tbaa !253
  %i.bah = getelementptr inbounds nuw i8, ptr %.21041.lcssa, i64 24
  store ptr %i.bag, ptr %i.bah, align 8, !tbaa !251
  br label %cf2_hintmask_read.exit

bb.qm:                                            ; preds = %bb.qd
  %.val1304 = load ptr, ptr %i.cu, align 8, !tbaa !599
  %.val1305 = load ptr, ptr %i.cx, align 8, !tbaa !601
  %i.bai = ptrtoint ptr %.val1305 to i64
  %i.baj = ptrtoint ptr %.val1304 to i64
  %i.bak = sub i64 %i.bai, %i.baj
  %i.bal = lshr exact i64 %i.bak, 3
  %i.bam = trunc i64 %i.bal to i32                ; 2 uses
  %i.ban = icmp eq i32 %i.bam, 1
  br i1 %i.ban, label %bb.qo, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.bao = icmp ne i32 %i.bam, 5
  %i.bap = load i8, ptr %i.h, align 1
  %i.baq = icmp ne i8 %i.bap, 0
  %or.cond97 = select i1 %i.bao, i1 true, i1 %i.baq
  br i1 %or.cond97, label %bb.qq, label %bb.qp

bb.qo:                                            ; preds = %bb.qm
  %.old = load i8, ptr %i.h, align 1, !tbaa !38
  %.old96.not = icmp eq i8 %.old, 0
  br i1 %.old96.not, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qn, %bb.qo
  %i.bar = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.cp, i32 noundef 0)
  %i.bas = add i32 %i.bar, %i.s
  store i32 %i.bas, ptr %7, align 4, !tbaa !3
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qo, %bb.qp, %bb.qn
  store i8 1, ptr %i.h, align 1, !tbaa !38
  %i.bat = load i8, ptr %i.db, align 8, !tbaa !503
  %.not1164 = icmp eq i8 %i.bat, 0
  br i1 %.not1164, label %bb.qr, label %cf2_arrstack_setCount.exit.thread

bb.qr:                                            ; preds = %bb.qq
  call fastcc void @cf2_glyphpath_closeOpenPath(ptr noundef %13)
  %i.bau = load i8, ptr %i.cg, align 1, !tbaa !282
  %.not1165 = icmp eq i8 %i.bau, 0
  br i1 %.not1165, label %bb.qs, label %cf2_arrstack_setCount.exit.thread

bb.qs:                                            ; preds = %bb.qr
  %i.bav = load i8, ptr %i.da, align 4, !tbaa !283
  %.not1166 = icmp eq i8 %i.bav, 0
  br i1 %.not1166, label %bb.qt, label %cf2_arrstack_setCount.exit.thread

bb.qt:                                            ; preds = %bb.qs
  %.val1300 = load ptr, ptr %i.cu, align 8, !tbaa !599
  %.val1301 = load ptr, ptr %i.cx, align 8, !tbaa !601
  %i.baw = ptrtoint ptr %.val1301 to i64
  %i.bax = ptrtoint ptr %.val1300 to i64
  %i.bay = sub i64 %i.baw, %i.bax
  %i.baz = and i64 %i.bay, 34359738352
  %.not2063 = icmp eq i64 %i.baz, 0
  br i1 %.not2063, label %cf2_arrstack_setCount.exit.thread, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %.not1167 = icmp eq i8 %4, 0
  br i1 %.not1167, label %bb.qv, label %bb.qy

bb.qv:                                            ; preds = %bb.qu
  %i.bba = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp)
  %i.bbb = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp)
  %i.bbc = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  store i32 %i.bbc, ptr %i.d, align 4, !tbaa !3
  %i.bbd = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  store i32 %i.bbd, ptr %i.c, align 4, !tbaa !3
  %i.bbe = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bba, ptr noundef %15) ; 2 uses
  %.not1168 = icmp eq i32 %i.bbe, 0
  br i1 %.not1168, label %bb.qw, label %bb.qy

bb.qw:                                            ; preds = %bb.qv
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef %i.bbd, i32 noundef %i.bbc, ptr noundef %i.j)
  %i.bbf = getelementptr i8, ptr %i.l, i64 8      ; 2 uses
  %.val1335 = load ptr, ptr %i.bbf, align 8, !tbaa !285
  %i.bbg = getelementptr i8, ptr %i.l, i64 1152   ; 2 uses
  %.val1336 = load ptr, ptr %i.bbg, align 8, !tbaa !662
  %i.bbh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !254
  %i.bbk = load ptr, ptr %i.bbh, align 8, !tbaa !253
  %i.bbl = ptrtoint ptr %i.bbj to i64
  %i.bbm = ptrtoint ptr %i.bbk to i64
  %i.bbn = sub i64 %i.bbl, %i.bbm
  call void %.val1336(ptr noundef %.val1335, ptr noundef nonnull %i.bbh, i64 noundef %i.bbn) #19, !inline_history !663
  %i.bbo = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bbb, ptr noundef %15) ; 2 uses
  %.not1169 = icmp eq i32 %i.bbo, 0
  br i1 %.not1169, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, ptr noundef %i.j)
  %.val1333 = load ptr, ptr %i.bbf, align 8, !tbaa !285
  %.val1334 = load ptr, ptr %i.bbg, align 8, !tbaa !662
  %i.bbp = load ptr, ptr %i.bbi, align 8, !tbaa !254
  %i.bbq = load ptr, ptr %i.bbh, align 8, !tbaa !253
  %i.bbr = ptrtoint ptr %i.bbp to i64
  %i.bbs = ptrtoint ptr %i.bbq to i64
  %i.bbt = sub i64 %i.bbr, %i.bbs
  call void %.val1334(ptr noundef %.val1333, ptr noundef nonnull %i.bbh, i64 noundef %i.bbt) #19, !inline_history !663
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qw, %bb.qv, %bb.qu, %bb.qx
  %.12 = phi i32 [ 0, %bb.qx ], [ 18, %bb.qu ], [ %i.bbe, %bb.qv ], [ %i.bbo, %bb.qw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.qz:                                            ; preds = %bb.p, %bb.p
  %.val1298 = load ptr, ptr %i.cu, align 8, !tbaa !599
  %.val1299 = load ptr, ptr %i.cx, align 8, !tbaa !601
  %i.bbu = ptrtoint ptr %.val1299 to i64
  %i.bbv = ptrtoint ptr %.val1298 to i64
  %i.bbw = sub i64 %i.bbu, %i.bbv
  %i.bbx = and i64 %i.bbw, 34359738352
  %i.bby = icmp eq i64 %i.bbx, 0
  %.val1318 = load i8, ptr %i.z, align 8
  %.not1162 = icmp eq i8 %.val1318, 0
  %or.cond2061 = select i1 %i.bby, i1 true, i1 %.not1162
  br i1 %or.cond2061, label %bb.ra, label %cf2_hintmask_read.exit

bb.ra:                                            ; preds = %bb.qz
  call fastcc void @cf2_doStems(ptr noundef nonnull %0, ptr noundef %i.cp, ptr noundef %11, ptr noundef %7, ptr noundef %i.h, i32 noundef 0)
  %i.bbz = load i8, ptr %i.db, align 8, !tbaa !503
  %.not1163 = icmp eq i8 %i.bbz, 0
  br i1 %.not1163, label %bb.rb, label %cf2_arrstack_setCount.exit.thread

bb.rb:                                            ; preds = %bb.ra
  %i.bca = icmp eq i8 %.01037, 19
  br i1 %i.bca, label %bb.rc, label %bb.rk

bb.rc:                                            ; preds = %bb.rb
  %.val1324 = load i64, ptr %i.di, align 8, !tbaa !653
  %.val1323 = load i64, ptr %i.dj, align 8, !tbaa !653
  %i.bcb = add i64 %.val1323, %.val1324           ; 3 uses
  %i.bcc = icmp ugt i64 %i.bcb, 96
  br i1 %i.bcc, label %bb.rd, label %cf2_hintmask_setCounts.exit.i

bb.rd:                                            ; preds = %bb.rc
  %i.bcd = load ptr, ptr %12, align 8, !tbaa !561 ; 3 uses
  %.not.i.i.i1601 = icmp eq ptr %i.bcd, null
  br i1 %.not.i.i.i1601, label %cf2_hintmask_read.exit, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !3
  %.not3.i.i.i1602 = icmp eq i32 %i.bce, 0
  br i1 %.not3.i.i.i1602, label %bb.rf, label %cf2_hintmask_read.exit

bb.rf:                                            ; preds = %bb.re
  store i32 18, ptr %i.bcd, align 4, !tbaa !3
  br label %cf2_hintmask_read.exit

cf2_hintmask_setCounts.exit.i:                    ; preds = %bb.rc
  store i64 %i.bcb, ptr %i.do, align 8, !tbaa !664
  %i.bcf = add nuw nsw i64 %i.bcb, 7
  %i.bcg = lshr i64 %i.bcf, 3                     ; 3 uses
  store i64 %i.bcg, ptr %i.dp, align 8, !tbaa !665
  store i8 1, ptr %i.z, align 8, !tbaa !607
  store i8 1, ptr %i.dq, align 1, !tbaa !654
  %.not.i1600 = icmp eq i64 %i.bcg, 0
  br i1 %.not.i1600, label %cf2_hintmask_read.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %cf2_hintmask_setCounts.exit.i, %cf2_buf_readByte.exit.i
  %.011.i = phi i64 [ %i.bcp, %cf2_buf_readByte.exit.i ], [ 0, %cf2_hintmask_setCounts.exit.i ] ; 2 uses
  %i.bch = load ptr, ptr %i.fd, align 8, !tbaa !251 ; 3 uses
  %i.bci = load ptr, ptr %i.fc, align 8, !tbaa !254
  %i.bcj = icmp ult ptr %i.bch, %i.bci
  br i1 %i.bcj, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %.lr.ph.i
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bch, i64 1
  store ptr %i.bck, ptr %i.fd, align 8, !tbaa !251
  %i.bcl = load i8, ptr %i.bch, align 1, !tbaa !38
  br label %cf2_buf_readByte.exit.i

bb.rh:                                            ; preds = %.lr.ph.i
  %i.bcm = load ptr, ptr %.01039, align 8, !tbaa !624 ; 3 uses
  %.not.i.i7.i = icmp eq ptr %i.bcm, null
  br i1 %.not.i.i7.i, label %cf2_buf_readByte.exit.i, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !3
  %.not3.i.i8.i = icmp eq i32 %i.bcn, 0
  br i1 %.not3.i.i8.i, label %bb.rj, label %cf2_buf_readByte.exit.i

bb.rj:                                            ; preds = %bb.ri
  store i32 85, ptr %i.bcm, align 4, !tbaa !3
  br label %cf2_buf_readByte.exit.i

cf2_buf_readByte.exit.i:                          ; preds = %bb.rj, %bb.ri, %bb.rh, %bb.rg
  %.0.i9.i = phi i8 [ %i.bcl, %bb.rg ], [ 0, %bb.rh ], [ 0, %bb.ri ], [ 0, %bb.rj ]
  %i.bco = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.011.i
  store i8 %.0.i9.i, ptr %i.bco, align 1, !tbaa !38
  %i.bcp = add nuw nsw i64 %.011.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bcp, %i.bcg
  br i1 %exitcond.not.i, label %cf2_hintmask_read.exit, label %.lr.ph.i, !llvm.loop !666

bb.rk:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.fb, i8 0, i64 6160, i1 false)
  %i.bcq = load i8, ptr %i.ak, align 8, !tbaa !312
  store i8 %i.bcq, ptr %i.dd, align 1, !tbaa !573
  store i32 %i.bg, ptr %i.de, align 4, !tbaa !579
  store ptr %0, ptr %16, align 8, !tbaa !574
  store ptr %i.ai, ptr %i.df, align 8, !tbaa !575
  store ptr %i.ae, ptr %i.dg, align 8, !tbaa !576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, i8 0, i64 40, i1 false)
  store ptr %i.m, ptr %17, align 8, !tbaa !561
  %.val1322 = load i64, ptr %i.di, align 8, !tbaa !653
  %.val1321 = load i64, ptr %i.dj, align 8, !tbaa !653
  %i.bcr = add i64 %.val1321, %.val1322           ; 3 uses
  %i.bcs = icmp ugt i64 %i.bcr, 96
  br i1 %i.bcs, label %bb.rl, label %cf2_hintmask_setCounts.exit.i1603

bb.rl:                                            ; preds = %bb.rk
  %i.bct = load i32, ptr %i.m, align 8, !tbaa !3
  %.not3.i.i.i1613 = icmp eq i32 %i.bct, 0
  br i1 %.not3.i.i.i1613, label %bb.rm, label %cf2_hintmask_read.exit1614

bb.rm:                                            ; preds = %bb.rl
  store i32 18, ptr %i.m, align 8, !tbaa !3
  br label %cf2_hintmask_read.exit1614

cf2_hintmask_setCounts.exit.i1603:                ; preds = %bb.rk
  store i64 %i.bcr, ptr %i.dk, align 8, !tbaa !664
  %i.bcu = add nuw nsw i64 %i.bcr, 7
  %i.bcv = lshr i64 %i.bcu, 3                     ; 3 uses
  store i64 %i.bcv, ptr %i.dl, align 8, !tbaa !665
  store i8 1, ptr %i.dh, align 8, !tbaa !607
  store i8 1, ptr %i.dm, align 1, !tbaa !654
  %.not.i1604 = icmp eq i64 %i.bcv, 0
  br i1 %.not.i1604, label %cf2_hintmask_read.exit1614, label %.lr.ph.i1605

.lr.ph.i1605:                                     ; preds = %cf2_hintmask_setCounts.exit.i1603, %cf2_buf_readByte.exit.i1609
  %.011.i1606 = phi i64 [ %i.bde, %cf2_buf_readByte.exit.i1609 ], [ 0, %cf2_hintmask_setCounts.exit.i1603 ] ; 2 uses
  %i.bcw = load ptr, ptr %i.fd, align 8, !tbaa !251 ; 3 uses
  %i.bcx = load ptr, ptr %i.fc, align 8, !tbaa !254
  %i.bcy = icmp ult ptr %i.bcw, %i.bcx
  br i1 %i.bcy, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %.lr.ph.i1605
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcw, i64 1
  store ptr %i.bcz, ptr %i.fd, align 8, !tbaa !251
  %i.bda = load i8, ptr %i.bcw, align 1, !tbaa !38
  br label %cf2_buf_readByte.exit.i1609

bb.ro:                                            ; preds = %.lr.ph.i1605
  %i.bdb = load ptr, ptr %.01039, align 8, !tbaa !624 ; 3 uses
  %.not.i.i7.i1607 = icmp eq ptr %i.bdb, null
  br i1 %.not.i.i7.i1607, label %cf2_buf_readByte.exit.i1609, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !3
  %.not3.i.i8.i1608 = icmp eq i32 %i.bdc, 0
  br i1 %.not3.i.i8.i1608, label %bb.rq, label %cf2_buf_readByte.exit.i1609

bb.rq:                                            ; preds = %bb.rp
  store i32 85, ptr %i.bdb, align 4, !tbaa !3
  br label %cf2_buf_readByte.exit.i1609

cf2_buf_readByte.exit.i1609:                      ; preds = %bb.rq, %bb.rp, %bb.ro, %bb.rn
  %.0.i9.i1610 = phi i8 [ %i.bda, %bb.rn ], [ 0, %bb.ro ], [ 0, %bb.rp ], [ 0, %bb.rq ]
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.011.i1606
  store i8 %.0.i9.i1610, ptr %i.bdd, align 1, !tbaa !38
  %i.bde = add nuw nsw i64 %.011.i1606, 1         ; 2 uses
  %exitcond.not.i1611 = icmp eq i64 %i.bde, %i.bcv
  br i1 %exitcond.not.i1611, label %cf2_hintmask_read.exit1614, label %.lr.ph.i1605, !llvm.loop !666

cf2_hintmask_read.exit1614:                       ; preds = %cf2_buf_readByte.exit.i1609, %bb.rl, %bb.rm, %cf2_hintmask_setCounts.exit.i1603
  call fastcc void @cf2_hintmap_build(ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %17, i32 noundef 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %cf2_hintmask_read.exit

bb.rr:                                            ; preds = %bb.p
  %.val1296 = load ptr, ptr %i.cu, align 8, !tbaa !599 ; 5 uses
  %.val1297 = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 7 uses
  %i.bdf = ptrtoint ptr %.val1297 to i64
  %i.bdg = ptrtoint ptr %.val1296 to i64
  %i.bdh = sub i64 %i.bdf, %i.bdg
  %i.bdi = lshr exact i64 %i.bdh, 3
  %i.bdj = trunc i64 %i.bdi to i32
  %i.bdk = icmp ult i32 %i.bdj, 3
  %i.bdl = load i8, ptr %i.h, align 1
  %i.bdm = icmp ne i8 %i.bdl, 0
  %or.cond87 = select i1 %i.bdk, i1 true, i1 %i.bdm
  br i1 %or.cond87, label %bb.rv, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.bdn = getelementptr inbounds nuw i8, ptr %.val1296, i64 4
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !604
  %i.bdp = load i32, ptr %.val1296, align 4, !tbaa !38 ; 4 uses
  switch i32 %i.bdo, label %cf2_stack_getReal.exit1622 [
    i32 2, label %bb.rt
    i32 1, label %bb.ru
  ]

bb.rt:                                            ; preds = %bb.rs
  %i.bdq = shl i32 %i.bdp, 16
  br label %cf2_stack_getReal.exit1622

bb.ru:                                            ; preds = %bb.rs
  %i.bdr = add nsw i32 %i.bdp, 8192
  %.lobit.neg.i1621 = ashr i32 %i.bdp, 31
  %i.bds = add nsw i32 %i.bdr, %.lobit.neg.i1621
  %i.bdt = ashr i32 %i.bds, 14
  br label %cf2_stack_getReal.exit1622

cf2_stack_getReal.exit1622:                       ; preds = %bb.rs, %bb.rt, %bb.ru
  %.0.i1620 = phi i32 [ %i.bdt, %bb.ru ], [ %i.bdp, %bb.rs ], [ %i.bdq, %bb.rt ]
  %i.bdu = add i32 %.0.i1620, %i.s
  store i32 %i.bdu, ptr %7, align 4, !tbaa !3
  br label %bb.rv

bb.rv:                                            ; preds = %cf2_stack_getReal.exit1622, %bb.rr
  store i8 1, ptr %i.h, align 1, !tbaa !38
  %i.bdv = load i8, ptr %i.db, align 8, !tbaa !503
  %.not1160 = icmp eq i8 %i.bdv, 0
  br i1 %.not1160, label %bb.rw, label %cf2_arrstack_setCount.exit.thread

bb.rw:                                            ; preds = %bb.rv
  %i.bdw = load i32, ptr %i.d, align 4, !tbaa !3
  %i.bdx = icmp eq ptr %.val1297, %.val1296
  br i1 %i.bdx, label %bb.rx, label %bb.sa

bb.rx:                                            ; preds = %bb.rw
  %i.bdy = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1625 = icmp eq ptr %i.bdy, null
  br i1 %.not.i.i1625, label %cf2_stack_popFixed.exit1627, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !3
  %.not3.i.i1626 = icmp eq i32 %i.bdz, 0
  br i1 %.not3.i.i1626, label %bb.rz, label %cf2_stack_popFixed.exit1627

bb.rz:                                            ; preds = %bb.ry
  store i32 161, ptr %i.bdy, align 4, !tbaa !3
  br label %cf2_stack_popFixed.exit1627

bb.sa:                                            ; preds = %bb.rw
  %i.bea = getelementptr inbounds i8, ptr %.val1297, i64 -8 ; 5 uses
  store ptr %i.bea, ptr %i.cx, align 8, !tbaa !601
  %i.beb = getelementptr inbounds i8, ptr %.val1297, i64 -4
  %i.bec = load i32, ptr %i.beb, align 4, !tbaa !604
  %i.bed = load i32, ptr %i.bea, align 4, !tbaa !38 ; 4 uses
  switch i32 %i.bec, label %cf2_stack_popFixed.exit1627 [
    i32 2, label %bb.sb
    i32 1, label %bb.sc
  ]

bb.sb:                                            ; preds = %bb.sa
  %i.bee = shl i32 %i.bed, 16
  br label %cf2_stack_popFixed.exit1627

bb.sc:                                            ; preds = %bb.sa
  %i.bef = add nsw i32 %i.bed, 8192
  %.lobit.neg.i1623 = ashr i32 %i.bed, 31
  %i.beg = add nsw i32 %i.bef, %.lobit.neg.i1623
  %i.beh = ashr i32 %i.beg, 14
  br label %cf2_stack_popFixed.exit1627

cf2_stack_popFixed.exit1627:                      ; preds = %bb.rx, %bb.ry, %bb.rz, %bb.sa, %bb.sb, %bb.sc
  %i.bei = phi ptr [ %i.bea, %bb.sc ], [ %.val1297, %bb.rz ], [ %i.bea, %bb.sb ], [ %.val1297, %bb.rx ], [ %.val1297, %bb.ry ], [ %i.bea, %bb.sa ] ; 3 uses
  %.0.i1624 = phi i32 [ %i.beh, %bb.sc ], [ 0, %bb.rz ], [ %i.bee, %bb.sb ], [ 0, %bb.rx ], [ 0, %bb.ry ], [ %i.bed, %bb.sa ]
  %i.bej = add i32 %.0.i1624, %i.bdw              ; 2 uses
  store i32 %i.bej, ptr %i.d, align 4, !tbaa !3
  %i.bek = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bel = icmp eq ptr %i.bei, %.val1296
  br i1 %i.bel, label %bb.sd, label %bb.sg

bb.sd:                                            ; preds = %cf2_stack_popFixed.exit1627
  %i.bem = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1630 = icmp eq ptr %i.bem, null
  br i1 %.not.i.i1630, label %cf2_stack_popFixed.exit1632, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.ben = load i32, ptr %i.bem, align 4, !tbaa !3
  %.not3.i.i1631 = icmp eq i32 %i.ben, 0
  br i1 %.not3.i.i1631, label %bb.sf, label %cf2_stack_popFixed.exit1632

bb.sf:                                            ; preds = %bb.se
  store i32 161, ptr %i.bem, align 4, !tbaa !3
  br label %cf2_stack_popFixed.exit1632

bb.sg:                                            ; preds = %cf2_stack_popFixed.exit1627
  %i.beo = getelementptr inbounds i8, ptr %i.bei, i64 -8 ; 2 uses
  store ptr %i.beo, ptr %i.cx, align 8, !tbaa !601
  %i.bep = getelementptr inbounds i8, ptr %i.bei, i64 -4
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !604
  %i.ber = load i32, ptr %i.beo, align 4, !tbaa !38 ; 4 uses
  switch i32 %i.beq, label %cf2_stack_popFixed.exit1632 [
    i32 2, label %bb.sh
    i32 1, label %bb.si
  ]

bb.sh:                                            ; preds = %bb.sg
  %i.bes = shl i32 %i.ber, 16
  br label %cf2_stack_popFixed.exit1632

bb.si:                                            ; preds = %bb.sg
  %i.bet = add nsw i32 %i.ber, 8192
  %.lobit.neg.i1628 = ashr i32 %i.ber, 31
  %i.beu = add nsw i32 %i.bet, %.lobit.neg.i1628
  %i.bev = ashr i32 %i.beu, 14
  br label %cf2_stack_popFixed.exit1632

cf2_stack_popFixed.exit1632:                      ; preds = %bb.sd, %bb.se, %bb.sf, %bb.sg, %bb.sh, %bb.si
  %.0.i1629 = phi i32 [ %i.bev, %bb.si ], [ 0, %bb.sf ], [ %i.bes, %bb.sh ], [ 0, %bb.sd ], [ 0, %bb.se ], [ %i.ber, %bb.sg ]
  %i.bew = add i32 %.0.i1629, %i.bek              ; 2 uses
  store i32 %i.bew, ptr %i.c, align 4, !tbaa !3
  %i.bex = load i32, ptr %i.dc, align 8, !tbaa !609
  %.not1161 = icmp eq i32 %i.bex, 0
  br i1 %.not1161, label %bb.sj, label %cf2_hintmask_read.exit

bb.sj:                                            ; preds = %cf2_stack_popFixed.exit1632
  call fastcc void @cf2_glyphpath_moveTo(ptr noundef %13, i32 noundef %i.bew, i32 noundef %i.bej)
  br label %cf2_hintmask_read.exit

bb.sk:                                            ; preds = %bb.p
  %.val1294 = load ptr, ptr %i.cu, align 8, !tbaa !599 ; 4 uses
  %.val1295 = load ptr, ptr %i.cx, align 8, !tbaa !601 ; 4 uses
  %i.bey = ptrtoint ptr %.val1295 to i64
  %i.bez = ptrtoint ptr %.val1294 to i64
  %i.bfa = sub i64 %i.bey, %i.bez
  %i.bfb = and i64 %i.bfa, 34359738352
  %i.bfc = icmp eq i64 %i.bfb, 0
  %i.bfd = load i8, ptr %i.h, align 1
  %i.bfe = icmp ne i8 %i.bfd, 0
  %or.cond91 = select i1 %i.bfc, i1 true, i1 %i.bfe
  br i1 %or.cond91, label %bb.so, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.bff = getelementptr inbounds nuw i8, ptr %.val1294, i64 4
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !604
  %i.bfh = load i32, ptr %.val1294, align 4, !tbaa !38 ; 4 uses
  switch i32 %i.bfg, label %cf2_stack_getReal.exit1640 [
    i32 2, label %bb.sm
    i32 1, label %bb.sn
  ]

bb.sm:                                            ; preds = %bb.sl
  %i.bfi = shl i32 %i.bfh, 16
  br label %cf2_stack_getReal.exit1640

bb.sn:                                            ; preds = %bb.sl
  %i.bfj = add nsw i32 %i.bfh, 8192
  %.lobit.neg.i1639 = ashr i32 %i.bfh, 31
  %i.bfk = add nsw i32 %i.bfj, %.lobit.neg.i1639
  %i.bfl = ashr i32 %i.bfk, 14
  br label %cf2_stack_getReal.exit1640

cf2_stack_getReal.exit1640:                       ; preds = %bb.sl, %bb.sm, %bb.sn
  %.0.i1638 = phi i32 [ %i.bfl, %bb.sn ], [ %i.bfh, %bb.sl ], [ %i.bfi, %bb.sm ]
  %i.bfm = add i32 %.0.i1638, %i.s
  store i32 %i.bfm, ptr %7, align 4, !tbaa !3
  br label %bb.so

bb.so:                                            ; preds = %cf2_stack_getReal.exit1640, %bb.sk
  store i8 1, ptr %i.h, align 1, !tbaa !38
  %i.bfn = load i8, ptr %i.db, align 8, !tbaa !503
  %.not1158 = icmp eq i8 %i.bfn, 0
  br i1 %.not1158, label %bb.sp, label %cf2_arrstack_setCount.exit.thread

bb.sp:                                            ; preds = %bb.so
  %i.bfo = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bfp = icmp eq ptr %.val1295, %.val1294
  br i1 %i.bfp, label %bb.sq, label %bb.st

bb.sq:                                            ; preds = %bb.sp
  %i.bfq = load ptr, ptr %i.cr, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1643 = icmp eq ptr %i.bfq, null
  br i1 %.not.i.i1643, label %cf2_stack_popFixed.exit1645, label %bb.sr
end_hunk_2
