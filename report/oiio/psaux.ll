inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cf2_builder_cubeTo:bb.a
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
define internal fastcc i32 @ps_builder_start_point(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
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
define internal fastcc void @cf2_interpT2CharString(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext range(i8 0, 2) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %7) unnamed_addr #0 {
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
  %.val1282 = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.q = getelementptr i8, ptr %.val1282, i64 1032
  %.val1282.val = load i64, ptr %i.q, align 8, !tbaa !556
  %i.r = trunc i64 %.val1282.val to i32
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
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 12384 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 12408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.ai, i8 0, i64 6160, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !312 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 12409
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !573
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 12412
  store ptr %0, ptr %18, align 8, !tbaa !574
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 12392
  store ptr %18, ptr %i.an, align 8, !tbaa !575
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 12400
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !576
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 6200
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 6224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.aq, i8 0, i64 6160, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 6225
  store i8 %i.ak, ptr %i.ar, align 1, !tbaa !573
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 6228
  store ptr %0, ptr %i.ap, align 8, !tbaa !574
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 6208
  store ptr %18, ptr %i.at, align 8, !tbaa !575
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 6216
  store ptr %i.ae, ptr %i.au, align 8, !tbaa !576
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.av, i8 0, i64 6160, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 41
  store i8 %i.ak, ptr %i.aw, align 1, !tbaa !573
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 44
  store ptr %0, ptr %i.ab, align 8, !tbaa !574
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %18, ptr %i.ay, align 8, !tbaa !575
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.ae, ptr %i.az, align 8, !tbaa !576
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !577
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 18624
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !578
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 18628
  %i.bf = load i32, ptr %i.o, align 8, !tbaa !325 ; 4 uses
  %i.bg = load <2 x i32>, ptr %i.bd, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.am, align 4, !tbaa !579
  store i32 %i.bf, ptr %i.as, align 4, !tbaa !579
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !579
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 18640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !580
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 18664
  store ptr %10, ptr %i.bi, align 8, !tbaa !581
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 18672
  store ptr %11, ptr %i.bj, align 8, !tbaa !582
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 18680
  store ptr %12, ptr %i.bk, align 8, !tbaa !583
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 18688
  store i32 %6, ptr %i.bl, align 8, !tbaa !584
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 18696
  store ptr %i.aa, ptr %i.bm, align 8, !tbaa !585
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !323
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 18658
  store i8 %i.bo, ptr %i.bp, align 2, !tbaa !586
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !321 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 18704
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !587
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !322 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 18708
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !588
  %i.bw = call i32 @llvm.abs.i32(i32 %i.br, i1 false)
  %i.bx = call i32 @llvm.abs.i32(i32 %i.bu, i1 false)
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bw, i32 %i.bx)
  %i.by = shl nsw i32 %spec.select.i, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 18712
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !589
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 18716
  store i32 6554, ptr %i.ca, align 4, !tbaa !590
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 18659 ; 2 uses
  store i8 1, ptr %i.cb, align 1, !tbaa !591
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 18656 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 18657 ; 3 uses
  store i8 0, ptr %i.cd, align 1, !tbaa !592
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 18800 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 6 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !282 ; 2 uses
  %.not = icmp ne i8 %i.cg, 0
  %i.ch = zext i1 %.not to i8
  store i8 %i.ch, ptr %i.h, align 1, !tbaa !38
  %.val1283 = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.ci = getelementptr i8, ptr %.val1283, i64 1024
  %.val1283.val = load i64, ptr %i.ci, align 8, !tbaa !593
  %i.cj = trunc i64 %.val1283.val to i32
  %i.ck = shl i32 %i.cj, 16
  store i32 %i.ck, ptr %7, align 4, !tbaa !3
  %.not1147 = icmp eq i8 %i.cg, 0
  br i1 %.not1147, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cl = getelementptr i8, ptr %i.l, i64 1048
  %.val1284 = load ptr, ptr %i.cl, align 8, !tbaa !216
  %i.cm = getelementptr i8, ptr %.val1284, i64 1960
  %.val1284.val = load i32, ptr %i.cm, align 8, !tbaa !594
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.cn = phi i32 [ %.val1284.val, %bb.b ], [ 48, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.co = call ptr @ft_mem_qalloc(ptr noundef %i.n, i64 noundef 40, ptr noundef nonnull %i.b) #19 ; 148 uses
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %bb.d, label %cf2_stack_init.exit.thread

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.co, align 8, !tbaa !595
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 93 uses
  store ptr %i.m, ptr %i.cq, align 8, !tbaa !598
  %i.cr = zext i32 %i.cn to i64
  %i.cs = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 8, i64 noundef 0, i64 noundef %i.cr, ptr noundef null, ptr noundef nonnull %i.b) #19 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.co, i64 16     ; 77 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !599
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !3
  %.not15.i = icmp eq i32 %i.cu, 0
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ft_mem_free(ptr noundef %i.n, ptr noundef nonnull %i.co) #19
  br label %cf2_stack_init.exit.thread

cf2_stack_init.exit.thread:                       ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 36 uses
  store i32 %i.cn, ptr %i.cv, align 8, !tbaa !600
  %i.cw = getelementptr i8, ptr %i.co, i64 24     ; 157 uses
  store ptr %i.cs, ptr %i.cw, align 8, !tbaa !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.cx = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 1, i64 noundef 0, i64 noundef 544, ptr noundef null, ptr noundef nonnull %i.a) #19 ; 60 uses
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.cy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.pr = load i32, ptr %i.m, align 8, !tbaa !3
  %.not1149 = icmp eq i32 %.pr, 0                 ; 2 uses
  br i1 %.not.i.i, label %cf2_arrstack_setCount.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not1149, label %cf2_setError.exit.sink.split, label %cf2_setError.exit

cf2_arrstack_setCount.exit:                       ; preds = %bb.f
  br i1 %.not1149, label %bb.h, label %cf2_setError.exit

bb.h:                                             ; preds = %cf2_arrstack_setCount.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !602
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 1080 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 928 ; 7 uses
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 25
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 28
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 9
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 9 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 91 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 1240 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 1256 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 1248 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 932 ; 4 uses
  %i.dx = getelementptr i8, ptr %i.l, i64 24      ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.l, i64 1184
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 1096
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 1088
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 1104
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 1176
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 1168
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 1100
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 1092
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 1112
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 18784
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 18792
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 18720
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 18736
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 18744
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %.01043 = phi i32 [ 0, %bb.h ], [ %.01043.be, %.backedge.backedge ] ; 235 uses
  %.01039 = phi ptr [ %i.cx, %bb.h ], [ %.01039.be, %.backedge.backedge ] ; 237 uses
  %.01038 = phi i32 [ 20000000, %bb.h ], [ %.01038.be, %.backedge.backedge ] ; 2 uses
  %.01027 = phi i32 [ 0, %bb.h ], [ %.01027.be, %.backedge.backedge ] ; 4 uses
  %.01025 = phi i8 [ 0, %bb.h ], [ %.01025.be, %.backedge.backedge ] ; 225 uses
  %.01018 = phi i8 [ 0, %bb.h ], [ %.01018.be, %.backedge.backedge ] ; 4 uses
  %.01003 = phi i32 [ 0, %bb.h ], [ %.01003.be, %.backedge.backedge ] ; 129 uses
  %i.fa = getelementptr i8, ptr %.01039, i64 16   ; 3 uses
  %.01039.val = load ptr, ptr %i.fa, align 8, !tbaa !254 ; 10 uses
  %i.fb = getelementptr i8, ptr %.01039, i64 24   ; 15 uses
  %.01039.val1286 = load ptr, ptr %i.fb, align 8, !tbaa !251 ; 4 uses
  %.not2063 = icmp ult ptr %.01039.val1286, %.01039.val
  br i1 %.not2063, label %cf2_buf_readByte.exit, label %bb.i

bb.i:                                             ; preds = %.backedge
  %.not1152 = icmp eq i32 %.01043, 0
  %. = select i1 %.not1152, i32 14, i32 11
  br label %cf2_buf_readByte.exit.thread

cf2_buf_readByte.exit:                            ; preds = %.backedge
  %i.fc = getelementptr inbounds nuw i8, ptr %.01039.val1286, i64 1 ; 3 uses
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !251
  %i.fd = load i8, ptr %.01039.val1286, align 1, !tbaa !38 ; 2 uses
  %i.fe = zext i8 %i.fd to i32                    ; 2 uses
  switch i8 %i.fd, label %cf2_buf_readByte.exit.thread [
    i8 14, label %bb.j
    i8 11, label %bb.j
  ]

bb.j:                                             ; preds = %cf2_buf_readByte.exit, %cf2_buf_readByte.exit
  %i.ff = load i8, ptr %i.cf, align 1, !tbaa !282
  %.not1151 = icmp eq i8 %i.ff, 0
  %spec.select = select i1 %.not1151, i32 %i.fe, i32 0
  br label %cf2_buf_readByte.exit.thread

cf2_buf_readByte.exit.thread:                     ; preds = %bb.j, %cf2_buf_readByte.exit, %bb.i
  %i.fg = phi ptr [ %.01039.val1286, %bb.i ], [ %i.fc, %cf2_buf_readByte.exit ], [ %i.fc, %bb.j ] ; 21 uses
  %.01037 = phi i32 [ %., %bb.i ], [ %i.fe, %cf2_buf_readByte.exit ], [ %spec.select, %bb.j ] ; 17 uses
  %i.fh = load i8, ptr %i.cz, align 4, !tbaa !283 ; 2 uses
  %.not1153 = icmp eq i8 %i.fh, 0                 ; 13 uses
  br i1 %.not1153, label %bb.n, label %bb.k

