inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__filter_mitchell:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @stbir__support_zeropoint5(float %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret float 5.000000e-01
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @stbir__support_one(float %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @stbir__support_two(float %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret float 2.000000e+00
}

; Function Attrs: nounwind uwtable
define i32 @stbir__get_filter_pixel_width(ptr nofree noundef readonly captures(none) %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ult float %1, 1.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fdiv float 1.000000e+00, %1
  %i.c = tail call float %0(float noundef %i.b, ptr noundef %2) #24
  %i.d = fmul float %i.c, 2.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call float %0(float noundef %1, ptr noundef %2) #24
  %i.f = fmul float %i.e, 2.000000e+00
  %i.g = fdiv float %i.f, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink16 = phi float [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %i.h = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink16, i64 0 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.h)
  %i.j = sitofp <4 x i32> %i.i to <4 x float>     ; 2 uses
  %i.k = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.j, <4 x float> %i.h, i8 1)
  %i.l = bitcast <4 x float> %i.k to <4 x i32>
  %i.m = and <4 x i32> %i.l, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.n = bitcast <4 x i32> %i.m to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.j, %i.n
  %i.o = extractelement <4 x float> %foldExtExtBinop, i64 0
  %.0 = fptosi float %i.o to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @stbir__get_coefficient_width(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !23 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  switch i32 %1, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = fdiv float 1.000000e+00, %i.b
  %i.f = tail call float %i.d(float noundef %i.e, ptr noundef %2) #24
  %i.g = fmul float %i.f, 2.000000e+00
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = tail call float %i.d(float noundef %i.b, ptr noundef %2) #24
  %i.i = fmul float %i.h, 2.000000e+00
  %i.j = fdiv float %i.i, %i.b
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.k = tail call float %i.d(float noundef %i.b, ptr noundef %2) #24
  %i.l = fmul float %i.k, 2.000000e+00
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d
  %.sink22 = phi float [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ %i.g, %bb.b ]
  %i.m = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink22, i64 0 ; 2 uses
  %i.n = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.m)
  %i.o = sitofp <4 x i32> %i.n to <4 x float>     ; 2 uses
  %i.p = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.o, <4 x float> %i.m, i8 1)
  %i.q = bitcast <4 x float> %i.p to <4 x i32>
  %i.r = and <4 x i32> %i.q, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.s = bitcast <4 x i32> %i.r to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.o, %i.s
  %i.t = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.u = fptosi float %i.t to i32
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.u, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbir__get_contributors(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.h, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @stbir__edge_zero_full(i32 %0, i32 %1) #2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -2147483648, 2147483647) i32 @stbir__edge_clamp_full(i32 noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  %i.b = add nsw i32 %1, -1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.b)
  %.0 = select i1 %i.a, i32 0, i32 %spec.select
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stbir__edge_reflect_full(i32 noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i32 0, %1
  %i.c = icmp sgt i32 %0, %i.b
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = sub nsw i32 0, %0
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = add nsw i32 %1, -1
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = shl nsw i32 %1, 1                        ; 2 uses
  %.not17 = icmp slt i32 %0, %i.f
  %i.g = xor i32 %0, -1
  %i.h = add i32 %i.f, %i.g
  %.0 = select i1 %.not17, i32 %i.h, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.1 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %.0, %bb.f ], [ %0, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stbir__edge_wrap_full(i32 noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = srem i32 %0, %1                          ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = add nsw i32 %i.a, %1
  %spec.select = select i1 %.not, i32 0, i32 %i.b
  %i.c = icmp slt i32 %0, 0
  %.010 = select i1 %i.c, i32 %spec.select, i32 %i.a
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define void @stbir__get_extents(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31   ; 4 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !32   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33   ; 2 uses
  %i.j = icmp sgt i32 %i.f, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph232.preheader:                              ; preds = %.lr.ph
  %i.k = zext nneg i32 %i.f to i64
  br label %.lr.ph232

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %.0166226 = phi i32 [ %.1167, %.lr.ph ], [ %i.f, %bb.a ]
  %.0174225 = phi i32 [ %.1175, %.lr.ph ], [ 2147483647, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36   ; 2 uses
  %i.n = icmp slt i32 %i.m, %.0174225
  %i.o = trunc i64 %indvars.iv to i32
  %i.p = add i32 %i.i, %i.o
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.f)
  %.1175 = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %.0174225) ; 2 uses
  %.1167 = select i1 %i.n, i32 %spec.select, i32 %.0166226 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %.1167 to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.lr.ph232.preheader, !llvm.loop !38

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %.lr.ph232
  %indvars.iv247 = phi i64 [ %i.k, %.lr.ph232.preheader ], [ %indvars.iv.next248, %.lr.ph232 ]
  %.2168230 = phi i32 [ 0, %.lr.ph232.preheader ], [ %.3169, %.lr.ph232 ]
  %.0178229 = phi i32 [ -2147483647, %.lr.ph232.preheader ], [ %.1179, %.lr.ph232 ] ; 2 uses
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, -1 ; 4 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next248
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39   ; 2 uses
  %i.v = icmp sgt i32 %i.u, %.0178229
  %i.w = trunc i64 %indvars.iv.next248 to i32
  %i.x = sub i32 %i.w, %i.i
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.x, i32 0)
  %.1179 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %.0178229) ; 2 uses
  %.3169 = select i1 %i.v, i32 %spec.store.select, i32 %.2168230 ; 2 uses
  %i.y = zext nneg i32 %.3169 to i64
  %.not.not = icmp sgt i64 %indvars.iv.next248, %i.y
  br i1 %.not.not, label %.lr.ph232, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph232, %bb.a
  %.0174.lcssa258 = phi i32 [ 2147483647, %bb.a ], [ %.1175, %.lr.ph232 ] ; 3 uses
  %.0178.lcssa = phi i32 [ -2147483647, %bb.a ], [ %.1179, %.lr.ph232 ] ; 3 uses
  %spec.select211 = tail call i32 @llvm.smax.i32(i32 %.0174.lcssa258, i32 0) ; 8 uses
  %i.z = tail call i32 @llvm.smin.i32(i32 %.0174.lcssa258, i32 0) ; 2 uses
  %spec.select212 = sub nsw i32 0, %i.z           ; 3 uses
  %.not = icmp slt i32 %.0178.lcssa, %i.g
  %reass.sub = sub i32 %.0178.lcssa, %i.g
  %i.aa = add i32 %reass.sub, 1
  %i.ab = add nsw i32 %i.g, -1
  %.2180 = tail call i32 @llvm.smin.i32(i32 %.0178.lcssa, i32 %i.ab) ; 5 uses
  %.0172 = select i1 %.not, i32 0, i32 %i.aa      ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %spec.select212, ptr %i.ac, align 4, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %.0172, ptr %i.ad, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store i32 %spec.select211, ptr %i.ae, align 4, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  store i32 %.2180, ptr %i.af, align 4, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i32 %spec.select211, ptr %i.ag, align 4, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  store i32 -1, ptr %i.ai, align 4, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !43
  %i.ak = icmp eq i32 %i.b, 3
  br i1 %i.ak, label %bb.t, label %.preheader223

.preheader223:                                    ; preds = %._crit_edge
  %i.al = icmp slt i32 %.0174.lcssa258, 0
  br i1 %i.al, label %stbir__edge_wrap.exit.lr.ph, label %.preheader

stbir__edge_wrap.exit.lr.ph:                      ; preds = %.preheader223
  %i.am = zext i32 %i.b to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @stbir__edge_wrap_slow, i64 %i.am
  br label %stbir__edge_wrap.exit

.preheader:                                       ; preds = %stbir__edge_wrap.exit, %.preheader223
  %.0188.lcssa = phi i32 [ -2147483647, %.preheader223 ], [ %.1189, %stbir__edge_wrap.exit ] ; 4 uses
  %.0182.lcssa = phi i32 [ 2147483647, %.preheader223 ], [ %spec.select213, %stbir__edge_wrap.exit ] ; 7 uses
  %i.ao = add nsw i32 %.0172, %i.g
  %i.ap = icmp sgt i32 %.0172, 0
  br i1 %i.ap, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %.preheader
  %i.aq = zext i32 %i.b to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @stbir__edge_wrap_slow, i64 %i.aq
  br label %stbir__edge_wrap.exit221

stbir__edge_wrap.exit:                            ; preds = %stbir__edge_wrap.exit.lr.ph, %stbir__edge_wrap.exit
  %.2236 = phi i32 [ %i.z, %stbir__edge_wrap.exit.lr.ph ], [ %i.au, %stbir__edge_wrap.exit ] ; 2 uses
  %.0182235 = phi i32 [ 2147483647, %stbir__edge_wrap.exit.lr.ph ], [ %spec.select213, %stbir__edge_wrap.exit ]
  %.0188234 = phi i32 [ -2147483647, %stbir__edge_wrap.exit.lr.ph ], [ %.1189, %stbir__edge_wrap.exit ]
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.at = tail call i32 %i.as(i32 noundef %.2236, i32 noundef %i.g) #24, !inline_history !45 ; 2 uses
  %spec.select213 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %.0182235) ; 2 uses
  %.1189 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %.0188234) ; 2 uses
  %i.au = add i32 %.2236, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, 0
  br i1 %exitcond.not, label %.preheader, label %stbir__edge_wrap.exit, !llvm.loop !46

