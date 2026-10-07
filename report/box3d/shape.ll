Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/shape?download=true
inline.NumInlined: 335
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3Shape_SetMesh:bb.a
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4763 ; 2 uses
  store i8 1, ptr %i.e, align 1, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4736 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @b3RecInternMesh(ptr noundef nonnull %i.g, ptr noundef %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i64 %0, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !287
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %2, ptr %i.j, align 4, !tbaa !75
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %3, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !75
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !69
  call void @b3RecWrite_ShapeSetMesh(ptr noundef %i.k, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %i.c, i64 4080
  %.val = load ptr, ptr %i.l, align 8, !tbaa !84
  %i.m = shl i64 %0, 32
  %sext.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext.i, 32
  %i.o = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.n ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !93
  %cond.i = icmp eq i32 %i.q, 3
  br i1 %cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 200 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  call void @b3RemoveHullFromDatabase(ptr noundef nonnull %i.c, ptr noundef %i.s) #14
  store ptr null, ptr %i.r, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 184 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %b3ComputeShapeMargin.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4400
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4408
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !163
  call void %i.w(ptr noundef nonnull %i.u, ptr noundef %i.y) #14, !inline_history !1
  store ptr null, ptr %i.t, align 8, !tbaa !97
  br label %b3ComputeShapeMargin.exit

b3ComputeShapeMargin.exit:                        ; preds = %bb.f, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  store ptr %1, ptr %i.z, align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.ab = fcmp olt float %3, 0.000000e+00
  %i.ac = fneg float %3
  %i.ad = select i1 %i.ab, float %i.ac, float %3  ; 2 uses
  %i.ae = fcmp oge float %3, 0.000000e+00
  %i.af = fcmp ogt float %i.ad, f0x3C23D70A
  %i.ag = select i1 %i.af, float %i.ad, float f0x3C23D70A ; 2 uses
  %i.ah = fcmp olt <2 x float> %2, zeroinitializer
  %i.ai = fneg <2 x float> %2
  %i.aj = select <2 x i1> %i.ah, <2 x float> %i.ai, <2 x float> %2 ; 2 uses
  %i.ak = fcmp oge <2 x float> %2, zeroinitializer
  %i.al = fcmp ogt <2 x float> %i.aj, splat (float f0x3C23D70A)
  %i.am = select <2 x i1> %i.al, <2 x float> %i.aj, <2 x float> splat (float f0x3C23D70A) ; 2 uses
  %i.an = fneg <2 x float> %i.am
  %i.ao = select <2 x i1> %i.ak, <2 x float> %i.am, <2 x float> %i.an
  %i.ap = fneg float %i.ag
  %i.aq = select i1 %i.ae, float %i.ag, float %i.ap
  store <2 x float> %i.ao, ptr %i.aa, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  store float %i.aq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !75
  store i32 4, ptr %i.p, align 8, !tbaa !93
  %i.ar = call float @b3GetLengthUnitsPerMeter() #14
  %i.as = fmul float %i.ar, 5.000000e-02
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store float %i.as, ptr %i.at, align 4, !tbaa !106
  call fastcc void @b3ResetProxy(ptr noundef %i.c, ptr noundef nonnull %i.o, i1 noundef zeroext true)
  store i8 0, ptr %i.e, align 1, !tbaa !83
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %b3ComputeShapeMargin.exit
  ret void
}

declare void @b3RecWrite_ShapeSetMesh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @b3Shape_GetContactCapacity(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #14 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 4080
  %.val = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !124
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !92
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [128 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !288
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.r, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @b3Shape_GetContactData(i64 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.047.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.450.0.extract.shift = lshr i64 %0, 32    ; 2 uses
  %.sroa.450.0.extract.trunc = trunc i64 %.sroa.450.0.extract.shift to i16 ; 3 uses
  %i.a = trunc nuw i64 %.sroa.450.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #14 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 4080
  %.val = load ptr, ptr %i.e, align 8, !tbaa !84  ; 3 uses
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !124
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !92
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [128 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.05561 = load i32, ptr %i.q, align 4, !tbaa !74 ; 2 uses
  %i.r = icmp ne i32 %.05561, -1
  %i.s = icmp sgt i32 %2, 0
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 4000
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.w = add nsw i32 %.sroa.047.0.extract.trunc, -1 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.05563 = phi i32 [ %.05561, %.lr.ph ], [ %.055, %bb.h ] ; 2 uses
  %.05662 = phi i32 [ 0, %.lr.ph ], [ %.157, %bb.h ] ; 4 uses
  %i.x = ashr i32 %.05563, 1
  %i.y = and i32 %.05563, 1
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [216 x i8], ptr %i.v, i64 %i.z ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !155 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.w
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !156
  %i.ag = icmp eq i32 %i.af, %i.w
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !290
  %.not60 = trunc i32 %i.ai to i1
  br i1 %.not60, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = sext i32 %i.ac to i64
  %i.ak = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !156
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.an ; 2 uses
  %i.ap = sext i32 %.05662 to i64
  %i.aq = getelementptr inbounds [48 x i8], ptr %1, i64 %i.ap ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !291
  %i.at = add nsw i32 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 212
  %i.av = load i32, ptr %i.au, align 4, !tbaa !292
  store i32 %i.at, ptr %i.aq, align 8, !tbaa !74
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i16 %.sroa.450.0.extract.trunc, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !161
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  store i16 0, ptr %.sroa.36.0..sroa_idx, align 2, !tbaa !161
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %i.av, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ax = load i32, ptr %i.ak, align 8, !tbaa !91
  %i.ay = add nsw i32 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 196
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !108
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !74
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i16 %.sroa.450.0.extract.trunc, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !161
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  store i16 %i.ba, ptr %.sroa.33.0..sroa_idx, align 2, !tbaa !161
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bc = load i32, ptr %i.ao, align 8, !tbaa !91
  %i.bd = add nsw i32 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 196
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !108
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !74
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i16 %.sroa.450.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !161
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 26
  store i16 %i.bf, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !161
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !293
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !296
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !297
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !298
  %i.bm = add nsw i32 %.05662, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.157 = phi i32 [ %i.bm, %bb.g ], [ %.05662, %bb.f ], [ %.05662, %bb.e ] ; 3 uses
  %i.bn = zext nneg i32 %i.y to i64
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %.055 = load i32, ptr %i.bp, align 4, !tbaa !74 ; 2 uses
  %i.bq = icmp ne i32 %.055, -1
  %i.br = icmp slt i32 %.157, %2
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.d, label %.loopexit, !llvm.loop !289

.loopexit:                                        ; preds = %bb.h, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %.157, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @b3Shape_GetSensorCapacity(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #14 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 4080
  %.val = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !157
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !133
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define noundef i32 @b3Shape_GetSensorData(i64 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #14 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 4080
  %.val = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !157
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !133
  %i.s = tail call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %2) ; 8 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !132  ; 3 uses
  %i.u = icmp sgt i32 %i.s, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.v = icmp eq i32 %i.s, 1
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %3 = and i32 %i.s, 2147483646
  %unroll_iter = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !159
  %i.y = add nsw i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !160
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i16 %.sroa.2.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !161
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i16 %i.aa, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !161
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !159
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !160
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !74
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i16 %.sroa.2.0.extract.trunc, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !161
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i16 %i.ag, ptr %.sroa.5.0..sroa_idx.1, align 2, !tbaa !161
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !299

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = trunc i32 %i.s to i1
  br i1 %lcmp.mod.not, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.epil.init ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !159
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i16, ptr %i.al, align 4, !tbaa !160
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init ; 3 uses
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !74
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i16 %.sroa.2.0.extract.trunc, ptr %.sroa.4.0..sroa_idx.epil, align 4, !tbaa !161
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  store i16 %i.am, ptr %.sroa.5.0..sroa_idx.epil, align 2, !tbaa !161
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.s, %bb.c ], [ %i.s, %.loopexit.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @b3Shape_GetAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) initializes((0, 24)) %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 4080
  %.val = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.f = shl i64 %1, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !118
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3Shape_ComputeMassData(ptr dead_on_unwind noalias writable sret(%struct.b3MassData) align 4 %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  br label %b3ComputeShapeMass.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 4080
  %.val = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.f = shl i64 %1, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.g ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !93, !noalias !302
  switch i32 %i.j, label %bb.g [
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 5, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.m = load float, ptr %i.l, align 4, !tbaa !165, !noalias !302
  tail call void @b3ComputeCapsuleMass(ptr dead_on_unwind writable sret(%struct.b3MassData) align 4 %0, ptr noundef nonnull %i.k, float noundef %i.m) #14
  br label %b3ComputeShapeMass.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86, !noalias !302
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.q = load float, ptr %i.p, align 4, !tbaa !165, !noalias !302
  tail call void @b3ComputeHullMass(ptr dead_on_unwind writable sret(%struct.b3MassData) align 4 %0, ptr noundef %i.o, float noundef %i.q) #14
  br label %b3ComputeShapeMass.exit

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.t = load float, ptr %i.s, align 4, !tbaa !165, !noalias !302
  tail call void @b3ComputeSphereMass(ptr dead_on_unwind writable sret(%struct.b3MassData) align 4 %0, ptr noundef nonnull %i.r, float noundef %i.t) #14
  br label %b3ComputeShapeMass.exit

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %0, i8 0, i64 52, i1 false), !alias.scope !302
  br label %b3ComputeShapeMass.exit

b3ComputeShapeMass.exit:                          ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @b3Shape_GetClosestPoint(i64 %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b3Vec3, align 8             ; 3 uses
  %4 = alloca %struct.b3Transform, align 8        ; 5 uses
  %5 = alloca %struct.b3DistanceInput, align 8    ; 13 uses
  %6 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %7 = alloca %struct.b3DistanceOutput, align 8   ; 5 uses
  %.sroa.219.0.extract.shift = lshr i64 %0, 32
  store <2 x float> %1, ptr %3, align 8
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %2, ptr %.sroa.217.0..sroa_idx, align 8
  %i.a = trunc nuw i64 %.sroa.219.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #14 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 4080
  %.val = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [232 x i8], ptr %.val, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !92
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [128 x i8], ptr %i.j, i64 %i.m
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %i.c, ptr noundef %i.n) #14
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = load <2 x float>, ptr %4, align 8        ; 2 uses
  %i.p = load <2 x float>, ptr %.sroa.471.0..sroa_idx, align 4 ; 2 uses
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.673.0.copyload = load <2 x float>, ptr %.sroa.673.0..sroa_idx, align 4 ; 12 uses
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.774.0.copyload = load <2 x float>, ptr %.sroa.774.0..sroa_idx, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !93
  switch i32 %i.r, label %b3MakeShapeProxy.exit [
    i32 0, label %bb.c
    i32 5, label %bb.d
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.u = load i32, ptr %i.t, align 8, !tbaa !86
  br label %b3MakeShapeProxy.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 212
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86
  br label %b3MakeShapeProxy.exit

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 108
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !103 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sext i32 %i.ab to i64
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = inttoptr i64 %i.af to ptr
  %.0.i.i = select i1 %i.ac, ptr null, ptr %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 100
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !104
  %i.aj = zext i32 %i.ai to i64
  br label %b3MakeShapeProxy.exit

b3MakeShapeProxy.exit:                            ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi ptr [ %.0.i.i, %bb.e ], [ %i.s, %bb.c ], [ %i.v, %bb.d ], [ null, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.aj, %bb.e ], [ 2, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ]
  %i.ak = phi i32 [ 0, %bb.e ], [ %i.u, %bb.c ], [ %i.x, %bb.d ], [ 0, %bb.b ]
  %.sroa.10.8.insert.ext.i = zext i32 %i.ak to i64
  %.sroa.10.8.insert.shift.i = shl nuw i64 %.sroa.10.8.insert.ext.i, 32
  %.sroa.5.8.insert.insert.i = or disjoint i64 %.sroa.10.8.insert.shift.i, %.sroa.5.0.i
  store ptr %.sroa.0.0.i, ptr %5, align 8, !tbaa !166
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.5.8.insert.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.al, align 8, !tbaa !166
end_hunk_0
begin_hunk_1_@b3CompoundTimeOfImpactFcn:bb.a
  %i.ml = select <2 x i1> %i.mj, <2 x float> %i.mk, <2 x float> %i.mf
  %i.mm = fsub <2 x float> %.sroa.7292.0.copyload, %.sroa.0289.0.copyload
  %i.mn = fsub float %.sroa.9.0.copyload, %.sroa.5291.0.copyload
  %i.mo = fmul <2 x float> %i.mm, splat (float 5.000000e-01) ; 3 uses
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mq = fmul float %i.mn, 5.000000e-01          ; 2 uses
  %i.mr = fmul <2 x float> %i.mi, %i.mp
  %i.ms = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mu = fmul <2 x float> %i.ml, %i.mt
  %i.mv = shufflevector <2 x float> %i.md, <2 x float> %i.mc, <2 x i32> <i32 0, i32 3>
  %i.mw = fmul <2 x float> %i.mv, splat (float 2.000000e+00) ; 3 uses
  %i.mx = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lq)
  %i.my = fcmp olt <2 x float> %i.mw, zeroinitializer
  %i.mz = fneg <2 x float> %i.mw
  %i.na = select <2 x i1> %i.my, <2 x float> %i.mz, <2 x float> %i.mw
  %i.nb = shufflevector <2 x float> %.sroa.6321.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.nc = insertelement <4 x float> %i.nb, float %i.mx, i64 1
  %i.nd = shufflevector <2 x float> %i.na, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ne = shufflevector <4 x float> %i.nc, <4 x float> %i.nd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nf = shufflevector <2 x float> %.sroa.6321.0.copyload, <2 x float> %i.mo, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.ng = insertelement <4 x float> %i.nf, float 2.000000e+00, i64 1
  %i.nh = fmul <4 x float> %i.ne, %i.ng           ; 4 uses
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nj = fadd <2 x float> %i.lr, %i.ni
  %i.nk = fmul <2 x float> %i.nj, splat (float 2.000000e+00)
  %i.nl = fsub <2 x float> splat (float 1.000000e+00), %i.nk ; 3 uses
  %i.nm = extractelement <4 x float> %i.nh, i64 1
  %i.nn = fsub float 1.000000e+00, %i.nm          ; 3 uses
  %i.no = fcmp olt <2 x float> %i.nl, zeroinitializer
  %i.np = fneg <2 x float> %i.nl
  %i.nq = select <2 x i1> %i.no, <2 x float> %i.np, <2 x float> %i.nl
  %i.nr = fcmp olt float %i.nn, 0.000000e+00
  %i.ns = fneg float %i.nn
  %i.nt = select i1 %i.nr, float %i.ns, float %i.nn
  %i.nu = fmul <2 x float> %i.nq, %i.mo
  %i.nv = fadd <2 x float> %i.mr, %i.nu
  %i.nw = fadd <2 x float> %i.mu, %i.nv           ; 2 uses
  %shift373 = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop374 = fadd <4 x float> %i.nh, %shift373
  %i.nx = extractelement <4 x float> %foldExtExtBinop374, i64 2
  %i.ny = fmul float %i.nt, %i.mq
  %i.nz = fadd float %i.ny, %i.nx                 ; 2 uses
  %i.oa = fsub <2 x float> %i.lo, %i.nw
  %i.ob = fsub float %i.lp, %i.nz
  store <2 x float> %i.oa, ptr %9, align 8, !alias.scope !334
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.ob, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !334
  %i.oc = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.od = fadd <2 x float> %i.nw, %i.lo
  %i.oe = fadd float %i.nz, %i.lp
  store <2 x float> %i.od, ptr %i.oc, align 4, !alias.scope !334
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 20
  store float %i.oe, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !334
  call void @b3QueryMesh(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3AABB) align 8 %9, ptr noundef nonnull @b3MeshTimeOfImpactFcn, ptr noundef nonnull %8) #14
  %i.of = getelementptr inbounds nuw i8, ptr %8, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.069, ptr noundef nonnull align 8 dereferenceable(28) %i.of, i64 28, i1 false), !tbaa.struct !182
  %.sroa.8.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %8, i64 204
  %.sroa.8.0.copyload73 = load float, ptr %.sroa.8.0..sroa_idx72, align 4, !tbaa !75
  %.sroa.11.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.11.0..sroa_idx81, i64 20, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store ptr %3, ptr %2, align 8, !tbaa !330
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.og, align 8, !tbaa !331
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !86
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.oi, ptr %i.oj, align 4, !tbaa !332
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @b3TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b3TOIOutput) align 4 %10, ptr noundef nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.069, ptr noundef nonnull align 4 dereferenceable(28) %10, i64 28, i1 false), !tbaa.struct !182
  %.sroa.8.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.sroa.8.0.copyload75 = load float, ptr %.sroa.8.0..sroa_idx74, align 4, !tbaa !75
  %.sroa.11.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.11, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11.0..sroa_idx82, i64 20, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0 = phi float [ %.sroa.8.0.copyload75, %bb.e ], [ %.sroa.8.0.copyload, %bb.b ], [ %.sroa.8.0.copyload71, %bb.c ], [ %.sroa.8.0.copyload73, %bb.d ] ; 4 uses
  %i.ok = fcmp ogt float %.sroa.8.0, 0.000000e+00
  br i1 %i.ok, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.om = load float, ptr %i.ol, align 8, !tbaa !180
  %i.on = fcmp olt float %.sroa.8.0, %i.om
  br i1 %i.on, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.oo, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.069, i64 28, i1 false), !tbaa.struct !182
  %.sroa.8.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %2, i64 204
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx76, align 4, !tbaa !75
  %.sroa.11.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %2, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.11.0..sroa_idx83, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.11, i64 20, i1 false), !tbaa.struct !333
  store float %.sroa.8.0, ptr %i.ol, align 8, !tbaa !180
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.h, %bb.g, %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.069)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i1 true
}