bb.k:                                             ; preds = %cf2_buf_readByte.exit.thread
  %i.fi = icmp ne i8 %.01025, 0
  %i.fj = and i32 %.01037, 253
  %i.fk = icmp eq i32 %i.fj, 1
  %or.cond12 = or i1 %i.fi, %i.fk
  %i.fl = and i32 %.01037, 254
  %i.fm = icmp eq i32 %i.fl, 10                   ; 2 uses
  %i.fn = icmp eq i32 %.01037, 12                 ; 3 uses
  %i.fo = add nsw i32 %.01037, -13
  %i.fp = icmp ult i32 %i.fo, 2
  %i.fq = or i1 %i.fp, %or.cond12
  %i.fr = or i1 %i.fm, %i.fq
  %or.cond27 = or i1 %i.fn, %i.fr
  %i.fs = icmp samesign ugt i32 %.01037, 31       ; 3 uses
  %or.cond30 = select i1 %or.cond27, i1 true, i1 %i.fs
  br i1 %or.cond30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ft = load ptr, ptr %i.ct, align 8, !tbaa !599
  store ptr %i.ft, ptr %i.cw, align 8, !tbaa !601
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.k
  %i.fu = icmp slt i32 %.01027, 1
  %or.cond36 = or i1 %i.fu, %i.fm
  %or.cond39 = or i1 %i.fn, %or.cond36
  %or.cond42 = select i1 %or.cond39, i1 true, i1 %i.fs
  %spec.select1250 = select i1 %or.cond42, i32 %.01027, i32 0
  %i.fv = icmp eq i8 %.01018, 0
  %or.cond45 = select i1 %i.fv, i1 true, i1 %i.fs
  %or.cond48 = or i1 %i.fn, %or.cond45
  %spec.select1279 = select i1 %or.cond48, i8 %.01018, i8 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %cf2_buf_readByte.exit.thread
  %.21029 = phi i32 [ %spec.select1250, %bb.m ], [ %.01027, %cf2_buf_readByte.exit.thread ] ; 172 uses
  %.11019 = phi i8 [ %spec.select1279, %bb.m ], [ %.01018, %cf2_buf_readByte.exit.thread ] ; 174 uses
  %i.fw = load i32, ptr %i.m, align 8, !tbaa !3
  %.not1154 = icmp eq i32 %i.fw, 0
  br i1 %.not1154, label %bb.o, label %cf2_setError.exit

bb.o:                                             ; preds = %bb.n
  %i.fx = add i32 %.01038, -1                     ; 179 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %cf2_setError.exit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %trunc = trunc nuw i32 %.01037 to i8
  switch i8 %trunc, label %bb.aah [
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
  %i.fz = load i8, ptr %i.cf, align 1, !tbaa !282
  %.not1244 = icmp eq i8 %i.fz, 0
  br i1 %.not1244, label %cf2_hintmask_read.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ga = load i8, ptr %i.ey, align 1, !tbaa !305
  %.not1245 = icmp eq i8 %i.ga, 0
  br i1 %.not1245, label %bb.s, label %cf2_arrstack_setCount.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.gb = load ptr, ptr %i.cw, align 8, !tbaa !601 ; 3 uses
  %i.gc = load ptr, ptr %i.ct, align 8, !tbaa !599
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ge = load ptr, ptr %i.cq, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1342 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i1342, label %cf2_stack_popInt.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %.not3.i.i1343 = icmp eq i32 %i.gf, 0
  br i1 %.not3.i.i1343, label %bb.v, label %cf2_stack_popInt.exit.thread

bb.v:                                             ; preds = %bb.u
  store i32 161, ptr %i.ge, align 4, !tbaa !3
  br label %cf2_stack_popInt.exit.thread

bb.w:                                             ; preds = %bb.s
  %i.gg = getelementptr inbounds i8, ptr %i.gb, i64 -4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !604
  %.not.i1340 = icmp eq i32 %i.gh, 2
  br i1 %.not.i1340, label %cf2_stack_popInt.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gi = load ptr, ptr %i.cq, align 8, !tbaa !598 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.gi, null
  br i1 %.not.i8.i, label %cf2_stack_popInt.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %.not3.i9.i = icmp eq i32 %i.gj, 0
  br i1 %.not3.i9.i, label %bb.z, label %cf2_stack_popInt.exit.thread

bb.z:                                             ; preds = %bb.y
  store i32 160, ptr %i.gi, align 4, !tbaa !3
  br label %cf2_stack_popInt.exit.thread

cf2_stack_popInt.exit:                            ; preds = %bb.w
  %i.gk = getelementptr inbounds i8, ptr %i.gb, i64 -8 ; 2 uses
  store ptr %i.gk, ptr %i.cw, align 8, !tbaa !601
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !38 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  br i1 %i.gm, label %cf2_stack_popInt.exit.thread, label %cf2_hintmask_read.exit

cf2_stack_popInt.exit.thread:                     ; preds = %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.v, %cf2_stack_popInt.exit
  %.0.i13411949 = phi i32 [ %i.gl, %cf2_stack_popInt.exit ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ]
  store i32 %.0.i13411949, ptr %i.ev, align 8, !tbaa !306
  br label %cf2_hintmask_read.exit

bb.aa:                                            ; preds = %bb.p
  %i.gn = load i8, ptr %i.cf, align 1, !tbaa !282
  %.not1240 = icmp eq i8 %i.gn, 0
  br i1 %.not1240, label %cf2_hintmask_read.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = load ptr, ptr %i.et, align 8, !tbaa !304
  %.not1241 = icmp eq ptr %i.go, null
  br i1 %.not1241, label %cf2_arrstack_setCount.exit.thread, label %bb.ac

end_hunk_0
begin_hunk_1_@cf2_interpT2CharString:bb.a
  %i.baa = ptrtoint ptr %.val1306 to i64
  %i.bab = ptrtoint ptr %.val1305 to i64
  %i.bac = sub i64 %i.baa, %i.bab
  %i.bad = lshr exact i64 %i.bac, 3
  %i.bae = trunc i64 %i.bad to i32                ; 2 uses
  %i.baf = icmp eq i32 %i.bae, 1
  br i1 %i.baf, label %bb.qo, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.bag = icmp ne i32 %i.bae, 5
  %i.bah = load i8, ptr %i.h, align 1
  %i.bai = icmp ne i8 %i.bah, 0
  %or.cond97 = select i1 %i.bag, i1 true, i1 %i.bai
  br i1 %or.cond97, label %bb.qq, label %bb.qp

bb.qo:                                            ; preds = %bb.qm
  %.old = load i8, ptr %i.h, align 1, !tbaa !38
  %.old96.not = icmp eq i8 %.old, 0
  br i1 %.old96.not, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qn, %bb.qo
  %i.baj = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.co, i32 noundef 0)
  %i.bak = add i32 %i.baj, %i.s
  store i32 %i.bak, ptr %7, align 4, !tbaa !3
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qo, %bb.qp, %bb.qn
  store i8 1, ptr %i.h, align 1, !tbaa !38
  %i.bal = load i8, ptr %i.da, align 8, !tbaa !503
  %.not1164 = icmp eq i8 %i.bal, 0
  br i1 %.not1164, label %bb.qr, label %cf2_arrstack_setCount.exit.thread

bb.qr:                                            ; preds = %bb.qq
  call fastcc void @cf2_glyphpath_closeOpenPath(ptr noundef %13)
  %i.bam = load i8, ptr %i.cf, align 1, !tbaa !282
  %.not1165 = icmp eq i8 %i.bam, 0
  br i1 %.not1165, label %bb.qs, label %cf2_arrstack_setCount.exit.thread

bb.qs:                                            ; preds = %bb.qr
  %i.ban = load i8, ptr %i.cz, align 4, !tbaa !283
  %.not1166 = icmp eq i8 %i.ban, 0
  br i1 %.not1166, label %bb.qt, label %cf2_arrstack_setCount.exit.thread

bb.qt:                                            ; preds = %bb.qs
  %.val1301 = load ptr, ptr %i.ct, align 8, !tbaa !599
  %.val1302 = load ptr, ptr %i.cw, align 8, !tbaa !601
  %i.bao = ptrtoint ptr %.val1302 to i64
  %i.bap = ptrtoint ptr %.val1301 to i64
  %i.baq = sub i64 %i.bao, %i.bap
  %i.bar = and i64 %i.baq, 34359738352
  %.not2064 = icmp eq i64 %i.bar, 0
  br i1 %.not2064, label %cf2_arrstack_setCount.exit.thread, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %.not1167 = icmp eq i8 %4, 0
  br i1 %.not1167, label %bb.qv, label %bb.qy

bb.qv:                                            ; preds = %bb.qu
  %i.bas = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.co)
  %i.bat = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.co)
  %i.bau = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.co) ; 2 uses
  store i32 %i.bau, ptr %i.d, align 4, !tbaa !3
  %i.bav = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.co) ; 2 uses
  store i32 %i.bav, ptr %i.c, align 4, !tbaa !3
  %i.baw = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bas, ptr noundef %15) ; 2 uses
  %.not1168 = icmp eq i32 %i.baw, 0
  br i1 %.not1168, label %bb.qw, label %bb.qy