stbir__edge_wrap.exit221:                         ; preds = %.lr.ph242, %stbir__edge_wrap.exit221
  %.3241 = phi i32 [ %i.g, %.lr.ph242 ], [ %i.av, %stbir__edge_wrap.exit221 ] ; 2 uses
  %.0184240 = phi i32 [ -2147483647, %.lr.ph242 ], [ %.1185, %stbir__edge_wrap.exit221 ]
  %.0.i220 = phi i32 [ 2147483647, %.lr.ph242 ], [ %spec.select214, %stbir__edge_wrap.exit221 ]
  %2 = load ptr, ptr %i.ar, align 8, !tbaa !44
  %3 = tail call i32 %2(i32 noundef %.3241, i32 noundef %i.g) #24, !inline_history !45 ; 2 uses
  %spec.select214 = tail call i32 @llvm.smin.i32(i32 %3, i32 %.0.i220) ; 2 uses
  %.1185 = tail call i32 @llvm.smax.i32(i32 %3, i32 %.0184240) ; 2 uses
  %i.av = add nsw i32 %.3241, 1                   ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.ao
  br i1 %i.aw, label %stbir__edge_wrap.exit221, label %._crit_edge243, !llvm.loop !47

._crit_edge243:                                   ; preds = %stbir__edge_wrap.exit221, %.preheader
  %.0186.lcssa = phi i32 [ 2147483647, %.preheader ], [ %spec.select214, %stbir__edge_wrap.exit221 ] ; 7 uses
  %.0184.lcssa = phi i32 [ -2147483647, %.preheader ], [ %.1185, %stbir__edge_wrap.exit221 ] ; 4 uses
  %i.ax = icmp ne i32 %.0182.lcssa, 2147483647    ; 2 uses
  br i1 %i.ax, label %bb.b, label %bb.e