declare i64 @b3GetTicks() local_unnamed_addr #2

declare void @b3QueryMesh(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b3MeshTimeOfImpactFcn(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5, i32 %6, ptr noundef %7) #0 {
bb.a:
  %8 = alloca [3 x %struct.b3Vec3], align 16      ; 9 uses
  %9 = alloca %struct.b3TOIOutput, align 4        ; 7 uses
  %10 = alloca %struct.b3TOIInput, align 8        ; 7 uses
  %11 = alloca %struct.b3TOIOutput, align 4       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 272 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !188
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !188
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 240
  %.sroa.069.0.copyload = load <2 x float>, ptr %i.d, align 8, !tbaa !75
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 248
  %.sroa.470.0.copyload = load float, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 252
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.e, align 4, !tbaa !75 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 260
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !75
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = insertelement <2 x float> %i.f, float %5, i64 1
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fsub <2 x float> %i.g, %i.i              ; 2 uses
  %i.k = shufflevector <2 x float> %4, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.l = fsub <2 x float> %i.k, %0                ; 3 uses
  %i.m = shufflevector <2 x float> %2, <2 x float> %4, <2 x i32> <i32 0, i32 3>
  %i.n = fsub <2 x float> %i.m, %0                ; 3 uses
  %i.o = fmul <2 x float> %i.j, %i.l
  %i.p = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x float> %i.n, %i.p
  %i.r = fsub <2 x float> %i.o, %i.q              ; 3 uses
  %shift = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.n, %shift
  %shift149 = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop150 = fmul <2 x float> %shift149, %i.l
  %foldExtExtBinop152 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop150 ; 3 uses
  %i.s = fmul <2 x float> %i.r, %i.r              ; 2 uses
  %shift154 = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop155 = fadd <2 x float> %shift154, %i.s
  %foldExtExtBinop157 = fmul <2 x float> %foldExtExtBinop152, %foldExtExtBinop152
  %foldExtExtBinop159 = fadd <2 x float> %foldExtExtBinop157, %foldExtExtBinop155
  %i.t = extractelement <2 x float> %foldExtExtBinop159, i64 0 ; 2 uses
  %i.u = fcmp ogt float %i.t, f0x057A0000
  br i1 %i.u, label %bb.b, label %b3Normalize.exit

bb.b:                                             ; preds = %bb.a
  %i.v = extractelement <2 x float> %foldExtExtBinop152, i64 0
  %sqrt = tail call float @llvm.sqrt.f32(float %i.t)
  %i.w = fdiv float 1.000000e+00, %sqrt           ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.z = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.y, %i.z
  %i.ab = fmul float %i.v, %i.w
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.018.0.i = phi <2 x float> [ %i.aa, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.ab, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.ac = fsub float %.sroa.470.0.copyload, %1
  %i.ad = fsub <2 x float> %.sroa.069.0.copyload, %0
  %i.ae = fmul <2 x float> %i.ad, %.sroa.018.0.i  ; 2 uses
  %shift161 = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop162 = fadd <2 x float> %i.ae, %shift161
  %i.af = extractelement <2 x float> %foldExtExtBinop162, i64 0
  %i.ag = fmul float %i.ac, %.sroa.5.0.i
  %i.ah = fadd float %i.ag, %i.af                 ; 2 uses
  %foldExtExtBinop164 = fsub <2 x float> %.sroa.068.0.copyload, %0
  %foldExtExtBinop166 = fsub <2 x float> %.sroa.068.0.copyload, %0
  %i.ai = fsub float %.sroa.4.0.copyload, %1
  %foldExtExtBinop168 = fmul <2 x float> %foldExtExtBinop164, %.sroa.018.0.i
  %foldExtExtBinop170 = fmul <2 x float> %foldExtExtBinop166, %.sroa.018.0.i
  %shift172 = shufflevector <2 x float> %foldExtExtBinop170, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop173 = fadd <2 x float> %foldExtExtBinop168, %shift172
  %i.aj = extractelement <2 x float> %foldExtExtBinop173, i64 0
  %i.ak = fmul float %i.ai, %.sroa.5.0.i
  %i.al = fadd float %i.ak, %i.aj                 ; 2 uses
  %i.am = fcmp olt float %i.ah, 0.000000e+00
  br i1 %i.am, label %bb.n, label %bb.c

bb.c:                                             ; preds = %b3Normalize.exit
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 268
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !186, !range !98, !noundef !99
  %12 = trunc nuw i8 %i.ao to i1
  br i1 %12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = fsub float %i.ah, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !187 ; 2 uses
  %i.as = fcmp olt float %i.ap, %i.ar
  %i.at = fcmp ogt float %i.al, %i.ar
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x float> %0, ptr %8, align 16, !tbaa !75
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 12
  store <2 x float> %2, ptr %i.au, align 4, !tbaa !75
  %.sroa.398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 20
  store float %3, ptr %.sroa.398.0..sroa_idx, align 4, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 24
  store <2 x float> %4, ptr %i.av, align 8, !tbaa !75
  %.sroa.394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store float %5, ptr %.sroa.394.0..sroa_idx, align 16, !tbaa !75
  store ptr %8, ptr %7, align 8, !tbaa !335
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.aw, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @b3TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b3TOIOutput) align 4 %9, ptr noundef nonnull %7) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !336 ; 4 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !185
  %i.bc = fcmp olt float %i.ay, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bd, ptr noundef nonnull align 4 dereferenceable(52) %9, i64 52, i1 false), !tbaa.struct !182
  store float %i.ay, ptr %i.ba, align 8, !tbaa !185
  br label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.be = fcmp oeq float %i.ay, 0.000000e+00
  br i1 %i.be, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %10, ptr noundef nonnull align 8 dereferenceable(176) %7, i64 176, i1 false), !tbaa.struct !191
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 228
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !187
  %i.bj = call float @b3GetLengthUnitsPerMeter() #14
  %i.bk = fmul float %i.bj, 5.000000e-03
  %i.bl = fadd float %i.bi, %i.bk
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !166
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !74
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 28
  store float %i.bl, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @b3TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b3TOIOutput) align 4 %11, ptr noundef nonnull %10) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %9, ptr noundef nonnull align 4 dereferenceable(52) %11, i64 52, i1 false), !tbaa.struct !182
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.bm = load float, ptr %i.ax, align 4, !tbaa !336 ; 3 uses
  %i.bn = fcmp ogt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !185
  %i.bq = fcmp olt float %i.bm, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.br, ptr noundef nonnull align 4 dereferenceable(52) %9, i64 52, i1 false), !tbaa.struct !182
  store float %i.bm, ptr %i.bo, align 8, !tbaa !185
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 224
  store i8 1, ptr %i.bs, align 8, !tbaa !337
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %b3Normalize.exit, %bb.m
  ret i1 true
}