bb.qw:                                            ; preds = %bb.qv
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef %i.bav, i32 noundef %i.bau, ptr noundef %i.j)
  %i.bax = getelementptr i8, ptr %i.l, i64 8      ; 2 uses
  %.val1336 = load ptr, ptr %i.bax, align 8, !tbaa !285
  %i.bay = getelementptr i8, ptr %i.l, i64 1152   ; 2 uses
  %.val1337 = load ptr, ptr %i.bay, align 8, !tbaa !662
  %i.baz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !254
  %i.bbc = load ptr, ptr %i.baz, align 8, !tbaa !253
  %i.bbd = ptrtoint ptr %i.bbb to i64
  %i.bbe = ptrtoint ptr %i.bbc to i64
  %i.bbf = sub i64 %i.bbd, %i.bbe
  call void %.val1337(ptr noundef %.val1336, ptr noundef nonnull %i.baz, i64 noundef %i.bbf) #19, !inline_history !663
  %i.bbg = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bat, ptr noundef %15) ; 2 uses
  %.not1169 = icmp eq i32 %i.bbg, 0
  br i1 %.not1169, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, ptr noundef %i.j)
  %.val1334 = load ptr, ptr %i.bax, align 8, !tbaa !285
  %.val1335 = load ptr, ptr %i.bay, align 8, !tbaa !662
  %i.bbh = load ptr, ptr %i.bba, align 8, !tbaa !254
  %i.bbi = load ptr, ptr %i.baz, align 8, !tbaa !253
  %i.bbj = ptrtoint ptr %i.bbh to i64
  %i.bbk = ptrtoint ptr %i.bbi to i64
  %i.bbl = sub i64 %i.bbj, %i.bbk
  call void %.val1335(ptr noundef %.val1334, ptr noundef nonnull %i.baz, i64 noundef %i.bbl) #19, !inline_history !663
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qw, %bb.qv, %bb.qu, %bb.qx
  %.12 = phi i32 [ 0, %bb.qx ], [ 18, %bb.qu ], [ %i.baw, %bb.qv ], [ %i.bbg, %bb.qw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.qz:                                            ; preds = %bb.p, %bb.p
  %.val1299 = load ptr, ptr %i.ct, align 8, !tbaa !599
  %.val1300 = load ptr, ptr %i.cw, align 8, !tbaa !601
  %i.bbm = ptrtoint ptr %.val1300 to i64
  %i.bbn = ptrtoint ptr %.val1299 to i64
  %i.bbo = sub i64 %i.bbm, %i.bbn
  %i.bbp = and i64 %i.bbo, 34359738352
  %i.bbq = icmp eq i64 %i.bbp, 0
  %.val1319 = load i8, ptr %i.z, align 8
  %.not1162 = icmp eq i8 %.val1319, 0
  %or.cond2062 = select i1 %i.bbq, i1 true, i1 %.not1162
  br i1 %or.cond2062, label %bb.ra, label %cf2_hintmask_read.exit

bb.ra:                                            ; preds = %bb.qz
  call fastcc void @cf2_doStems(ptr noundef nonnull %0, ptr noundef %i.co, ptr noundef %11, ptr noundef %7, ptr noundef %i.h, i32 noundef 0)
  %i.bbr = load i8, ptr %i.da, align 8, !tbaa !503
  %.not1163 = icmp eq i8 %i.bbr, 0
  br i1 %.not1163, label %bb.rb, label %cf2_arrstack_setCount.exit.thread

bb.rb:                                            ; preds = %bb.ra
  %i.bbs = icmp eq i32 %.01037, 19
  br i1 %i.bbs, label %bb.rc, label %bb.rk

bb.rc:                                            ; preds = %bb.rb
  %.val1325 = load i64, ptr %i.dg, align 8, !tbaa !653
  %.val1324 = load i64, ptr %i.dh, align 8, !tbaa !653
  %i.bbt = add i64 %.val1324, %.val1325           ; 3 uses
  %i.bbu = icmp ugt i64 %i.bbt, 96
  br i1 %i.bbu, label %bb.rd, label %cf2_hintmask_setCounts.exit.i

bb.rd:                                            ; preds = %bb.rc
  %i.bbv = load ptr, ptr %12, align 8, !tbaa !561 ; 3 uses
  %.not.i.i.i1602 = icmp eq ptr %i.bbv, null
  br i1 %.not.i.i.i1602, label %cf2_hintmask_read.exit, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !3
  %.not3.i.i.i1603 = icmp eq i32 %i.bbw, 0
  br i1 %.not3.i.i.i1603, label %bb.rf, label %cf2_hintmask_read.exit

bb.rf:                                            ; preds = %bb.re
  store i32 18, ptr %i.bbv, align 4, !tbaa !3
  br label %cf2_hintmask_read.exit

cf2_hintmask_setCounts.exit.i:                    ; preds = %bb.rc
  store i64 %i.bbt, ptr %i.dm, align 8, !tbaa !664
  %i.bbx = add nuw nsw i64 %i.bbt, 7
  %i.bby = lshr i64 %i.bbx, 3                     ; 3 uses
  store i64 %i.bby, ptr %i.dn, align 8, !tbaa !665
  store i8 1, ptr %i.z, align 8, !tbaa !607
  store i8 1, ptr %i.do, align 1, !tbaa !654
  %.not.i1601 = icmp eq i64 %i.bby, 0
  br i1 %.not.i1601, label %cf2_hintmask_read.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %cf2_hintmask_setCounts.exit.i, %cf2_buf_readByte.exit.i
  %.011.i = phi i64 [ %i.bch, %cf2_buf_readByte.exit.i ], [ 0, %cf2_hintmask_setCounts.exit.i ] ; 2 uses
  %i.bbz = load ptr, ptr %i.fb, align 8, !tbaa !251 ; 3 uses
  %i.bca = load ptr, ptr %i.fa, align 8, !tbaa !254
  %i.bcb = icmp ult ptr %i.bbz, %i.bca
  br i1 %i.bcb, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %.lr.ph.i
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbz, i64 1
  store ptr %i.bcc, ptr %i.fb, align 8, !tbaa !251
  %i.bcd = load i8, ptr %i.bbz, align 1, !tbaa !38
  br label %cf2_buf_readByte.exit.i

bb.rh:                                            ; preds = %.lr.ph.i
  %i.bce = load ptr, ptr %.01039, align 8, !tbaa !624 ; 3 uses
  %.not.i.i7.i = icmp eq ptr %i.bce, null
  br i1 %.not.i.i7.i, label %cf2_buf_readByte.exit.i, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !3
  %.not3.i.i8.i = icmp eq i32 %i.bcf, 0
  br i1 %.not3.i.i8.i, label %bb.rj, label %cf2_buf_readByte.exit.i

bb.rj:                                            ; preds = %bb.ri
  store i32 85, ptr %i.bce, align 4, !tbaa !3
  br label %cf2_buf_readByte.exit.i

cf2_buf_readByte.exit.i:                          ; preds = %bb.rj, %bb.ri, %bb.rh, %bb.rg
  %.0.i9.i = phi i8 [ %i.bcd, %bb.rg ], [ 0, %bb.rh ], [ 0, %bb.ri ], [ 0, %bb.rj ]
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.011.i
  store i8 %.0.i9.i, ptr %i.bcg, align 1, !tbaa !38
  %i.bch = add nuw nsw i64 %.011.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bch, %i.bby
  br i1 %exitcond.not.i, label %cf2_hintmask_read.exit, label %.lr.ph.i, !llvm.loop !666

bb.rk:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.ez, i8 0, i64 6160, i1 false)
  %i.bci = load i8, ptr %i.aj, align 8, !tbaa !312
  store i8 %i.bci, ptr %19, align 1, !tbaa !573
  store i32 %i.bf, ptr %i.dc, align 4, !tbaa !579
  store ptr %0, ptr %16, align 8, !tbaa !574
  store ptr %18, ptr %i.dd, align 8, !tbaa !575
  store ptr %i.ae, ptr %i.de, align 8, !tbaa !576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.df, i8 0, i64 40, i1 false)
  store ptr %i.m, ptr %17, align 8, !tbaa !561
  %.val1323 = load i64, ptr %i.dg, align 8, !tbaa !653
  %.val1322 = load i64, ptr %i.dh, align 8, !tbaa !653
  %i.bcj = add i64 %.val1322, %.val1323           ; 3 uses
  %i.bck = icmp ugt i64 %i.bcj, 96
  br i1 %i.bck, label %bb.rl, label %cf2_hintmask_setCounts.exit.i1604

bb.rl:                                            ; preds = %bb.rk
  %i.bcl = load i32, ptr %i.m, align 8, !tbaa !3
  %.not3.i.i.i1614 = icmp eq i32 %i.bcl, 0
  br i1 %.not3.i.i.i1614, label %bb.rm, label %cf2_hintmask_read.exit1615

bb.rm:                                            ; preds = %bb.rl
  store i32 18, ptr %i.m, align 8, !tbaa !3
  br label %cf2_hintmask_read.exit1615

cf2_hintmask_setCounts.exit.i1604:                ; preds = %bb.rk
  store i64 %i.bcj, ptr %i.di, align 8, !tbaa !664
  %i.bcm = add nuw nsw i64 %i.bcj, 7
  %i.bcn = lshr i64 %i.bcm, 3                     ; 3 uses
  store i64 %i.bcn, ptr %i.dj, align 8, !tbaa !665
  store i8 1, ptr %i.df, align 8, !tbaa !607
  store i8 1, ptr %i.dk, align 1, !tbaa !654
  %.not.i1605 = icmp eq i64 %i.bcn, 0
  br i1 %.not.i1605, label %cf2_hintmask_read.exit1615, label %.lr.ph.i1606

.lr.ph.i1606:                                     ; preds = %cf2_hintmask_setCounts.exit.i1604, %cf2_buf_readByte.exit.i1610
  %.011.i1607 = phi i64 [ %i.bcw, %cf2_buf_readByte.exit.i1610 ], [ 0, %cf2_hintmask_setCounts.exit.i1604 ] ; 2 uses
  %i.bco = load ptr, ptr %i.fb, align 8, !tbaa !251 ; 3 uses
  %i.bcp = load ptr, ptr %i.fa, align 8, !tbaa !254
  %i.bcq = icmp ult ptr %i.bco, %i.bcp
  br i1 %i.bcq, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %.lr.ph.i1606
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bco, i64 1
  store ptr %i.bcr, ptr %i.fb, align 8, !tbaa !251
  %i.bcs = load i8, ptr %i.bco, align 1, !tbaa !38
  br label %cf2_buf_readByte.exit.i1610

bb.ro:                                            ; preds = %.lr.ph.i1606
  %i.bct = load ptr, ptr %.01039, align 8, !tbaa !624 ; 3 uses
  %.not.i.i7.i1608 = icmp eq ptr %i.bct, null
  br i1 %.not.i.i7.i1608, label %cf2_buf_readByte.exit.i1610, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !3
  %.not3.i.i8.i1609 = icmp eq i32 %i.bcu, 0
  br i1 %.not3.i.i8.i1609, label %bb.rq, label %cf2_buf_readByte.exit.i1610

