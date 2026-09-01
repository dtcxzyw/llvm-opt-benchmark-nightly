Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftstroke?download=true
inline.NumInlined: 59
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Stroker_LineTo:bb.a
  br i1 %.not50.1, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  store i64 %i.r, ptr %0, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !47
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %i.an, align 8, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.b, %bb.d, %bb.e, %bb.a
  %.041 = phi i32 [ 6, %bb.a ], [ 0, %bb.b ], [ %i.x, %bb.d ], [ %.lcssa, %bb.g ], [ 0, %bb.i ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.041
}

declare i64 @FT_Vector_Length(ptr noundef) local_unnamed_addr #2

declare i64 @FT_Atan2(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @FT_Vector_From_Polar(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroker_subpath_start(ptr nofree noundef nonnull captures(none) initializes((136, 137)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Vector_, align 16        ; 5 uses
  %4 = alloca %struct.FT_Vector_, align 16        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = add nsw i64 %1, 5898240
  call void @FT_Vector_From_Polar(ptr noundef nonnull %3, i64 noundef %i.b, i64 noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.d, align 8, !tbaa !45
  %i.f = load <2 x i64>, ptr %3, align 16, !tbaa !45
  %i.g = add nsw <2 x i64> %i.f, %i.e
  store <2 x i64> %i.g, ptr %4, align 16, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26   ; 5 uses
  %i.k = icmp sgt i32 %i.j, -1
  %.pre7.i = load i32, ptr %i.h, align 8, !tbaa !35 ; 4 uses
  br i1 %i.k, label %bb.b, label %ft_stroke_border_moveto.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw i32 %i.j, 1
  %.not.i.i = icmp ugt i32 %.pre7.i, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.h, align 8, !tbaa !35
  br label %ft_stroke_border_moveto.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i32 %.pre7.i, -1                     ; 2 uses
  store i32 %i.m, ptr %i.h, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %i.p = zext nneg i32 %i.j to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p
  %i.r = zext i32 %i.m to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !47
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.w = load i8, ptr %i.v, align 1, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p
  store i8 %i.w, ptr %i.x, align 1, !tbaa !49
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.p ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !49
  %i.ab = or i8 %i.aa, 4
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !49
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.ad = add i32 %.pre7.i, -2
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !49
  %i.ah = or i8 %i.ag, 8
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !49
  %.pre.pre.i = load i32, ptr %i.h, align 8, !tbaa !35
  br label %ft_stroke_border_moveto.exit

ft_stroke_border_moveto.exit:                     ; preds = %bb.a, %bb.c, %bb.d
  %i.ai = phi i32 [ %.pre7.i, %bb.a ], [ %i.j, %bb.c ], [ %.pre.pre.i, %bb.d ]
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.aj, align 8, !tbaa !50
  %i.ak = call fastcc i32 @ft_stroke_border_lineto(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %4, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %ft_stroke_border_moveto.exit
  %i.al = load <2 x i64>, ptr %i.d, align 8, !tbaa !45
  %i.am = load <2 x i64>, ptr %3, align 16, !tbaa !45
  %i.an = sub nsw <2 x i64> %i.al, %i.am
  store <2 x i64> %i.an, ptr %4, align 16, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !26 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  %.pre7.i17 = load i32, ptr %i.ao, align 8, !tbaa !35 ; 4 uses
  br i1 %i.ar, label %bb.f, label %ft_stroke_border_moveto.exit20

bb.f:                                             ; preds = %bb.e
  %i.as = add nuw i32 %i.aq, 1
  %.not.i.i18 = icmp ugt i32 %.pre7.i17, %i.as
  br i1 %.not.i.i18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !35
  br label %ft_stroke_border_moveto.exit20

bb.h:                                             ; preds = %bb.f
  %i.at = add i32 %.pre7.i17, -1                  ; 2 uses
  store i32 %i.at, ptr %i.ao, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %i.aw = zext nneg i32 %i.aq to i64              ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = zext i32 %i.at to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !47
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.aw
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !49
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !49
  %i.bi = or i8 %i.bh, 4
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !49
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bk = add i32 %.pre7.i17, -2
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !49
  %i.bo = or i8 %i.bn, 8
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !49
  %.pre.pre.i19 = load i32, ptr %i.ao, align 8, !tbaa !35
  br label %ft_stroke_border_moveto.exit20

ft_stroke_border_moveto.exit20:                   ; preds = %bb.e, %bb.g, %bb.h
  %i.bp = phi i32 [ %.pre7.i17, %bb.e ], [ %i.aq, %bb.g ], [ %.pre.pre.i19, %bb.h ]
  store i32 %i.bp, ptr %i.ap, align 4, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.bq, align 8, !tbaa !50
  %i.br = call fastcc i32 @ft_stroke_border_lineto(ptr noundef nonnull %i.ao, ptr noundef nonnull readonly %4, i8 noundef zeroext 0)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.bs, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.bt, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.bu, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %ft_stroke_border_moveto.exit, %ft_stroke_border_moveto.exit20
  %.0 = phi i32 [ %i.ak, %ft_stroke_border_moveto.exit ], [ %i.br, %ft_stroke_border_moveto.exit20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroker_process_corner(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %3 = alloca %struct.FT_Vector_, align 16        ; 6 uses
  %4 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %5 = alloca %struct.FT_Vector_, align 16        ; 11 uses
  %6 = alloca %struct.FT_Vector_, align 16        ; 10 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 9 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  %i.d = tail call i64 @FT_Angle_Diff(i64 noundef %i.a, i64 noundef %i.c) #10 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %ft_stroker_outside.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.lobit = lshr i64 %i.d, 63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.lobit ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %isneg = icmp slt i64 %i.d, 0
  %i.h = select i1 %isneg, i64 -5898240, i64 5898240 ; 2 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !46
  %i.j = load i64, ptr %i.b, align 8, !tbaa !44
  %i.k = tail call i64 @FT_Angle_Diff(i64 noundef %i.i, i64 noundef %i.j) #10 ; 2 uses
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !50
  %i.o = icmp eq i8 %i.n, 0
  %i.p = icmp eq i64 %1, 0                        ; 3 uses
  %or.cond.i = or i1 %i.p, %i.o
  %i.q = add i64 %i.k, -11763714
  %i.r = icmp ult i64 %i.q, -23527427
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.r
  br i1 %or.cond5.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @FT_Vector_Unit(ptr noundef nonnull %7, i64 noundef %i.l) #10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41
  %i.w = load i64, ptr %7, align 8, !tbaa !39
  %i.x = call i64 @FT_MulDiv(i64 noundef %i.t, i64 noundef %i.v, i64 noundef %i.w) #10 ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.x, i1 true) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48
  %.not40.i = icmp slt i64 %i.aa, %i.y
  %.not42.i = icmp slt i64 %1, %i.y
  %spec.select.i = or i1 %.not42.i, %.not40.i
  br i1 %spec.select.i, label %.critedge.i, label %bb.e

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !44
  %i.ae = add nsw i64 %i.ad, %i.h
  call void @FT_Vector_From_Polar(ptr noundef nonnull %8, i64 noundef %i.ac, i64 noundef %i.ae) #10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !tbaa !45
  %i.ah = load <2 x i64>, ptr %8, align 16, !tbaa !45
  %i.ai = add nsw <2 x i64> %i.ah, %i.ag
  store <2 x i64> %i.ai, ptr %8, align 16, !tbaa !45
  store i8 0, ptr %i.m, align 8, !tbaa !50
  br label %ft_stroker_inside.exit

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %0, align 8, !tbaa !46
  %i.ak = add nsw i64 %i.l, %i.h
  %i.al = add i64 %i.ak, %i.aj
  %i.am = load i64, ptr %i.s, align 8, !tbaa !30
  %i.an = load i64, ptr %7, align 8, !tbaa !39
  %i.ao = call i64 @FT_DivFix(i64 noundef %i.am, i64 noundef %i.an) #10
  call void @FT_Vector_From_Polar(ptr noundef nonnull %8, i64 noundef %i.ao, i64 noundef %i.al) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load <2 x i64>, ptr %i.ap, align 8, !tbaa !45
  %i.ar = load <2 x i64>, ptr %8, align 16, !tbaa !45
  %i.as = add nsw <2 x i64> %i.ar, %i.aq
  store <2 x i64> %i.as, ptr %8, align 16, !tbaa !45
  br label %ft_stroker_inside.exit

ft_stroker_inside.exit:                           ; preds = %.critedge.i, %bb.e
  %i.at = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.g, ptr noundef %8, i8 noundef zeroext 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.f, label %ft_stroker_outside.exit

bb.f:                                             ; preds = %ft_stroker_inside.exit
  %i.au = icmp sgt i64 %i.d, -1                   ; 3 uses
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !32 ; 3 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = zext i1 %i.au to i32
  %i.bb = call fastcc i32 @ft_stroker_arcto(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %i.ba)
  br label %ft_stroker_outside.exit

bb.h:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.neg.i13 = select i1 %i.au, i64 -11796480, i64 0 ; 2 uses
  %i.be = add nuw nsw i64 %.neg.i13, 5898240      ; 4 uses
  %i.bf = icmp eq i32 %i.ay, 1
  %.not84.i = icmp eq i32 %i.ay, 2
  br i1 %i.bf, label %.thread90.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load i64, ptr %0, align 8, !tbaa !46
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !44
  %i.bi = call i64 @FT_Angle_Diff(i64 noundef %i.bg, i64 noundef %i.bh) #10 ; 2 uses
  %i.bj = sdiv i64 %i.bi, 2
  %i.bk = and i64 %i.bi, -2
  %i.bl = icmp eq i64 %i.bk, 11796480
  %i.bm = sub nuw nsw i64 -5898240, %.neg.i13
  %spec.select.i14 = select i1 %i.bl, i64 %i.bm, i64 %i.bj ; 3 uses
  %i.bn = load i64, ptr %0, align 8, !tbaa !46
  %i.bo = add i64 %i.bn, %i.be
  %i.bp = add i64 %i.bo, %spec.select.i14         ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !33
  call void @FT_Vector_From_Polar(ptr noundef nonnull %2, i64 noundef %i.br, i64 noundef %spec.select.i14) #10
  %i.bs = load i64, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.bt = icmp slt i64 %i.bs, 65536
  br i1 %i.bt, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  br i1 %.not84.i, label %bb.k, label %.thread90.i

bb.k:                                             ; preds = %bb.j
  %i.bu = add nsw i64 %spec.select.i14, -58
  %i.bv = icmp ult i64 %i.bu, -115
  br i1 %i.bv, label %bb.l, label %bb.p

.thread90.i:                                      ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !44
  %i.bx = add nsw i64 %i.bw, %i.be
  call void @FT_Vector_From_Polar(ptr noundef nonnull %3, i64 noundef %i.bd, i64 noundef %i.bx) #10
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load <2 x i64>, ptr %i.by, align 8, !tbaa !45
  %i.ca = load <2 x i64>, ptr %3, align 16, !tbaa !45
  %i.cb = add nsw <2 x i64> %i.ca, %i.bz
  store <2 x i64> %i.cb, ptr %3, align 16, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.cc, align 8, !tbaa !50
  %i.cd = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.aw, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !33
  %i.cf = mul i64 %i.ce, %i.bd                    ; 2 uses
  %i.cg = ashr i64 %i.cf, 63
  %i.ch = add i64 %i.cf, 32768
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = ashr i64 %i.ci, 16
  call void @FT_Vector_From_Polar(ptr noundef nonnull %4, i64 noundef %i.cj, i64 noundef %i.bp) #10
  %i.ck = load i64, ptr %2, align 8, !tbaa !39
  %i.cl = sub nsw i64 65536, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !41
  %i.co = call i64 @FT_DivFix(i64 noundef %i.cl, i64 noundef %i.cn) #10 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !41 ; 2 uses
  %i.cr = mul i64 %i.cq, %i.co                    ; 2 uses
  %i.cs = ashr i64 %i.cr, 63
  %i.ct = add i64 %i.cr, 32768
  %i.cu = add i64 %i.ct, %i.cs
  %i.cv = ashr i64 %i.cu, 16
  %i.cw = load i64, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.cx = mul i64 %i.co, %i.cw                    ; 2 uses
  %i.cy = sub i64 0, %i.cx
  %i.cz = ashr i64 %i.cy, 63
  %reass.sub = sub i64 %i.cz, %i.cx
  %i.da = add i64 %reass.sub, 32768
  %i.db = ashr i64 %i.da, 16
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !40
  %i.df = add nsw i64 %i.de, %i.cw                ; 2 uses
  store i64 %i.df, ptr %4, align 8, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !42
  %i.di = add nsw i64 %i.dh, %i.cq                ; 2 uses
  store i64 %i.di, ptr %i.cp, align 8, !tbaa !41
  %i.dj = add nsw i64 %i.cv, %i.df                ; 2 uses
  store i64 %i.dj, ptr %5, align 16, !tbaa !39
  %i.dk = add nsw i64 %i.di, %i.db                ; 2 uses
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !41
  %i.dl = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.aw, ptr noundef %5, i8 noundef zeroext 0) ; 2 uses
  %.not85.i = icmp eq i32 %i.dl, 0
  br i1 %.not85.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dm = load i64, ptr %4, align 8, !tbaa !39
  %factor.i = shl i64 %i.dm, 1
  %i.dn = sub i64 %factor.i, %i.dj
  store i64 %i.dn, ptr %5, align 16, !tbaa !39
  %i.do = load i64, ptr %i.cp, align 8, !tbaa !41
  %factor95.i = shl i64 %i.do, 1
  %i.dp = sub i64 %factor95.i, %i.dk
  store i64 %i.dp, ptr %i.dc, align 8, !tbaa !41
  %i.dq = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.aw, ptr noundef %5, i8 noundef zeroext 0) ; 2 uses
  %.not86.i = icmp eq i32 %i.dq, 0
  %brmerge.not = and i1 %i.p, %.not86.i
  br i1 %brmerge.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !44
  %i.ds = add nsw i64 %i.dr, %i.be
  call void @FT_Vector_From_Polar(ptr noundef nonnull %5, i64 noundef %i.bd, i64 noundef %i.ds) #10
  %i.dt = load <2 x i64>, ptr %i.dd, align 8, !tbaa !45
  %i.du = load <2 x i64>, ptr %5, align 16, !tbaa !45
  %i.dv = add nsw <2 x i64> %i.du, %i.dt
  store <2 x i64> %i.dv, ptr %5, align 16, !tbaa !45
  %i.dw = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.aw, ptr noundef %5, i8 noundef zeroext 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.172.i = phi i32 [ %i.dq, %bb.m ], [ %i.dl, %bb.l ], [ %i.dw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.s

bb.p:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.dx = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.dy = load i64, ptr %i.bq, align 8, !tbaa !33
  %i.dz = call i64 @FT_MulDiv(i64 noundef %i.dx, i64 noundef %i.dy, i64 noundef %i.bs) #10
  call void @FT_Vector_From_Polar(ptr noundef nonnull %6, i64 noundef %i.dz, i64 noundef %i.bp) #10
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eb = load <2 x i64>, ptr %i.ea, align 8, !tbaa !45
  %i.ec = load <2 x i64>, ptr %6, align 16, !tbaa !45
  %i.ed = add nsw <2 x i64> %i.ec, %i.eb
  store <2 x i64> %i.ed, ptr %6, align 16, !tbaa !45
  %i.ee = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.aw, ptr noundef %6, i8 noundef zeroext 0) ; 2 uses
  %.not83.i = icmp eq i32 %i.ee, 0
  %brmerge17.not = and i1 %i.p, %.not83.i
  br i1 %brmerge17.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ef = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !44
  %i.eh = add nsw i64 %i.eg, %i.be
  call void @FT_Vector_From_Polar(ptr noundef nonnull %6, i64 noundef %i.ef, i64 noundef %i.eh) #10
  %i.ei = load <2 x i64>, ptr %i.ea, align 8, !tbaa !45
  %i.ej = load <2 x i64>, ptr %6, align 16, !tbaa !45
  %i.ek = add nsw <2 x i64> %i.ej, %i.ei
  store <2 x i64> %i.ek, ptr %6, align 16, !tbaa !45
  %i.el = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.aw, ptr noundef %6, i8 noundef zeroext 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.3.i = phi i32 [ %i.ee, %bb.p ], [ %i.el, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %.thread90.i
  %.5.i = phi i32 [ %.172.i, %bb.o ], [ %.3.i, %bb.r ], [ %i.cd, %.thread90.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %ft_stroker_outside.exit

ft_stroker_outside.exit:                          ; preds = %bb.s, %bb.g, %ft_stroker_inside.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.at, %ft_stroker_inside.exit ], [ %i.bb, %bb.g ], [ %.5.i, %bb.s ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroke_border_lineto(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !50
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = load i32, ptr %0, align 8, !tbaa !35
  %i.g = add i32 %i.f, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !47
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !35     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26
  %i.m = icmp ugt i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = add i32 %i.j, -1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = load i64, ptr %1, align 8, !tbaa !39
  %i.u = add i64 %i.s, 1
  %i.v = sub i64 %i.u, %i.t
  %or.cond = icmp ult i64 %i.v, 3
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41
  %i.aa = add i64 %i.x, 1
  %i.ab = sub i64 %i.aa, %i.z
  %or.cond38 = icmp ult i64 %i.ab, 3
  br i1 %or.cond38, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !38 ; 3 uses
  %i.ae = add i32 %i.j, 1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.af = icmp ugt i32 %i.ae, %i.ad
  br i1 %i.af, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre41 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.02429.i = phi i32 [ %i.ad, %bb.g ], [ %i.ak, %bb.h ] ; 2 uses
  %i.ai = lshr i32 %.02429.i, 1
  %i.aj = add i32 %.02429.i, 16
  %i.ak = add i32 %i.aj, %i.ai                    ; 4 uses
  %i.al = icmp ult i32 %i.ak, %i.ae
  br i1 %i.al, label %bb.h, label %bb.i, !llvm.loop !53

bb.i:                                             ; preds = %bb.h
  %i.am = zext i32 %i.ad to i64                   ; 2 uses
  %i.an = zext i32 %i.ak to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.aq = call ptr @ft_mem_realloc(ptr noundef %i.ah, i64 noundef 16, i64 noundef %i.am, i64 noundef %i.an, ptr noundef %i.ap, ptr noundef nonnull %i.a) #10
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !36
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.j, label %ft_stroke_border_grow.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.au = call ptr @ft_mem_realloc(ptr noundef %i.ah, i64 noundef 1, i64 noundef %i.am, i64 noundef %i.an, ptr noundef %i.at, ptr noundef nonnull %i.a) #10 ; 2 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !37
  %i.av = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %.not28.i = icmp eq i32 %i.av, 0
  br i1 %.not28.i, label %bb.k, label %ft_stroke_border_grow.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !38
  %.pre = load i32, ptr %0, align 8, !tbaa !35
  br label %bb.l

ft_stroke_border_grow.exit:                       ; preds = %bb.i, %bb.j
  %i.aw = phi i32 [ %i.ar, %bb.i ], [ %i.av, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.ax = phi ptr [ %i.au, %bb.k ], [ %.pre41, %._crit_edge ]
  %i.ay = phi i32 [ %.pre, %bb.k ], [ %i.j, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bb = zext i32 %i.ay to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !47
  store i8 1, ptr %i.bd, align 1, !tbaa !49
  %i.be = load i32, ptr %0, align 8, !tbaa !35
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %ft_stroke_border_grow.exit, %bb.l, %bb.b
  %.032 = phi i32 [ 0, %bb.b ], [ %i.aw, %ft_stroke_border_grow.exit ], [ 0, %bb.l ]
  store i8 %2, ptr %i.b, align 8, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.m
  %.0 = phi i32 [ %.032, %bb.m ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @FT_Stroker_ConicTo(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [34 x %struct.FT_Vector_], align 16 ; 6 uses
  %4 = alloca %struct.FT_Vector_, align 16        ; 13 uses
  %5 = alloca %struct.FT_Vector_, align 16        ; 20 uses
  %6 = alloca %struct.FT_Vector_, align 16        ; 13 uses
  %7 = alloca %struct.FT_Vector_, align 16        ; 9 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %.thread186

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = load i64, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.g = add i64 %i.e, 1
  %i.h = sub i64 %i.g, %i.f
  %or.cond153 = icmp ult i64 %i.h, 3
  br i1 %or.cond153, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = add i64 %i.j, 1
  %i.n = sub i64 %i.m, %i.l
  %or.cond154 = icmp ult i64 %i.n, 3
  br i1 %or.cond154, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@FT_Stroker_ParseOutline:bb.a
FT_Stroker_BeginSubPath.exit.thread:              ; preds = %bb.u, %bb.t, %bb.s, %bb.d, %bb.k, %bb.r, %FT_Stroker_Rewind.exit, %.thread135, %.thread140, %.thread, %bb.b, %bb.a
  %.097 = phi i32 [ %i.bd, %bb.k ], [ 0, %FT_Stroker_Rewind.exit ], [ 6, %bb.b ], [ 20, %bb.a ], [ %.285.ph, %.thread ], [ 20, %.thread140 ], [ 20, %.thread135 ], [ %i.ca, %bb.r ], [ 0, %bb.u ], [ %i.cd, %bb.t ], [ 20, %bb.d ], [ %.4, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.097
}

; Function Attrs: nounwind uwtable
define i32 @FT_Glyph_Stroke(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %.not42 = icmp eq ptr %i.b, null
  br i1 %.not42, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %.not43 = icmp eq ptr %i.d, @ft_outline_glyph_class
  br i1 %.not43, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = call i32 @FT_Glyph_Copy(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not44 = icmp eq i32 %i.e, 0                   ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.032 = select i1 %.not44, ptr %i.f, ptr %i.b   ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %.not44, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 5 uses
  %i.h = call i32 @FT_Stroker_ParseOutline(ptr noundef %1, ptr noundef nonnull %i.g, i8 noundef zeroext 0) ; 2 uses
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %bb.f, label %FT_Stroker_GetCounts.exit.thread

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %FT_Stroker_GetCounts.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %.not36.i.i = icmp eq i32 %i.j, 0
  br i1 %.not36.i.i, label %bb.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %.041.i.i = phi i1 [ %.not31.not.i.i, %bb.h ], [ true, %.lr.ph.preheader.i.i ]
  %.01940.i.i = phi ptr [ %i.s, %bb.h ], [ %i.l, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02139.i.i = phi i32 [ %i.r, %bb.h ], [ %i.j, %.lr.ph.preheader.i.i ]
  %.02238.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i ]
  %i.m = load i8, ptr %.01940.i.i, align 1, !tbaa !49 ; 2 uses
  %i.n = and i8 %i.m, 4
  %.not29.i.i = icmp eq i8 %i.n, 0
  %i.o = xor i1 %.041.i.i, %.not29.i.i
  br i1 %i.o, label %bb.h, label %FT_Stroker_GetCounts.exit.thread

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.p = and i8 %i.m, 8                           ; 2 uses
  %.not31.not.i.i = icmp ne i8 %i.p, 0            ; 2 uses
  %.lobit.i.i = lshr exact i8 %i.p, 3
  %i.q = zext nneg i8 %.lobit.i.i to i32
  %spec.select.i.i = add i32 %.02238.i.i, %i.q    ; 2 uses
  %i.r = add i32 %.02139.i.i, -1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01940.i.i, i64 1
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !62

._crit_edge.i.i:                                  ; preds = %bb.h
  br i1 %.not31.not.i.i, label %bb.i, label %FT_Stroker_GetCounts.exit.thread

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.g
  %.022.lcssa49.i.i = phi i32 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 1, ptr %i.t, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.v = load i32, ptr %i.u, align 8, !tbaa !35   ; 3 uses
  %.not36.i22.i = icmp eq i32 %i.v, 0
  br i1 %.not36.i22.i, label %bb.k, label %.lr.ph.preheader.i23.i

.lr.ph.preheader.i23.i:                           ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %bb.j, %.lr.ph.preheader.i23.i
  %.041.i25.i = phi i1 [ %.not31.not.i33.i, %bb.j ], [ true, %.lr.ph.preheader.i23.i ]
  %.01940.i26.i = phi ptr [ %i.ae, %bb.j ], [ %i.x, %.lr.ph.preheader.i23.i ] ; 2 uses
  %.02139.i27.i = phi i32 [ %i.ad, %bb.j ], [ %i.v, %.lr.ph.preheader.i23.i ]
  %.02238.i28.i = phi i32 [ %spec.select.i35.i, %bb.j ], [ 0, %.lr.ph.preheader.i23.i ]
  %i.y = load i8, ptr %.01940.i26.i, align 1, !tbaa !49 ; 2 uses
  %i.z = and i8 %i.y, 4
  %.not29.i29.i = icmp eq i8 %i.z, 0
  %i.aa = xor i1 %.041.i25.i, %.not29.i29.i
  br i1 %i.aa, label %bb.j, label %FT_Stroker_GetCounts.exit.thread

bb.j:                                             ; preds = %.lr.ph.i24.i
  %i.ab = and i8 %i.y, 8                          ; 2 uses
  %.not31.not.i33.i = icmp ne i8 %i.ab, 0         ; 2 uses
  %.lobit.i34.i = lshr exact i8 %i.ab, 3
  %i.ac = zext nneg i8 %.lobit.i34.i to i32
  %spec.select.i35.i = add i32 %.02238.i28.i, %i.ac ; 2 uses
  %i.ad = add i32 %.02139.i27.i, -1               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01940.i26.i, i64 1
  %.not.i36.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i36.i, label %._crit_edge.i37.i, label %.lr.ph.i24.i, !llvm.loop !62

._crit_edge.i37.i:                                ; preds = %bb.j
  br i1 %.not31.not.i33.i, label %bb.k, label %FT_Stroker_GetCounts.exit.thread

bb.k:                                             ; preds = %._crit_edge.i37.i, %bb.i
  %.022.lcssa49.i39.i = phi i32 [ %spec.select.i35.i, %._crit_edge.i37.i ], [ 0, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 1, ptr %i.af, align 8, !tbaa !27
  %i.ag = add i32 %i.v, %i.j
  %i.ah = add i32 %.022.lcssa49.i39.i, %.022.lcssa49.i.i
  %i.ai = load ptr, ptr %.032, align 8, !tbaa !92
  %i.aj = call i32 @FT_Outline_Done(ptr noundef %i.ai, ptr noundef nonnull %i.g) #10 ; 0 uses
  %i.ak = load ptr, ptr %.032, align 8, !tbaa !92
  %i.al = call i32 @FT_Outline_New(ptr noundef %i.ak, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull %i.g) #10 ; 2 uses
  %.not47 = icmp eq i32 %i.al, 0
  br i1 %.not47, label %bb.l, label %FT_Stroker_GetCounts.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.032, i64 42
  store i16 0, ptr %i.am, align 2, !tbaa !63
  store i16 0, ptr %i.g, align 8, !tbaa !76
  call void @FT_Stroker_Export(ptr noundef nonnull %1, ptr noundef nonnull %i.g)
  %.not49 = icmp eq i8 %2, 0
  br i1 %.not49, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %0, align 8, !tbaa !87
  call void @FT_Done_Glyph(ptr noundef %i.an) #10
  br label %.sink.split

FT_Stroker_GetCounts.exit.thread:                 ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %._crit_edge.i37.i, %._crit_edge.i.i, %bb.f, %bb.e, %bb.k
  %.033.ph = phi i32 [ %i.al, %bb.k ], [ %i.h, %bb.e ], [ 20, %.lr.ph.i24.i ], [ 20, %._crit_edge.i37.i ], [ 20, %._crit_edge.i.i ], [ 6, %bb.f ], [ 20, %.lr.ph.i.i ] ; 2 uses
  call void @FT_Done_Glyph(ptr noundef %.032) #10
  %.not48 = icmp eq i8 %2, 0
  br i1 %.not48, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %FT_Stroker_GetCounts.exit.thread, %bb.l, %bb.m
  %.032.sink = phi ptr [ %.032, %bb.l ], [ %.032, %bb.m ], [ null, %FT_Stroker_GetCounts.exit.thread ]
  %.035.ph = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ %.033.ph, %FT_Stroker_GetCounts.exit.thread ]
  store ptr %.032.sink, ptr %0, align 8, !tbaa !87
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.d, %bb.a, %bb.c, %bb.b, %FT_Stroker_GetCounts.exit.thread
  %.035 = phi i32 [ 6, %bb.a ], [ 6, %bb.c ], [ %i.e, %bb.d ], [ %.033.ph, %FT_Stroker_GetCounts.exit.thread ], [ 6, %bb.b ], [ %.035.ph, %.sink.split ]
  ret i32 %.035
}

declare i32 @FT_Glyph_Copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Outline_Done(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Outline_New(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @FT_Done_Glyph(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @FT_Glyph_StrokeBorder(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %.not46 = icmp eq ptr %i.b, null
  br i1 %.not46, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %.not47 = icmp eq ptr %i.d, @ft_outline_glyph_class
  br i1 %.not47, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = call i32 @FT_Glyph_Copy(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not48 = icmp eq i32 %i.e, 0                   ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.037 = select i1 %.not48, ptr %i.f, ptr %i.b   ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %.not48, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %i.h = call i32 @FT_Outline_Get_Orientation(ptr noundef nonnull %i.g) #10
  %4 = icmp ne i32 %i.h, 0
  %.not49 = icmp ne i8 %2, 0
  %.0.v = xor i1 %.not49, %4                      ; 2 uses
  %.0 = zext i1 %.0.v to i32
  %i.i = call i32 @FT_Stroker_ParseOutline(ptr noundef %1, ptr noundef nonnull %i.g, i8 noundef zeroext 0) ; 2 uses
  %.not50 = icmp eq i32 %i.i, 0
  br i1 %.not50, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %FT_Stroker_GetBorderCounts.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = zext i1 %.0.v to i64
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35   ; 3 uses
  %.not36.i.i = icmp eq i32 %i.n, 0
  br i1 %.not36.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %.041.i.i = phi i1 [ %.not31.not.i.i, %bb.h ], [ true, %.lr.ph.preheader.i.i ]
  %.01940.i.i = phi ptr [ %i.w, %bb.h ], [ %i.p, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02139.i.i = phi i32 [ %i.v, %bb.h ], [ %i.n, %.lr.ph.preheader.i.i ]
  %.02238.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i ]
  %i.q = load i8, ptr %.01940.i.i, align 1, !tbaa !49 ; 2 uses
  %i.r = and i8 %i.q, 4
  %.not29.i.i = icmp eq i8 %i.r, 0
  %i.s = xor i1 %.041.i.i, %.not29.i.i
  br i1 %i.s, label %bb.h, label %FT_Stroker_GetBorderCounts.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.t = and i8 %i.q, 8                           ; 2 uses
  %.not31.not.i.i = icmp ne i8 %i.t, 0            ; 2 uses
  %.lobit.i.i = lshr exact i8 %i.t, 3
  %i.u = zext nneg i8 %.lobit.i.i to i32
  %spec.select.i.i = add i32 %.02238.i.i, %i.u    ; 2 uses
  %i.v = add i32 %.02139.i.i, -1                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01940.i.i, i64 1
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !62

._crit_edge.i.i:                                  ; preds = %bb.h
  br i1 %.not31.not.i.i, label %._crit_edge.thread.i.i, label %FT_Stroker_GetBorderCounts.exit

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.g
  %.022.lcssa49.i.i = phi i32 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 1, ptr %i.x, align 8, !tbaa !27
  br label %FT_Stroker_GetBorderCounts.exit

FT_Stroker_GetBorderCounts.exit:                  ; preds = %.lr.ph.i.i, %bb.f, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %.016.i = phi i32 [ 0, %bb.f ], [ %i.n, %._crit_edge.thread.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %.lr.ph.i.i ]
  %.015.i = phi i32 [ 0, %bb.f ], [ %.022.lcssa49.i.i, %._crit_edge.thread.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %.lr.ph.i.i ]
  %i.y = load ptr, ptr %.037, align 8, !tbaa !92
  %i.z = call i32 @FT_Outline_Done(ptr noundef %i.y, ptr noundef nonnull %i.g) #10 ; 0 uses
  %i.aa = load ptr, ptr %.037, align 8, !tbaa !92
  %i.ab = call i32 @FT_Outline_New(ptr noundef %i.aa, i32 noundef %.016.i, i32 noundef %.015.i, ptr noundef nonnull %i.g) #10 ; 2 uses
  %.not51 = icmp eq i32 %i.ab, 0
  br i1 %.not51, label %bb.i, label %bb.k

bb.i:                                             ; preds = %FT_Stroker_GetBorderCounts.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.037, i64 42
  store i16 0, ptr %i.ac, align 2, !tbaa !63
  store i16 0, ptr %i.g, align 8, !tbaa !76
  call void @FT_Stroker_ExportBorder(ptr noundef %1, i32 noundef %.0, ptr noundef nonnull %i.g)
  %.not53 = icmp eq i8 %3, 0
  br i1 %.not53, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !87
  call void @FT_Done_Glyph(ptr noundef %i.ad) #10
  br label %.sink.split

bb.k:                                             ; preds = %bb.e, %FT_Stroker_GetBorderCounts.exit
  %.038.ph = phi i32 [ %i.ab, %FT_Stroker_GetBorderCounts.exit ], [ %i.i, %bb.e ] ; 2 uses
  call void @FT_Done_Glyph(ptr noundef nonnull %.037) #10
  %.not52 = icmp eq i8 %3, 0
  br i1 %.not52, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %bb.k, %bb.i, %bb.j
  %.037.sink = phi ptr [ %.037, %bb.i ], [ %.037, %bb.j ], [ null, %bb.k ]
  %.040.ph = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ %.038.ph, %bb.k ]
  store ptr %.037.sink, ptr %0, align 8, !tbaa !87
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.d, %bb.a, %bb.c, %bb.b, %bb.k
  %.040 = phi i32 [ 6, %bb.a ], [ 6, %bb.c ], [ %i.e, %bb.d ], [ %.038.ph, %bb.k ], [ 6, %bb.b ], [ %.040.ph, %.sink.split ]
  ret i32 %.040
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @FT_Vector_Unit(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroker_arcto(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %3 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %4 = alloca %struct.FT_Vector_, align 8         ; 5 uses
  %5 = alloca %struct.FT_Vector_, align 8         ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = tail call i64 @FT_Angle_Diff(i64 noundef %i.c, i64 noundef %i.e) #10 ; 2 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.h = zext nneg i32 %1 to i64                  ; 3 uses
  %i.i = icmp eq i64 %i.f, 11796480
  %.neg16 = mul nuw nsw i64 %i.h, 23592960
  %i.j = add nsw i64 %.neg16, -11796480
  %.0 = select i1 %i.i, i64 %i.j, i64 %i.f        ; 3 uses
  %.neg = mul nuw nsw i64 %i.h, -11796480
  %i.k = add nsw i64 %.neg, 5898240
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.h ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = add nsw i64 %i.k, %i.g                   ; 2 uses
  %smax = tail call i64 @llvm.abs.i64(i64 %.0, i1 false)
  %smax18 = tail call i64 @llvm.smax.i64(i64 %smax, i64 5898240)
  %i.p = add nsw i64 %smax18, -1
  %i.q = udiv i64 %i.p, 5898240                   ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = and i64 %i.s, 4294967292
  %i.u = sdiv i64 %.0, %i.t
  %i.v = tail call i64 @FT_Tan(i64 noundef %i.u) #10 ; 2 uses
  %i.w = sdiv i64 %i.v, 3
  %i.x = add nsw i64 %i.w, %i.v                   ; 4 uses
  call void @FT_Vector_From_Polar(ptr noundef nonnull %2, i64 noundef %i.b, i64 noundef %i.o) #10
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = mul i64 %i.z, %i.x                      ; 2 uses
  %i.ab = sub i64 0, %i.aa
  %i.ac = ashr i64 %i.ab, 63
  %reass.sub = sub i64 %i.ac, %i.aa
  %i.ad = add i64 %reass.sub, 32768
  %i.ae = ashr i64 %i.ad, 16
  %i.af = load i64, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.ag = mul i64 %i.af, %i.x                     ; 2 uses
  %i.ah = ashr i64 %i.ag, 63
  %i.ai = add i64 %i.ag, 32768
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = ashr i64 %i.aj, 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.n, align 8, !tbaa !39
  %i.an = add nsw i64 %i.am, %i.af                ; 2 uses
  store i64 %i.an, ptr %2, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !41
  %i.aq = add nsw i64 %i.ap, %i.z                 ; 2 uses
  store i64 %i.aq, ptr %i.y, align 8, !tbaa !41
  %i.ar = add nsw i64 %i.ae, %i.an
  store i64 %i.ar, ptr %3, align 8, !tbaa !39
  %i.as = add nsw i64 %i.aq, %i.ak
  store i64 %i.as, ptr %i.al, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = add nuw nsw i64 %i.q, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv43.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next44.i, %bb.c ] ; 3 uses
  %i.aw = mul nsw i64 %indvars.iv43.i, %.0
  %i.ax = sdiv i64 %i.aw, %i.r
  %i.ay = add nsw i64 %i.ax, %i.o
  call void @FT_Vector_From_Polar(ptr noundef nonnull %5, i64 noundef %i.b, i64 noundef %i.ay) #10
  %i.az = load i64, ptr %i.at, align 8, !tbaa !41 ; 2 uses
  %i.ba = mul i64 %i.az, %i.x                     ; 2 uses
  %i.bb = ashr i64 %i.ba, 63
  %i.bc = add i64 %i.ba, 32768
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = ashr i64 %i.bd, 16
  %i.bf = load i64, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.bg = mul i64 %i.x, %i.bf                     ; 2 uses
  %i.bh = sub i64 0, %i.bg
  %i.bi = ashr i64 %i.bh, 63
  %reass.sub17 = sub i64 %i.bi, %i.bg
  %i.bj = add i64 %reass.sub17, 32768
  %i.bk = ashr i64 %i.bj, 16
  %i.bl = load i64, ptr %i.n, align 8, !tbaa !39
  %i.bm = add nsw i64 %i.bl, %i.bf                ; 2 uses
  store i64 %i.bm, ptr %5, align 8, !tbaa !39
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !41
  %i.bo = add nsw i64 %i.bn, %i.az                ; 2 uses
  store i64 %i.bo, ptr %i.at, align 8, !tbaa !41
  %i.bp = add nsw i64 %i.be, %i.bm                ; 2 uses
  store i64 %i.bp, ptr %4, align 8, !tbaa !39
  %i.bq = add nsw i64 %i.bo, %i.bk                ; 2 uses
  store i64 %i.bq, ptr %i.au, align 8, !tbaa !41
end_hunk_1