declare void @b3QueryHeightField(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @b3GetMilliseconds(i64 noundef) local_unnamed_addr #2

declare float @b3GetStallThreshold() local_unnamed_addr #2

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #2

declare void @b3TimeOfImpact(ptr dead_on_unwind writable sret(%struct.b3TOIOutput) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @b3GetShapeUserMaterialId(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.b3ChildShape, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93
  switch i32 %i.e, label %.thread [
    i32 4, label %bb.c
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !338  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sext i32 %i.i to i64
  %i.m = add nsw i64 %i.l, %i.k                   ; 2 uses
  %.not2530 = icmp eq i64 %i.m, 0
  %.not25 = select i1 %i.j, i1 true, i1 %.not2530
  br i1 %.not25, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !86
  %i.r = zext i8 %i.q to i32
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = tail call i32 @b3GetHeightFieldMaterial(ptr noundef %i.t, i32 noundef %2) #14
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %3, ptr noundef %i.w, i32 noundef %1) #14
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.y = load i32, ptr %i.x, align 4, !tbaa !190
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %3, align 8, !tbaa !86    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !338 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sext i32 %i.ac to i64
  %i.ag = add nsw i64 %i.af, %i.ae                ; 2 uses
  %.not29 = icmp eq i64 %i.ag, 0
  %.not = select i1 %i.ad, i1 true, i1 %.not29
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = sext i32 %2 to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !86
  %i.al = call i8 @llvm.umin.i8(i8 %i.ak, i8 3)
  %i.am = zext nneg i8 %i.al to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.an = phi i64 [ %i.am, %bb.h ], [ 0, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ %i.aq, %bb.i ], [ %i.as, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
end_hunk_1