bb.rq:                                            ; preds = %bb.rp
  store i32 85, ptr %i.bct, align 4, !tbaa !3
  br label %cf2_buf_readByte.exit.i1610

cf2_buf_readByte.exit.i1610:                      ; preds = %bb.rq, %bb.rp, %bb.ro, %bb.rn
  %.0.i9.i1611 = phi i8 [ %i.bcs, %bb.rn ], [ 0, %bb.ro ], [ 0, %bb.rp ], [ 0, %bb.rq ]
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.011.i1607
  store i8 %.0.i9.i1611, ptr %i.bcv, align 1, !tbaa !38
  %i.bcw = add nuw nsw i64 %.011.i1607, 1         ; 2 uses
  %exitcond.not.i1612 = icmp eq i64 %i.bcw, %i.bcn
  br i1 %exitcond.not.i1612, label %cf2_hintmask_read.exit1615, label %.lr.ph.i1606, !llvm.loop !666

cf2_hintmask_read.exit1615:                       ; preds = %cf2_buf_readByte.exit.i1610, %bb.rl, %bb.rm, %cf2_hintmask_setCounts.exit.i1604
  call fastcc void @cf2_hintmap_build(ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %17, i32 noundef 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %cf2_hintmask_read.exit

bb.rr:                                            ; preds = %bb.p
  %.val1297 = load ptr, ptr %i.ct, align 8, !tbaa !599 ; 5 uses
  %.val1298 = load ptr, ptr %i.cw, align 8, !tbaa !601 ; 7 uses
  %i.bcx = ptrtoint ptr %.val1298 to i64
  %i.bcy = ptrtoint ptr %.val1297 to i64
  %i.bcz = sub i64 %i.bcx, %i.bcy
  %i.bda = lshr exact i64 %i.bcz, 3
  %i.bdb = trunc i64 %i.bda to i32
  %i.bdc = icmp ult i32 %i.bdb, 3
  %i.bdd = load i8, ptr %i.h, align 1
  %i.bde = icmp ne i8 %i.bdd, 0
  %or.cond87 = select i1 %i.bdc, i1 true, i1 %i.bde
  br i1 %or.cond87, label %bb.rv, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.bdf = getelementptr inbounds nuw i8, ptr %.val1297, i64 4
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !604
  %i.bdh = load i32, ptr %.val1297, align 4, !tbaa !38 ; 4 uses
  switch i32 %i.bdg, label %cf2_stack_getReal.exit1623 [
    i32 2, label %bb.rt
    i32 1, label %bb.ru
  ]

bb.rt:                                            ; preds = %bb.rs
  %i.bdi = shl i32 %i.bdh, 16
  br label %cf2_stack_getReal.exit1623

bb.ru:                                            ; preds = %bb.rs
  %i.bdj = add nsw i32 %i.bdh, 8192
  %.lobit.neg.i1622 = ashr i32 %i.bdh, 31
  %i.bdk = add nsw i32 %i.bdj, %.lobit.neg.i1622
  %i.bdl = ashr i32 %i.bdk, 14
  br label %cf2_stack_getReal.exit1623

cf2_stack_getReal.exit1623:                       ; preds = %bb.rs, %bb.rt, %bb.ru
  %.0.i1621 = phi i32 [ %i.bdl, %bb.ru ], [ %i.bdh, %bb.rs ], [ %i.bdi, %bb.rt ]
  %i.bdm = add i32 %.0.i1621, %i.s
  store i32 %i.bdm, ptr %7, align 4, !tbaa !3
  br label %bb.rv

bb.rv:                                            ; preds = %cf2_stack_getReal.exit1623, %bb.rr
  store i8 1, ptr %i.h, align 1, !tbaa !38
  %i.bdn = load i8, ptr %i.da, align 8, !tbaa !503
  %.not1160 = icmp eq i8 %i.bdn, 0
  br i1 %.not1160, label %bb.rw, label %cf2_arrstack_setCount.exit.thread

bb.rw:                                            ; preds = %bb.rv
  %i.bdo = load i32, ptr %i.d, align 4, !tbaa !3
  %i.bdp = icmp eq ptr %.val1298, %.val1297
  br i1 %i.bdp, label %bb.rx, label %bb.sa

bb.rx:                                            ; preds = %bb.rw
  %i.bdq = load ptr, ptr %i.cq, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1626 = icmp eq ptr %i.bdq, null
  br i1 %.not.i.i1626, label %cf2_stack_popFixed.exit1628, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !3
  %.not3.i.i1627 = icmp eq i32 %i.bdr, 0
  br i1 %.not3.i.i1627, label %bb.rz, label %cf2_stack_popFixed.exit1628

bb.rz:                                            ; preds = %bb.ry
  store i32 161, ptr %i.bdq, align 4, !tbaa !3
  br label %cf2_stack_popFixed.exit1628

bb.sa:                                            ; preds = %bb.rw
  %i.bds = getelementptr inbounds i8, ptr %.val1298, i64 -8 ; 5 uses
  store ptr %i.bds, ptr %i.cw, align 8, !tbaa !601
  %i.bdt = getelementptr inbounds i8, ptr %.val1298, i64 -4
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !604
  %i.bdv = load i32, ptr %i.bds, align 4, !tbaa !38 ; 4 uses
  switch i32 %i.bdu, label %cf2_stack_popFixed.exit1628 [
    i32 2, label %bb.sb
    i32 1, label %bb.sc
  ]

bb.sb:                                            ; preds = %bb.sa
  %i.bdw = shl i32 %i.bdv, 16
  br label %cf2_stack_popFixed.exit1628

bb.sc:                                            ; preds = %bb.sa
  %i.bdx = add nsw i32 %i.bdv, 8192
  %.lobit.neg.i1624 = ashr i32 %i.bdv, 31
  %i.bdy = add nsw i32 %i.bdx, %.lobit.neg.i1624
  %i.bdz = ashr i32 %i.bdy, 14
  br label %cf2_stack_popFixed.exit1628

cf2_stack_popFixed.exit1628:                      ; preds = %bb.rx, %bb.ry, %bb.rz, %bb.sa, %bb.sb, %bb.sc
  %i.bea = phi ptr [ %i.bds, %bb.sc ], [ %.val1298, %bb.rz ], [ %i.bds, %bb.sb ], [ %.val1298, %bb.rx ], [ %.val1298, %bb.ry ], [ %i.bds, %bb.sa ] ; 3 uses
  %.0.i1625 = phi i32 [ %i.bdz, %bb.sc ], [ 0, %bb.rz ], [ %i.bdw, %bb.sb ], [ 0, %bb.rx ], [ 0, %bb.ry ], [ %i.bdv, %bb.sa ]
  %i.beb = add i32 %.0.i1625, %i.bdo              ; 2 uses
  store i32 %i.beb, ptr %i.d, align 4, !tbaa !3
  %i.bec = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bed = icmp eq ptr %i.bea, %.val1297
  br i1 %i.bed, label %bb.sd, label %bb.sg

bb.sd:                                            ; preds = %cf2_stack_popFixed.exit1628
  %i.bee = load ptr, ptr %i.cq, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1631 = icmp eq ptr %i.bee, null
  br i1 %.not.i.i1631, label %cf2_stack_popFixed.exit1633, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !3
  %.not3.i.i1632 = icmp eq i32 %i.bef, 0
  br i1 %.not3.i.i1632, label %bb.sf, label %cf2_stack_popFixed.exit1633

bb.sf:                                            ; preds = %bb.se
  store i32 161, ptr %i.bee, align 4, !tbaa !3
  br label %cf2_stack_popFixed.exit1633

bb.sg:                                            ; preds = %cf2_stack_popFixed.exit1628
  %i.beg = getelementptr inbounds i8, ptr %i.bea, i64 -8 ; 2 uses
  store ptr %i.beg, ptr %i.cw, align 8, !tbaa !601
  %i.beh = getelementptr inbounds i8, ptr %i.bea, i64 -4
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !604
  %i.bej = load i32, ptr %i.beg, align 4, !tbaa !38 ; 4 uses
  switch i32 %i.bei, label %cf2_stack_popFixed.exit1633 [
    i32 2, label %bb.sh
    i32 1, label %bb.si
  ]

bb.sh:                                            ; preds = %bb.sg
  %i.bek = shl i32 %i.bej, 16
  br label %cf2_stack_popFixed.exit1633

bb.si:                                            ; preds = %bb.sg
  %i.bel = add nsw i32 %i.bej, 8192
  %.lobit.neg.i1629 = ashr i32 %i.bej, 31
  %i.bem = add nsw i32 %i.bel, %.lobit.neg.i1629
  %i.ben = ashr i32 %i.bem, 14
  br label %cf2_stack_popFixed.exit1633

end_hunk_1
begin_hunk_2_@cf2_interpT2CharString:bb.a
  br i1 %.not.i.i1899, label %cf2_buf_readByte.exit1902, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.cab = load i32, ptr %i.caa, align 4, !tbaa !3
  %.not3.i.i1900 = icmp eq i32 %i.cab, 0
  br i1 %.not3.i.i1900, label %bb.abl, label %cf2_buf_readByte.exit1902

bb.abl:                                           ; preds = %bb.abk
  store i32 85, ptr %i.caa, align 4, !tbaa !3
  br label %cf2_buf_readByte.exit1902

cf2_buf_readByte.exit1902:                        ; preds = %bb.abi, %bb.abj, %bb.abk, %bb.abl
  %i.cac = phi ptr [ %i.bzw, %bb.abi ], [ %i.fg, %bb.abj ], [ %i.fg, %bb.abk ], [ %i.fg, %bb.abl ] ; 6 uses
  %.0.i1901 = phi i32 [ %i.bzz, %bb.abi ], [ 0, %bb.abj ], [ 0, %bb.abk ], [ 0, %bb.abl ] ; 4 uses
  %i.cad = icmp ult ptr %i.cac, %.01039.val
  br i1 %i.cad, label %bb.abm, label %bb.abn

bb.abm:                                           ; preds = %cf2_buf_readByte.exit1902
  %i.cae = getelementptr inbounds nuw i8, ptr %i.cac, i64 1 ; 2 uses
  store ptr %i.cae, ptr %i.fb, align 8, !tbaa !251
  %i.caf = load i8, ptr %i.cac, align 1, !tbaa !38
  %i.cag = zext i8 %i.caf to i32
  %i.cah = shl nuw nsw i32 %i.cag, 16
  %i.cai = or disjoint i32 %i.cah, %.0.i1901
  br label %cf2_buf_readByte.exit1906

bb.abn:                                           ; preds = %cf2_buf_readByte.exit1902
  %i.caj = load ptr, ptr %.01039, align 8, !tbaa !624 ; 3 uses
  %.not.i.i1903 = icmp eq ptr %i.caj, null
  br i1 %.not.i.i1903, label %cf2_buf_readByte.exit1906, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  %i.cak = load i32, ptr %i.caj, align 4, !tbaa !3
  %.not3.i.i1904 = icmp eq i32 %i.cak, 0
  br i1 %.not3.i.i1904, label %bb.abp, label %cf2_buf_readByte.exit1906

bb.abp:                                           ; preds = %bb.abo
  store i32 85, ptr %i.caj, align 4, !tbaa !3
  br label %cf2_buf_readByte.exit1906

cf2_buf_readByte.exit1906:                        ; preds = %bb.abm, %bb.abn, %bb.abo, %bb.abp
  %i.cal = phi ptr [ %i.cae, %bb.abm ], [ %i.cac, %bb.abn ], [ %i.cac, %bb.abo ], [ %i.cac, %bb.abp ] ; 6 uses
  %.0.i1905 = phi i32 [ %i.cai, %bb.abm ], [ %.0.i1901, %bb.abn ], [ %.0.i1901, %bb.abo ], [ %.0.i1901, %bb.abp ] ; 4 uses
  %i.cam = icmp ult ptr %i.cal, %.01039.val
  br i1 %i.cam, label %bb.abq, label %bb.abr

bb.abq:                                           ; preds = %cf2_buf_readByte.exit1906
  %i.can = getelementptr inbounds nuw i8, ptr %i.cal, i64 1 ; 2 uses
  store ptr %i.can, ptr %i.fb, align 8, !tbaa !251
  %i.cao = load i8, ptr %i.cal, align 1, !tbaa !38
  %i.cap = zext i8 %i.cao to i32
  %i.caq = shl nuw nsw i32 %i.cap, 8
  %i.car = add nuw nsw i32 %i.caq, %.0.i1905
  br label %cf2_buf_readByte.exit1910

bb.abr:                                           ; preds = %cf2_buf_readByte.exit1906
  %i.cas = load ptr, ptr %.01039, align 8, !tbaa !624 ; 3 uses
  %.not.i.i1907 = icmp eq ptr %i.cas, null
  br i1 %.not.i.i1907, label %cf2_buf_readByte.exit1910, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  %i.cat = load i32, ptr %i.cas, align 4, !tbaa !3
  %.not3.i.i1908 = icmp eq i32 %i.cat, 0
  br i1 %.not3.i.i1908, label %bb.abt, label %cf2_buf_readByte.exit1910

bb.abt:                                           ; preds = %bb.abs
  store i32 85, ptr %i.cas, align 4, !tbaa !3
  br label %cf2_buf_readByte.exit1910

cf2_buf_readByte.exit1910:                        ; preds = %bb.abq, %bb.abr, %bb.abs, %bb.abt
  %i.cau = phi ptr [ %i.can, %bb.abq ], [ %i.cal, %bb.abr ], [ %i.cal, %bb.abs ], [ %i.cal, %bb.abt ] ; 3 uses
  %.0.i1909 = phi i32 [ %i.car, %bb.abq ], [ %.0.i1905, %bb.abr ], [ %.0.i1905, %bb.abs ], [ %.0.i1905, %bb.abt ] ; 4 uses
  %i.cav = icmp ult ptr %i.cau, %.01039.val
  br i1 %i.cav, label %bb.abu, label %bb.abv

bb.abu:                                           ; preds = %cf2_buf_readByte.exit1910
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cau, i64 1
  store ptr %i.caw, ptr %i.fb, align 8, !tbaa !251
  %i.cax = load i8, ptr %i.cau, align 1, !tbaa !38
  %i.cay = zext i8 %i.cax to i32
  %i.caz = or disjoint i32 %.0.i1909, %i.cay
  br label %cf2_buf_readByte.exit1914

bb.abv:                                           ; preds = %cf2_buf_readByte.exit1910
  %i.cba = load ptr, ptr %.01039, align 8, !tbaa !624 ; 3 uses
  %.not.i.i1911 = icmp eq ptr %i.cba, null
  br i1 %.not.i.i1911, label %cf2_buf_readByte.exit1914, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.cbb = load i32, ptr %i.cba, align 4, !tbaa !3
  %.not3.i.i1912 = icmp eq i32 %i.cbb, 0
  br i1 %.not3.i.i1912, label %bb.abx, label %cf2_buf_readByte.exit1914

bb.abx:                                           ; preds = %bb.abw
  store i32 85, ptr %i.cba, align 4, !tbaa !3
  br label %cf2_buf_readByte.exit1914

cf2_buf_readByte.exit1914:                        ; preds = %bb.abu, %bb.abv, %bb.abw, %bb.abx
  %.0.i1913 = phi i32 [ %i.caz, %bb.abu ], [ %.0.i1909, %bb.abv ], [ %.0.i1909, %bb.abw ], [ %.0.i1909, %bb.abx ] ; 3 uses
  br i1 %.not1153, label %bb.acd, label %bb.aby

bb.aby:                                           ; preds = %cf2_buf_readByte.exit1914
  %i.cbc = add i32 %.0.i1913, 32000
  %or.cond93 = icmp ult i32 %i.cbc, 64001
  %i.cbd = icmp ne i8 %.11019, 0
  %or.cond100 = select i1 %or.cond93, i1 true, i1 %i.cbd
  %spec.store.select101 = select i1 %or.cond100, i8 %.11019, i8 1 ; 4 uses
  %i.cbe = load ptr, ptr %i.cw, align 8, !tbaa !601 ; 2 uses
  %i.cbf = load ptr, ptr %i.ct, align 8, !tbaa !599
  %i.cbg = load i32, ptr %i.cv, align 8, !tbaa !600
  %i.cbh = zext i32 %i.cbg to i64
  %i.cbi = getelementptr inbounds nuw [8 x i8], ptr %i.cbf, i64 %i.cbh
  %i.cbj = icmp eq ptr %i.cbe, %i.cbi
  br i1 %i.cbj, label %bb.abz, label %bb.acc

bb.abz:                                           ; preds = %bb.aby
  %i.cbk = load ptr, ptr %i.cq, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1915 = icmp eq ptr %i.cbk, null
  br i1 %.not.i.i1915, label %.backedge.backedge, label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  %i.cbl = load i32, ptr %i.cbk, align 4, !tbaa !3
  %.not3.i.i1916 = icmp eq i32 %i.cbl, 0
  br i1 %.not3.i.i1916, label %bb.acb, label %.backedge.backedge

bb.acb:                                           ; preds = %bb.aca
  store i32 130, ptr %i.cbk, align 4, !tbaa !3
  br label %.backedge.backedge

bb.acc:                                           ; preds = %bb.aby
  store i32 %.0.i1913, ptr %i.cbe, align 4, !tbaa !38
  %i.cbm = load ptr, ptr %i.cw, align 8, !tbaa !601 ; 2 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 4
  store i32 2, ptr %i.cbn, align 4, !tbaa !604
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbm, i64 8
  store ptr %i.cbo, ptr %i.cw, align 8, !tbaa !601
  br label %.backedge.backedge

bb.acd:                                           ; preds = %cf2_buf_readByte.exit1914
  %i.cbp = load ptr, ptr %i.cw, align 8, !tbaa !601 ; 2 uses
  %i.cbq = load ptr, ptr %i.ct, align 8, !tbaa !599
  %i.cbr = load i32, ptr %i.cv, align 8, !tbaa !600
  %i.cbs = zext i32 %i.cbr to i64
  %i.cbt = getelementptr inbounds nuw [8 x i8], ptr %i.cbq, i64 %i.cbs
  %i.cbu = icmp eq ptr %i.cbp, %i.cbt
  br i1 %i.cbu, label %bb.ace, label %bb.ach

bb.ace:                                           ; preds = %bb.acd
  %i.cbv = load ptr, ptr %i.cq, align 8, !tbaa !598 ; 3 uses
  %.not.i.i1918 = icmp eq ptr %i.cbv, null
  br i1 %.not.i.i1918, label %.backedge.backedge, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  %i.cbw = load i32, ptr %i.cbv, align 4, !tbaa !3
  %.not3.i.i1919 = icmp eq i32 %i.cbw, 0
  br i1 %.not3.i.i1919, label %bb.acg, label %.backedge.backedge

bb.acg:                                           ; preds = %bb.acf
  store i32 130, ptr %i.cbv, align 4, !tbaa !3
  br label %.backedge.backedge

bb.ach:                                           ; preds = %bb.acd
  store i32 %.0.i1913, ptr %i.cbp, align 4, !tbaa !38
  %i.cbx = load ptr, ptr %i.cw, align 8, !tbaa !601 ; 2 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbx, i64 4
  store i32 0, ptr %i.cby, align 4, !tbaa !604
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbx, i64 8
  store ptr %i.cbz, ptr %i.cw, align 8, !tbaa !601
  br label %.backedge.backedge

cf2_hintmask_read.exit:                           ; preds = %cf2_buf_readByte.exit.i, %bb.qz, %bb.qb, %bb.qc, %cf2_stack_setReal.exit1480, %bb.hi, %bb.hh, %bb.fi, %cf2_buf_readByte.exit1472, %cf2_buf_readByte.exit1472, %cf2_buf_readByte.exit1472, %cf2_buf_readByte.exit1472, %cf2_buf_readByte.exit1472, %cf2_buf_readByte.exit1472, %bb.pm, %bb.pl, %bb.hf, %bb.gm, %bb.fn, %bb.fm, %cf2_buf_readByte.exit1472.thread, %bb.fl, %bb.aa, %cf2_hintmask_setCounts.exit.i, %bb.rf, %bb.re, %bb.rd, %cf2_stack_popInt.exit, %cf2_stack_popInt.exit.thread, %cf2_stack_popFixed.exit1646, %bb.sw, %cf2_stack_popFixed.exit1633, %bb.sj, %cf2_hintmask_read.exit1615, %bb.pn, %cf2_glyphpath_closeOpenPath.exit, %bb.dy, %cf2_stack_popFixed.exit, %bb.be, %.thread1958, %bb.aq, %.thread1957, %bb.an, %bb.q, %bb.p, %bb.p, %bb.p, %bb.ql
  %.31046 = phi i32 [ %.01043, %bb.p ], [ %.01043, %bb.p ], [ %.01043, %bb.p ], [ %.01043, %bb.sw ], [ %.01043, %bb.q ], [ %.01043, %bb.qc ], [ %.01043, %.thread1957 ], [ %.01043, %bb.an ], [ %.01043, %.thread1958 ], [ %.01043, %bb.aq ], [ %.01043, %cf2_stack_popFixed.exit ], [ %.01043, %bb.be ], [ %.01043, %cf2_glyphpath_closeOpenPath.exit ], [ %.01043, %bb.dy ], [ %.01043, %bb.qb ], [ %.01043, %cf2_stack_setReal.exit1480 ], [ %.01043, %bb.pn ], [ %.21045.lcssa, %bb.ql ], [ %.01043, %bb.qz ], [ %.01043, %bb.aa ], [ %.01043, %cf2_hintmask_read.exit1615 ], [ %.01043, %cf2_stack_popFixed.exit1633 ], [ %.01043, %bb.sj ], [ %.01043, %cf2_stack_popFixed.exit1646 ], [ %.01043, %cf2_stack_popInt.exit.thread ], [ %.01043, %cf2_stack_popInt.exit ], [ %.01043, %bb.rd ], [ %.01043, %bb.re ], [ %.01043, %bb.rf ], [ %.01043, %cf2_hintmask_setCounts.exit.i ], [ %.01043, %bb.fl ], [ %.01043, %cf2_buf_readByte.exit1472.thread ], [ %.01043, %bb.fm ], [ %.01043, %bb.fn ], [ %.01043, %bb.gm ], [ %.01043, %bb.hf ], [ %.01043, %bb.pl ], [ %.01043, %bb.pm ], [ %.01043, %cf2_buf_readByte.exit1472 ], [ %.01043, %cf2_buf_readByte.exit1472 ], [ %.01043, %cf2_buf_readByte.exit1472 ], [ %.01043, %cf2_buf_readByte.exit1472 ], [ %.01043, %cf2_buf_readByte.exit1472 ], [ %.01043, %cf2_buf_readByte.exit1472 ], [ %.01043, %bb.fi ], [ %.01043, %bb.hh ], [ %.01043, %bb.hi ], [ %.01043, %cf2_buf_readByte.exit.i ]
  %.31042 = phi ptr [ %.01039, %bb.p ], [ %.01039, %bb.p ], [ %.01039, %bb.p ], [ %.01039, %bb.sw ], [ %.01039, %bb.q ], [ %.01039, %bb.qc ], [ %.01039, %.thread1957 ], [ %.01039, %bb.an ], [ %.01039, %.thread1958 ], [ %.01039, %bb.aq ], [ %.01039, %cf2_stack_popFixed.exit ], [ %.01039, %bb.be ], [ %.01039, %cf2_glyphpath_closeOpenPath.exit ], [ %.01039, %bb.dy ], [ %.01039, %bb.qb ], [ %.01039, %cf2_stack_setReal.exit1480 ], [ %.01039, %bb.pn ], [ %.21041.lcssa, %bb.ql ], [ %.01039, %bb.qz ], [ %.01039, %bb.aa ], [ %.01039, %cf2_hintmask_read.exit1615 ], [ %.01039, %cf2_stack_popFixed.exit1633 ], [ %.01039, %bb.sj ], [ %.01039, %cf2_stack_popFixed.exit1646 ], [ %.01039, %cf2_stack_popInt.exit.thread ], [ %.01039, %cf2_stack_popInt.exit ], [ %.01039, %bb.rd ], [ %.01039, %bb.re ], [ %.01039, %bb.rf ], [ %.01039, %cf2_hintmask_setCounts.exit.i ], [ %.01039, %bb.fl ], [ %.01039, %cf2_buf_readByte.exit1472.thread ], [ %.01039, %bb.fm ], [ %.01039, %bb.fn ], [ %.01039, %bb.gm ], [ %.01039, %bb.hf ], [ %.01039, %bb.pl ], [ %.01039, %bb.pm ], [ %.01039, %cf2_buf_readByte.exit1472 ], [ %.01039, %cf2_buf_readByte.exit1472 ], [ %.01039, %cf2_buf_readByte.exit1472 ], [ %.01039, %cf2_buf_readByte.exit1472 ], [ %.01039, %cf2_buf_readByte.exit1472 ], [ %.01039, %cf2_buf_readByte.exit1472 ], [ %.01039, %bb.fi ], [ %.01039, %bb.hh ], [ %.01039, %bb.hi ], [ %.01039, %cf2_buf_readByte.exit.i ]
  %.91036 = phi i32 [ %.21029, %bb.p ], [ %.21029, %bb.p ], [ %.21029, %bb.p ], [ %.21029, %bb.sw ], [ %.21029, %bb.q ], [ %.21029, %bb.qc ], [ %.21029, %.thread1957 ], [ %.21029, %bb.an ], [ %.21029, %.thread1958 ], [ %.21029, %bb.aq ], [ %.21029, %cf2_stack_popFixed.exit ], [ %.21029, %bb.be ], [ %.21029, %cf2_glyphpath_closeOpenPath.exit ], [ %.21029, %bb.dy ], [ %.21029, %bb.qb ], [ %.21029, %cf2_stack_setReal.exit1480 ], [ %.21029, %bb.pn ], [ %.21029, %bb.ql ], [ %.21029, %bb.qz ], [ %.21029, %bb.aa ], [ %.21029, %cf2_hintmask_read.exit1615 ], [ %.21029, %cf2_stack_popFixed.exit1633 ], [ %.21029, %bb.sj ], [ %.21029, %cf2_stack_popFixed.exit1646 ], [ %.21029, %cf2_stack_popInt.exit.thread ], [ %.21029, %cf2_stack_popInt.exit ], [ %.21029, %bb.rd ], [ %.21029, %bb.re ], [ %.21029, %bb.rf ], [ %.21029, %cf2_hintmask_setCounts.exit.i ], [ 0, %bb.fl ], [ %.21029, %cf2_buf_readByte.exit1472.thread ], [ %.21029, %bb.fm ], [ %.21029, %bb.fn ], [ %.21029, %bb.gm ], [ %.21029, %bb.hf ], [ %.21029, %bb.pl ], [ %.21029, %bb.pm ], [ %.21029, %cf2_buf_readByte.exit1472 ], [ %.21029, %cf2_buf_readByte.exit1472 ], [ %.21029, %cf2_buf_readByte.exit1472 ], [ %.21029, %cf2_buf_readByte.exit1472 ], [ %.21029, %cf2_buf_readByte.exit1472 ], [ %.21029, %cf2_buf_readByte.exit1472 ], [ %.21029, %bb.fi ], [ %.21029, %bb.hh ], [ %.21029, %bb.hi ], [ %.21029, %cf2_buf_readByte.exit.i ]
  %.11026 = phi i8 [ %.01025, %bb.p ], [ %.01025, %bb.p ], [ %.01025, %bb.p ], [ %.01025, %bb.sw ], [ %.01025, %bb.q ], [ 1, %bb.qc ], [ %.01025, %.thread1957 ], [ %.01025, %bb.an ], [ %.01025, %.thread1958 ], [ %.01025, %bb.aq ], [ %.01025, %cf2_stack_popFixed.exit ], [ %.01025, %bb.be ], [ %.01025, %cf2_glyphpath_closeOpenPath.exit ], [ %.01025, %bb.dy ], [ 0, %bb.qb ], [ %.01025, %cf2_stack_setReal.exit1480 ], [ %.01025, %bb.pn ], [ 1, %bb.ql ], [ %.01025, %bb.qz ], [ %.01025, %bb.aa ], [ %.01025, %cf2_hintmask_read.exit1615 ], [ %.01025, %cf2_stack_popFixed.exit1633 ], [ %.01025, %bb.sj ], [ %.01025, %cf2_stack_popFixed.exit1646 ], [ %.01025, %cf2_stack_popInt.exit.thread ], [ %.01025, %cf2_stack_popInt.exit ], [ %.01025, %bb.rd ], [ %.01025, %bb.re ], [ %.01025, %bb.rf ], [ %.01025, %cf2_hintmask_setCounts.exit.i ], [ %.01025, %bb.fl ], [ %.01025, %cf2_buf_readByte.exit1472.thread ], [ %.01025, %bb.fm ], [ %.01025, %bb.fn ], [ %.01025, %bb.gm ], [ %.01025, %bb.hf ], [ %.01025, %bb.pl ], [ 1, %bb.pm ], [ %.01025, %cf2_buf_readByte.exit1472 ], [ %.01025, %cf2_buf_readByte.exit1472 ], [ %.01025, %cf2_buf_readByte.exit1472 ], [ %.01025, %cf2_buf_readByte.exit1472 ], [ %.01025, %cf2_buf_readByte.exit1472 ], [ %.01025, %cf2_buf_readByte.exit1472 ], [ %.01025, %bb.fi ], [ 0, %bb.hh ], [ 1, %bb.hi ], [ %.01025, %cf2_buf_readByte.exit.i ]
  %i.cca = load ptr, ptr %i.ct, align 8, !tbaa !599
  store ptr %i.cca, ptr %i.cw, align 8, !tbaa !601
  br label %.backedge.backedge

cf2_arrstack_setCount.exit.thread:                ; preds = %bb.lv, %bb.lu, %ps_builder_check_points.exit1523, %bb.jx, %bb.ly, %bb.lo, %bb.kr, %bb.kf, %bb.mq, %bb.kb, %bb.js, %bb.jf, %bb.kg, %bb.kq, %bb.kv, %bb.lb, %bb.lh, %bb.ln, %bb.lx, %bb.me, %bb.mk, %bb.ji, %bb.jd, %ps_builder_check_points.exit, %bb.jv, %bb.jh, %bb.mv, %bb.hg, %bb.et, %bb.ed, %bb.es, %cf2_stack_popInt.exit1350, %bb.ad, %bb.ab, %cf2_stack_popFixed.exit1595, %bb.fa, %bb.r, %bb.so, %bb.rv, %bb.ra, %bb.aw, %.thread1958, %.thread1957, %cf2_stack_setReal.exit1480, %bb.he, %cf2_stack_init.exit.thread, %bb.qy, %bb.qr, %bb.qs, %bb.qt, %bb.qq
  %.not11481944.ph.ph = phi i1 [ false, %bb.he ], [ false, %bb.qy ], [ false, %bb.qt ], [ false, %bb.qs ], [ false, %bb.qr ], [ false, %bb.qq ], [ true, %cf2_stack_init.exit.thread ], [ false, %cf2_stack_setReal.exit1480 ], [ false, %.thread1957 ], [ false, %.thread1958 ], [ false, %bb.aw ], [ false, %bb.ra ], [ false, %bb.rv ], [ false, %bb.so ], [ false, %bb.r ], [ false, %bb.fa ], [ false, %cf2_stack_popFixed.exit1595 ], [ false, %bb.ab ], [ false, %bb.ad ], [ false, %cf2_stack_popInt.exit1350 ], [ false, %bb.es ], [ false, %bb.ed ], [ false, %bb.et ], [ false, %bb.hg ], [ false, %bb.mv ], [ false, %bb.jh ], [ false, %bb.jv ], [ false, %ps_builder_check_points.exit ], [ false, %bb.jd ], [ false, %bb.ji ], [ false, %bb.mk ], [ false, %bb.me ], [ false, %bb.lx ], [ false, %bb.ln ], [ false, %bb.lh ], [ false, %bb.lb ], [ false, %bb.kv ], [ false, %bb.kq ], [ false, %bb.kg ], [ false, %bb.jf ], [ false, %bb.js ], [ false, %bb.kb ], [ false, %bb.mq ], [ false, %bb.kf ], [ false, %bb.kr ], [ false, %bb.lo ], [ false, %bb.ly ], [ false, %bb.jx ], [ false, %ps_builder_check_points.exit1523 ], [ false, %bb.lu ], [ false, %bb.lv ] ; 2 uses
  %.0.i1943.ph.ph = phi ptr [ %i.co, %bb.he ], [ %i.co, %bb.qy ], [ %i.co, %bb.qt ], [ %i.co, %bb.qs ], [ %i.co, %bb.qr ], [ %i.co, %bb.qq ], [ null, %cf2_stack_init.exit.thread ], [ %i.co, %cf2_stack_setReal.exit1480 ], [ %i.co, %.thread1957 ], [ %i.co, %.thread1958 ], [ %i.co, %bb.aw ], [ %i.co, %bb.ra ], [ %i.co, %bb.rv ], [ %i.co, %bb.so ], [ %i.co, %bb.r ], [ %i.co, %bb.fa ], [ %i.co, %cf2_stack_popFixed.exit1595 ], [ %i.co, %bb.ab ], [ %i.co, %bb.ad ], [ %i.co, %cf2_stack_popInt.exit1350 ], [ %i.co, %bb.es ], [ %i.co, %bb.ed ], [ %i.co, %bb.et ], [ %i.co, %bb.hg ], [ %i.co, %bb.mv ], [ %i.co, %bb.jh ], [ %i.co, %bb.jv ], [ %i.co, %ps_builder_check_points.exit ], [ %i.co, %bb.jd ], [ %i.co, %bb.ji ], [ %i.co, %bb.mk ], [ %i.co, %bb.me ], [ %i.co, %bb.lx ], [ %i.co, %bb.ln ], [ %i.co, %bb.lh ], [ %i.co, %bb.lb ], [ %i.co, %bb.kv ], [ %i.co, %bb.kq ], [ %i.co, %bb.kg ], [ %i.co, %bb.jf ], [ %i.co, %bb.js ], [ %i.co, %bb.kb ], [ %i.co, %bb.mq ], [ %i.co, %bb.kf ], [ %i.co, %bb.kr ], [ %i.co, %bb.lo ], [ %i.co, %bb.ly ], [ %i.co, %bb.jx ], [ %i.co, %ps_builder_check_points.exit1523 ], [ %i.co, %bb.lu ], [ %i.co, %bb.lv ] ; 2 uses
  %.sroa.28.0.ph.ph = phi ptr [ %i.cx, %bb.he ], [ %i.cx, %bb.qy ], [ %i.cx, %bb.qt ], [ %i.cx, %bb.qs ], [ %i.cx, %bb.qr ], [ %i.cx, %bb.qq ], [ null, %cf2_stack_init.exit.thread ], [ %i.cx, %cf2_stack_setReal.exit1480 ], [ %i.cx, %.thread1957 ], [ %i.cx, %.thread1958 ], [ %i.cx, %bb.aw ], [ %i.cx, %bb.ra ], [ %i.cx, %bb.rv ], [ %i.cx, %bb.so ], [ %i.cx, %bb.r ], [ %i.cx, %bb.fa ], [ %i.cx, %cf2_stack_popFixed.exit1595 ], [ %i.cx, %bb.ab ], [ %i.cx, %bb.ad ], [ %i.cx, %cf2_stack_popInt.exit1350 ], [ %i.cx, %bb.es ], [ %i.cx, %bb.ed ], [ %i.cx, %bb.et ], [ %i.cx, %bb.hg ], [ %i.cx, %bb.mv ], [ %i.cx, %bb.jh ], [ %i.cx, %bb.jv ], [ %i.cx, %ps_builder_check_points.exit ], [ %i.cx, %bb.jd ], [ %i.cx, %bb.ji ], [ %i.cx, %bb.mk ], [ %i.cx, %bb.me ], [ %i.cx, %bb.lx ], [ %i.cx, %bb.ln ], [ %i.cx, %bb.lh ], [ %i.cx, %bb.lb ], [ %i.cx, %bb.kv ], [ %i.cx, %bb.kq ], [ %i.cx, %bb.kg ], [ %i.cx, %bb.jf ], [ %i.cx, %bb.js ], [ %i.cx, %bb.kb ], [ %i.cx, %bb.mq ], [ %i.cx, %bb.kf ], [ %i.cx, %bb.kr ], [ %i.cx, %bb.lo ], [ %i.cx, %bb.ly ], [ %i.cx, %bb.jx ], [ %i.cx, %ps_builder_check_points.exit1523 ], [ %i.cx, %bb.lu ], [ %i.cx, %bb.lv ] ; 2 uses
  %.14.ph.ph = phi i32 [ %.5, %bb.he ], [ %.12, %bb.qy ], [ 0, %bb.qt ], [ 0, %bb.qs ], [ 0, %bb.qr ], [ 0, %bb.qq ], [ 64, %cf2_stack_init.exit.thread ], [ 18, %bb.lv ], [ 18, %bb.lu ], [ 18, %ps_builder_check_points.exit1523 ], [ 18, %bb.jx ], [ 18, %bb.ly ], [ 18, %bb.lo ], [ 18, %bb.kr ], [ 18, %bb.kf ], [ 18, %bb.mq ], [ 18, %bb.kb ], [ 18, %bb.js ], [ 18, %bb.jf ], [ 18, %bb.kg ], [ 18, %bb.kq ], [ 18, %bb.kv ], [ 18, %bb.lb ], [ 18, %bb.lh ], [ 18, %bb.ln ], [ 18, %bb.lx ], [ 18, %bb.me ], [ 18, %bb.mk ], [ 18, %bb.ji ], [ 18, %bb.jd ], [ 0, %ps_builder_check_points.exit ], [ 18, %bb.jv ], [ 18, %bb.jh ], [ 18, %bb.mv ], [ 0, %bb.hg ], [ 18, %bb.et ], [ 18, %bb.ed ], [ 18, %bb.es ], [ 18, %cf2_stack_popInt.exit1350 ], [ %i.hc, %bb.ad ], [ 18, %bb.ab ], [ 0, %cf2_stack_popFixed.exit1595 ], [ 18, %bb.fa ], [ 18, %bb.r ], [ 0, %bb.so ], [ 0, %bb.rv ], [ 0, %bb.ra ], [ 0, %bb.aw ], [ 0, %.thread1958 ], [ 0, %.thread1957 ], [ 0, %cf2_stack_setReal.exit1480 ]
  %.pr2034.pr = load i32, ptr %i.m, align 8, !tbaa !3
  %.not3.i = icmp eq i32 %.pr2034.pr, 0
  br i1 %.not3.i, label %cf2_setError.exit.sink.split, label %cf2_setError.exit

cf2_setError.exit.sink.split:                     ; preds = %bb.o, %cf2_arrstack_setCount.exit.thread, %bb.g
  %.sink2530 = phi i32 [ 64, %bb.g ], [ %.14.ph.ph, %cf2_arrstack_setCount.exit.thread ], [ 18, %bb.o ]
  %.sroa.28.02045.ph = phi ptr [ %i.cx, %bb.g ], [ %.sroa.28.0.ph.ph, %cf2_arrstack_setCount.exit.thread ], [ %i.cx, %bb.o ]
  %.0.i19432044.ph = phi ptr [ %i.co, %bb.g ], [ %.0.i1943.ph.ph, %cf2_arrstack_setCount.exit.thread ], [ %i.co, %bb.o ]
  %.not114819442043.ph = phi i1 [ false, %bb.g ], [ %.not11481944.ph.ph, %cf2_arrstack_setCount.exit.thread ], [ false, %bb.o ]
  store i32 %.sink2530, ptr %i.m, align 8, !tbaa !3
  br label %cf2_setError.exit

cf2_setError.exit:                                ; preds = %bb.n, %cf2_setError.exit.sink.split, %bb.g, %cf2_arrstack_setCount.exit, %cf2_arrstack_setCount.exit.thread
  %.sroa.28.02045 = phi ptr [ %.sroa.28.02045.ph, %cf2_setError.exit.sink.split ], [ %.sroa.28.0.ph.ph, %cf2_arrstack_setCount.exit.thread ], [ %i.cx, %bb.g ], [ %i.cx, %cf2_arrstack_setCount.exit ], [ %i.cx, %bb.n ]
  %.0.i19432044 = phi ptr [ %.0.i19432044.ph, %cf2_setError.exit.sink.split ], [ %.0.i1943.ph.ph, %cf2_arrstack_setCount.exit.thread ], [ %i.co, %bb.g ], [ %i.co, %cf2_arrstack_setCount.exit ], [ %i.co, %bb.n ] ; 3 uses
  %.not114819442043 = phi i1 [ %.not114819442043.ph, %cf2_setError.exit.sink.split ], [ %.not11481944.ph.ph, %cf2_arrstack_setCount.exit.thread ], [ false, %bb.g ], [ false, %cf2_arrstack_setCount.exit ], [ false, %bb.n ]
  %i.ccb = load ptr, ptr %i.ae, align 8, !tbaa !557
  %i.ccc = getelementptr inbounds nuw i8, ptr %13, i64 18616 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ccd = load ptr, ptr %i.ccc, align 8, !tbaa !672
  call void @ft_mem_free(ptr noundef %i.ccb, ptr noundef %i.ccd) #19
  store ptr null, ptr %i.ccc, align 8, !tbaa !672
  %i.cce = load ptr, ptr %11, align 8, !tbaa !557
  %i.ccf = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ccg = load ptr, ptr %i.ccf, align 8, !tbaa !672
  call void @ft_mem_free(ptr noundef %i.cce, ptr noundef %i.ccg) #19
  store ptr null, ptr %i.ccf, align 8, !tbaa !672
  %i.cch = load ptr, ptr %10, align 8, !tbaa !557
  %i.cci = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.ccj = load ptr, ptr %i.cci, align 8, !tbaa !672
  call void @ft_mem_free(ptr noundef %i.cch, ptr noundef %i.ccj) #19
  store ptr null, ptr %i.cci, align 8, !tbaa !672
  call void @ft_mem_free(ptr noundef %i.n, ptr noundef %.sroa.28.02045) #19
  br i1 %.not114819442043, label %cf2_stack_free.exit, label %bb.aci

bb.aci:                                           ; preds = %cf2_setError.exit
  %i.cck = load ptr, ptr %.0.i19432044, align 8, !tbaa !595 ; 2 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %.0.i19432044, i64 16 ; 2 uses
  %i.ccm = load ptr, ptr %i.ccl, align 8, !tbaa !599
  call void @ft_mem_free(ptr noundef %i.cck, ptr noundef %i.ccm) #19
  store ptr null, ptr %i.ccl, align 8, !tbaa !599
  call void @ft_mem_free(ptr noundef %i.cck, ptr noundef nonnull %.0.i19432044) #19
  br label %cf2_stack_free.exit

cf2_stack_free.exit:                              ; preds = %bb.aci, %cf2_setError.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_computeDarkening(i32 noundef range(i32 -65536000, 65536001) %0, i32 noundef range(i32 262144, -2147483648) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, i32 noundef %4, i8 noundef zeroext %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !3
  %i.a = icmp eq i32 %4, 0
  %i.b = icmp eq i8 %5, 0                         ; 2 uses
  %or.cond.not104 = and i1 %i.a, %i.b
  %i.c = icmp slt i32 %0, 655
  %or.cond96 = or i1 %i.c, %or.cond.not104
  br i1 %or.cond96, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %6, align 4, !tbaa !3      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = add nsw i32 %4, %2
  %i.t = sext i32 %i.s to i64
  %i.u = zext nneg i32 %0 to i64
  %i.v = mul nsw i64 %i.t, %i.u                   ; 2 uses
  %i.w = ashr i64 %i.v, 63
  %i.x = add nsw i64 %i.v, 32768
  %i.y = add nsw i64 %i.x, %i.w
  %i.z = lshr i64 %i.y, 16                        ; 5 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 true)
  %i.ac = xor i32 %i.ab, 31
  %i.ad = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.ae = xor i32 %i.ad, 31
  %i.af = add nuw nsw i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i32 %i.af, 45
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = shl i32 %i.p, 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %sext = shl i64 %i.z, 32
  %i.ai = ashr exact i64 %sext, 32
  %i.aj = zext nneg i32 %1 to i64
  %i.ak = mul nsw i64 %i.ai, %i.aj                ; 2 uses
  %i.al = ashr i64 %i.ak, 63
  %i.am = add nsw i64 %i.ak, 32768
  %i.an = add nsw i64 %i.am, %i.al
  %i.ao = lshr i64 %i.an, 16
  %i.ap = trunc i64 %i.ao to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.ah, %bb.d ], [ %i.ap, %bb.e ] ; 4 uses
  %i.aq = shl i32 %i.d, 16                        ; 2 uses
  %i.ar = icmp slt i32 %.0, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = shl i32 %i.f, 16
  %i.at = sext i32 %i.as to i64
  %i.au = zext nneg i32 %1 to i64
  %i.av = tail call i64 @FT_DivFix(i64 noundef %i.at, i64 noundef %i.au) #19
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.aw = shl i32 %i.h, 16                        ; 2 uses
  %i.ax = icmp slt i32 %.0, %i.aw
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = sext i32 %i.aq to i64
  %i.az = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ba = tail call i64 @FT_DivFix(i64 noundef %i.ay, i64 noundef %i.az) #19
  %.not = icmp eq i32 %i.h, %i.d
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i
  %i.bb = sub nsw i32 %i.h, %i.d
  %i.bc = sub i64 %i.z, %i.ba
  %i.bd = sub nsw i32 %i.j, %i.f
  %sext105 = shl i64 %i.bc, 32
  %i.be = ashr exact i64 %sext105, 32
  %i.bf = sext i32 %i.bd to i64
  %i.bg = sext i32 %i.bb to i64
  %i.bh = tail call i64 @FT_MulDiv(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %i.bg) #19
  %i.bi = shl i32 %i.f, 16
  %i.bj = sext i32 %i.bi to i64
  %i.bk = tail call i64 @FT_DivFix(i64 noundef %i.bj, i64 noundef %i.az) #19
  %i.bl = add nsw i64 %i.bk, %i.bh
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.bm = shl i32 %i.l, 16                        ; 2 uses
  %i.bn = icmp slt i32 %.0, %i.bm
  br i1 %i.bn, label %._crit_edge110, label %bb.l