bb.b:                                             ; preds = %._crit_edge243
  %.not203 = icmp sgt i32 %.0182.lcssa, %spec.select211
  %i.ay = add nsw i32 %.0188.lcssa, 16
  %.not204 = icmp slt i32 %i.ay, %spec.select211
  %or.cond215 = select i1 %.not203, i1 true, i1 %.not204
  br i1 %or.cond215, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not205 = icmp sgt i32 %spec.select211, %.0182.lcssa
  %i.az = add nsw i32 %.2180, 16
  %.not206 = icmp slt i32 %i.az, %.0188.lcssa
  %or.cond216 = select i1 %.not205, i1 true, i1 %.not206
  br i1 %or.cond216, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ba = tail call i32 @llvm.smin.i32(i32 %spec.select211, i32 %.0182.lcssa) ; 3 uses
  store i32 %i.ba, ptr %i.ae, align 4, !tbaa !41
  %i.bb = tail call i32 @llvm.smax.i32(i32 %.2180, i32 %.0188.lcssa) ; 2 uses
  store i32 %i.bb, ptr %i.af, align 4, !tbaa !42
  store i32 %i.ba, ptr %i.ag, align 4, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %._crit_edge243
  %.3181 = phi i32 [ %i.bb, %bb.d ], [ %.2180, %._crit_edge243 ], [ %.2180, %bb.c ] ; 2 uses
  %.3177 = phi i32 [ %i.ba, %bb.d ], [ %spec.select211, %._crit_edge243 ], [ %spec.select211, %bb.c ] ; 4 uses
  %.1171 = phi i32 [ 0, %bb.d ], [ %spec.select212, %._crit_edge243 ], [ %spec.select212, %bb.c ] ; 3 uses
  %i.bc = sub nsw i32 0, %.1171
  %i.bd = icmp ne i32 %.0186.lcssa, 2147483647    ; 2 uses
  br i1 %i.bd, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not207 = icmp sgt i32 %.0186.lcssa, %.3177
  %i.be = add nsw i32 %.0184.lcssa, 16
  %.not208 = icmp slt i32 %i.be, %.3177
  %or.cond217 = select i1 %.not207, i1 true, i1 %.not208
  br i1 %or.cond217, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not209 = icmp sgt i32 %.3177, %.0186.lcssa
  %i.bf = add nsw i32 %.3181, 16
  %.not210 = icmp slt i32 %i.bf, %.0184.lcssa
  %or.cond218 = select i1 %.not209, i1 true, i1 %.not210
  br i1 %or.cond218, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = tail call i32 @llvm.smin.i32(i32 %.3177, i32 %.0186.lcssa) ; 2 uses
  store i32 %i.bg, ptr %i.ae, align 4, !tbaa !41
  %i.bh = tail call i32 @llvm.smax.i32(i32 %.3181, i32 %.0184.lcssa)
  store i32 %i.bh, ptr %i.af, align 4, !tbaa !42
  store i32 %i.bg, ptr %i.ag, align 4, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.1173 = phi i32 [ 0, %bb.h ], [ %.0172, %bb.e ], [ %.0172, %bb.g ]
  %i.bi = icmp ne i32 %.1171, 0
  %or.cond = and i1 %i.ax, %i.bi
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.ae, align 4, !tbaa !41 ; 3 uses
  %i.bk = icmp slt i32 %.0182.lcssa, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bj, ptr %i.aj, align 4, !tbaa !43
  store i32 %i.bj, ptr %i.ah, align 4, !tbaa !41
  %i.bl = load i32, ptr %i.af, align 4, !tbaa !42
  store i32 %i.bl, ptr %i.ai, align 4, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0164 = phi ptr [ %i.ae, %bb.k ], [ %i.ah, %bb.j ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0164, i64 8
  store i32 %.0182.lcssa, ptr %i.bm, align 4, !tbaa !43
  store i32 %i.bc, ptr %.0164, align 4, !tbaa !41
  %i.bn = add i32 %.0182.lcssa, %.1171
  %i.bo = sub i32 %.0188.lcssa, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.0164, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !42
  store i32 0, ptr %i.ac, align 4, !tbaa !21
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.bq = icmp ne i32 %.1173, 0
  %or.cond3 = and i1 %i.bd, %i.bq
  br i1 %or.cond3, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.ae, align 4, !tbaa !41 ; 3 uses
  %i.bs = icmp slt i32 %.0186.lcssa, %i.br
  br i1 %i.bs, label %bb.o, label %._crit_edge250

._crit_edge250:                                   ; preds = %bb.n
  %.pre = load i32, ptr %i.ai, align 4, !tbaa !42
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.br, ptr %i.aj, align 4, !tbaa !43
  store i32 %i.br, ptr %i.ah, align 4, !tbaa !41
  %i.bt = load i32, ptr %i.af, align 4, !tbaa !42 ; 2 uses
  store i32 %i.bt, ptr %i.ai, align 4, !tbaa !42
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge250, %bb.o
  %i.bu = phi i32 [ %i.bt, %bb.o ], [ %.pre, %._crit_edge250 ]
  %.0 = phi ptr [ %i.ae, %bb.o ], [ %i.ah, %._crit_edge250 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %.0186.lcssa, ptr %i.bv, align 4, !tbaa !43
  %i.bw = add nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.bw, ptr %.0, align 4, !tbaa !41
  %i.bx = sub i32 %.0184.lcssa, %.0186.lcssa
  %i.by = add nsw i32 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !42
  store i32 0, ptr %i.ad, align 4, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.l
  %i.ca = load i32, ptr %i.ai, align 4, !tbaa !42
  %i.cb = load i32, ptr %i.ah, align 4, !tbaa !41 ; 2 uses
  %i.cc = icmp sgt i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cd = load i32, ptr %i.ae, align 4, !tbaa !41
  %i.ce = icmp sgt i32 %i.cd, %i.cb
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.ae, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !48
  store <3 x i32> %.sroa.0.0.copyload, ptr %i.ah, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbir__calculate_in_pixel_range(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = fsub float %2, %3
  %i.b = fadd float %2, %3
  %i.c = fadd float %i.a, %5
  %i.d = fmul float %4, %i.c
  %i.e = fadd float %i.b, %5
  %i.f = fmul float %4, %i.e
  %i.g = fadd float %i.d, 5.000000e-01
  %i.h = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.g, i64 0 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.h)
  %i.j = sitofp <4 x i32> %i.i to <4 x float>     ; 2 uses
  %i.k = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.h, <4 x float> %i.j, i8 1)
  %i.l = bitcast <4 x float> %i.k to <4 x i32>
  %i.m = and <4 x i32> %i.l, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.n = bitcast <4 x i32> %i.m to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.j, %i.n
  %i.o = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.p = fptosi float %i.o to i32                 ; 3 uses
  %i.q = fadd float %i.f, -5.000000e-01
  %i.r = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.q, i64 0 ; 2 uses
  %i.s = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.r)
  %i.t = sitofp <4 x i32> %i.s to <4 x float>     ; 2 uses
  %i.u = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.r, <4 x float> %i.t, i8 1)
  %i.v = bitcast <4 x float> %i.u to <4 x i32>
  %i.w = and <4 x i32> %i.v, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.x = bitcast <4 x i32> %i.w to <4 x float>
  %foldExtExtBinop35 = fadd <4 x float> %i.t, %i.x
  %i.y = extractelement <4 x float> %foldExtExtBinop35, i64 0
  %i.z = fptosi float %i.y to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %i.p) ; 2 uses
  %i.aa = icmp eq i32 %7, 2
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = sub nsw i32 0, %6
  %spec.select32 = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.ab)
  %i.ac = shl nsw i32 %6, 1
  %i.ad = add nsw i32 %i.ac, -1
  %spec.select33 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.ad)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.126 = phi i32 [ %spec.select, %bb.a ], [ %spec.select33, %bb.b ]
  %.1 = phi i32 [ %i.p, %bb.a ], [ %spec.select32, %bb.b ]
  store i32 %.1, ptr %0, align 4, !tbaa !21
  store i32 %.126, ptr %1, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_0