._crit_edge110:                                   ; preds = %bb.j
  %.pre = zext nneg i32 %1 to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge110, %bb.i
  %.pre-phi = phi i64 [ %.pre, %._crit_edge110 ], [ %i.az, %bb.i ] ; 3 uses
  %i.bo = sext i32 %i.aw to i64
  %i.bp = tail call i64 @FT_DivFix(i64 noundef %i.bo, i64 noundef %.pre-phi) #19
  %.not92 = icmp eq i32 %i.l, %i.h
  br i1 %.not92, label %._crit_edge109, label %.thread98

._crit_edge109:                                   ; preds = %bb.k
  %.pre111 = shl i32 %i.l, 16
  br label %._crit_edge108

.thread98:                                        ; preds = %bb.k
  %i.bq = sub nsw i32 %i.l, %i.h
  %i.br = sub i64 %i.z, %i.bp
  %i.bs = sub nsw i32 %i.n, %i.j
  %sext106 = shl i64 %i.br, 32
  %i.bt = ashr exact i64 %sext106, 32
  %i.bu = sext i32 %i.bs to i64
  %i.bv = sext i32 %i.bq to i64
  %i.bw = tail call i64 @FT_MulDiv(i64 noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bv) #19
  %i.bx = shl i32 %i.j, 16
  %i.by = sext i32 %i.bx to i64
  %i.bz = tail call i64 @FT_DivFix(i64 noundef %i.by, i64 noundef %.pre-phi) #19
  %i.ca = add nsw i64 %i.bz, %i.bw
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cb = shl i32 %i.p, 16
  %i.cc = icmp slt i32 %.0, %i.cb
  %.pre113 = zext nneg i32 %1 to i64              ; 2 uses
  br i1 %i.cc, label %._crit_edge108, label %._crit_edge

._crit_edge108:                                   ; preds = %bb.l, %._crit_edge109
  %.pre-phi114 = phi i64 [ %.pre-phi, %._crit_edge109 ], [ %.pre113, %bb.l ] ; 3 uses
  %.pre-phi112 = phi i32 [ %.pre111, %._crit_edge109 ], [ %i.bm, %bb.l ]
  %i.cd = sext i32 %.pre-phi112 to i64
  %i.ce = tail call i64 @FT_DivFix(i64 noundef %i.cd, i64 noundef %.pre-phi114) #19
  %.not93 = icmp eq i32 %i.p, %i.l
  br i1 %.not93, label %._crit_edge, label %.thread100

.thread100:                                       ; preds = %._crit_edge108
  %i.cf = sub nsw i32 %i.p, %i.l
  %i.cg = sub i64 %i.z, %i.ce
  %i.ch = sub nsw i32 %i.r, %i.n
  %sext107 = shl i64 %i.cg, 32
  %i.ci = ashr exact i64 %sext107, 32
  %i.cj = sext i32 %i.ch to i64
  %i.ck = sext i32 %i.cf to i64
  %i.cl = tail call i64 @FT_MulDiv(i64 noundef %i.ci, i64 noundef %i.cj, i64 noundef %i.ck) #19
end_hunk_2
