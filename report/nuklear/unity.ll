inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_plot:bb.a
  %i.ae = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.ac, i32 %i.ad, i32 noundef %3, float noundef %i.f, float noundef %i.f)
  br i1 %i.ae, label %._crit_edge54, label %nk_chart_end.exit

.lr.ph53.preheader:                               ; preds = %._crit_edge
  %wide.trip.count59 = zext nneg i32 %3 to i64
  %invariant.gep67 = getelementptr [4 x i8], ptr %2, i64 %i.d
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %indvars.iv56 = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next57, %.lr.ph53 ] ; 2 uses
  %gep68 = getelementptr [4 x i8], ptr %invariant.gep67, i64 %indvars.iv56
  %i.af = load float, ptr %gep68, align 4, !tbaa !8
  %i.ag = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.af, i32 noundef 0) ; 0 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !1191

._crit_edge54:                                    ; preds = %.lr.ph53, %._crit_edge.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !756 ; 2 uses
  %.not6.i = icmp eq ptr %i.ai, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !757
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.al, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ao = sub nuw nsw i64 4, %i.an                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 0, i64 %i.ao, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.al, i64 %i.ao ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i, i8 0, i64 %i.an, i1 false), !tbaa !11
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge54, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_plot_function(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %4, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_chart_end.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float %3(ptr noundef %2, i32 noundef %5) #50 ; 4 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.044 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.03743 = phi float [ %i.k, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %.03842 = phi float [ %i.i, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = add nsw i32 %.044, %5
  %i.g = tail call float %3(ptr noundef %2, i32 noundef %i.f) #50 ; 4 uses
  %i.h = fcmp olt float %i.g, %.03842
  %i.i = select i1 %i.h, float %i.g, float %.03842 ; 2 uses
  %i.j = fcmp olt float %i.g, %.03743
  %i.k = select i1 %i.j, float %.03743, float %i.g ; 2 uses
  %i.l = add nuw nsw i32 %.044, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1192

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.o = load i32, ptr %i.m, align 8
  %i.p = load i32, ptr %i.n, align 4
  %i.q = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.o, i32 %i.p, i32 noundef %4, float noundef %i.i, float noundef %i.k)
  br i1 %i.q, label %.lr.ph47, label %nk_chart_end.exit

._crit_edge.thread:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.t = load i32, ptr %i.r, align 8
  %i.u = load i32, ptr %i.s, align 4
  %i.v = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.t, i32 %i.u, i32 noundef %4, float noundef %i.d, float noundef %i.d)
  br i1 %i.v, label %._crit_edge48, label %nk_chart_end.exit

.lr.ph47:                                         ; preds = %._crit_edge, %.lr.ph47
  %.146 = phi i32 [ %i.z, %.lr.ph47 ], [ 0, %._crit_edge ] ; 2 uses
  %i.w = add nsw i32 %.146, %5
  %i.x = tail call float %3(ptr noundef %2, i32 noundef %i.w) #50
  %i.y = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.x, i32 noundef 0) ; 0 uses
  %i.z = add nuw nsw i32 %.146, 1                 ; 2 uses
  %exitcond50.not = icmp eq i32 %i.z, %4
  br i1 %exitcond50.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !1193

._crit_edge48:                                    ; preds = %.lr.ph47, %._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !756 ; 2 uses
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !757
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.ae, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ah = sub nuw nsw i64 4, %i.ag                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 0, i64 %i.ah, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.ae, i64 %i.ah ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !11
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge48, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_color_pick(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_do_color_picker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 15 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_do_color_picker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %nk_do_color_picker.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0)
  switch i32 %i.h, label %bb.f [
    i32 0, label %nk_do_color_picker.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !846
  %i.k = and i32 %i.j, 4096
  %.not29 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not29, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 21 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !754  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %nk_do_color_picker.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 5 uses
  %i.r = load <2 x float>, ptr %3, align 8        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !166 ; 5 uses
  %.sroa.0152.0.vec.extract.i = extractelement <2 x float> %i.r, i64 0 ; 3 uses
  %.sroa.0152.4.vec.extract163.i = extractelement <2 x float> %i.r, i64 1 ; 3 uses
  %i.u = fadd <2 x float> %i.r, zeroinitializer   ; 11 uses
  %i.v = extractelement <2 x float> %i.u, i64 1   ; 9 uses
  %.sroa.10.8.vec.extract166.i = extractelement <2 x float> %i.q, i64 0
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %i.q, i64 1 ; 8 uses
  %i.w = fmul float %i.t, 2.000000e+00
  %i.x = fadd float %i.w, 0.000000e+00
  %i.y = fsub float %.sroa.10.8.vec.extract166.i, %i.x ; 2 uses
  %.sroa.12.8.vec.insert.i = insertelement <2 x float> %i.q, float %i.y, i64 0 ; 5 uses
  %.sroa.20.8.vec.insert.i = insertelement <2 x float> poison, float %i.t, i64 0
  %.sroa.20.12.vec.insert.i = insertelement <2 x float> %i.q, float %i.t, i64 0 ; 3 uses
  %i.z = extractelement <2 x float> %i.u, i64 0
  %i.aa = fadd float %i.z, %i.y                   ; 4 uses
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0 ; 6 uses
  %i.ac = insertelement <2 x float> %i.u, float %i.aa, i64 0
  %i.ad = fadd float %i.t, %i.aa                  ; 4 uses
  %i.ae = insertelement <2 x float> %i.u, float %i.ad, i64 0 ; 2 uses
  %.not169.i = icmp eq i32 %2, 1                  ; 2 uses
  %i.af = load <2 x float>, ptr %1, align 4       ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %.sroa.0.4.vec.extract.i.i.i.i = extractelement <2 x float> %i.af, i64 1
  %.sroa.18.8.vec.extract.i.i.i.i = extractelement <2 x float> %i.ah, i64 0
  %i.ai = fcmp olt float %.sroa.0.4.vec.extract.i.i.i.i, %.sroa.18.8.vec.extract.i.i.i.i ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.af, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i.i = shufflevector <2 x float> %i.ah, <2 x float> %i.af, <2 x i32> <i32 3, i32 1>
  %.0.i.i.i.i = select i1 %i.ai, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.ai, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, <2 x float> %i.af ; 4 uses
  %.sroa.18.0.i.i.i.i = select i1 %i.ai, <2 x float> %.sroa.18.8.vec.insert.i.i.i.i, <2 x float> %i.ah ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 1
  %i.aj = fcmp olt float %.sroa.0.0.vec.extract.i.i.i.i, %.sroa.0.4.vec.extract27.i.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fsub float f0xBEAAAAAB, %.0.i.i.i.i
  %.1.i.i.i.i = select i1 %i.aj, float %i.ak, float %.0.i.i.i.i
  %.sroa.0.1.i.i.i.i = select i1 %i.aj, <2 x float> %.sroa.0.4.vec.insert31.i.i.i.i, <2 x float> %.sroa.0.0.i.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i.i, i64 0 ; 2 uses
  %i.al = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i.i, %.sroa.18.8.vec.extract46.i.i.i.i
  %i.am = select i1 %i.al, float %.sroa.0.4.vec.extract33.i.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i.i
  %i.an = shufflevector <2 x float> %.sroa.18.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x float> %i.an, float %i.am, i64 0
  %i.ap = fsub <2 x float> %.sroa.0.1.i.i.i.i, %i.ao ; 2 uses
  %i.aq = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.ar = extractelement <2 x float> %i.ap, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float 6.000000e+00, float f0x1E3CE508)
  %i.at = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.as, i64 1
  %i.av = fdiv <2 x float> %i.ap, %i.au           ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1
  %i.ax = fadd float %.1.i.i.i.i, %i.aw           ; 3 uses
  %i.ay = fcmp olt float %i.ax, 0.000000e+00
  %i.az = fneg float %i.ax
  %i.ba = select i1 %i.ay, float %i.az, float %i.ax
  %.sroa.18.12.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i.i, i64 1 ; 2 uses
  %i.bb = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.u, <2 x float> %.sroa.12.8.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  %i.bc = shufflevector <2 x float> %i.av, <2 x float> %.sroa.0.1.i.i.i.i, <2 x i32> <i32 0, i32 2>
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 356
  %i.be = fadd <2 x float> %.sroa.12.8.vec.insert.i, splat (float -1.000000e+00)
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !8
  %i.bg = fsub <2 x float> %i.bf, %i.u
  %i.bh = fdiv <2 x float> %i.bg, %i.be           ; 3 uses
  %i.bi = fcmp ule <2 x float> %i.bh, zeroinitializer
  %i.bj = fcmp ogt <2 x float> %i.bh, splat (float 1.000000e+00)
  %i.bk = select <2 x i1> %i.bj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bh ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 1
  %i.bm = fsub float 1.000000e+00, %i.bl
  %i.bn = insertelement <2 x float> %i.bk, float %i.bm, i64 1
  %i.bo = select <2 x i1> %i.bi, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.bn
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi i8 [ 1, %bb.h ], [ 0, %bb.g ]
  %i.bp = phi <2 x float> [ %i.bo, %bb.h ], [ %i.bc, %bb.g ] ; 5 uses
  %i.bq = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ac, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.bq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.bs = load float, ptr %i.br, align 4, !tbaa !715
  %i.bt = fsub float %i.bs, %i.v
  %i.bu = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.bv = fdiv float %i.bt, %i.bu                 ; 3 uses
  %i.bw = fcmp ogt float %i.bv, 1.000000e+00
  %i.bx = fcmp ule float %i.bv, 0.000000e+00      ; 2 uses
  %brmerge13.i.i = or i1 %i.bx, %i.bw
  %.mux14.i.i = select i1 %i.bx, float 0.000000e+00, float 1.000000e+00
  br i1 %brmerge13.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i = phi float [ %i.ba, %bb.i ], [ %.mux14.i.i, %bb.j ], [ %i.bv, %bb.k ]
  %.1.i.i = phi i8 [ %.0.i.i, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ] ; 3 uses
  br i1 %.not169.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.by = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ae, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !715
  %i.cb = fsub float %i.ca, %i.v
  %i.cc = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.cd = fdiv float %i.cb, %i.cc                 ; 3 uses
  %i.ce = fcmp ogt float %i.cd, 1.000000e+00
  %i.cf = fcmp ule float %i.cd, 0.000000e+00
  %.mux17.i.i = select i1 %i.ce, float 1.000000e+00, float %i.cd
  %i.cg = fsub float 1.000000e+00, %.mux17.i.i
  %i.ch = select i1 %i.cf, float 1.000000e+00, float %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.11.0.i.i = phi float [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.l ], [ %i.ch, %bb.n ], [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.m ] ; 2 uses
  %.2.i.i = phi i8 [ %.1.i.i, %bb.l ], [ 1, %bb.n ], [ %.1.i.i, %bb.m ]
  %i.ci = load i32, ptr %i.m, align 8, !tbaa !10
  %i.cj = and i32 %i.ci, 2
  %..i.i = or disjoint i32 %i.cj, 4               ; 2 uses
  store i32 %..i.i, ptr %i.m, align 8, !tbaa !10
  %i.ck = trunc nuw i8 %.1.i.i to i1
  br i1 %i.ck, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.cl = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  %i.cm = fcmp ugt float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bp, <2 x i32> <i32 3, i32 1>
  %.sroa.0.4.vec.insert.i.i91.i.i = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %nk_hsva_colorfv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.co = fdiv float %.sroa.0.0.i.i, f0x3E2AAAAB  ; 2 uses
  %i.cp = fptosi float %i.co to i32               ; 2 uses
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = fsub float 1.000000e+00, %i.cl
  %i.ct = extractelement <2 x float> %i.bp, i64 1 ; 8 uses
  %i.cu = fmul float %i.ct, %i.cs                 ; 6 uses
  %i.cv = fneg float %i.cl
  %i.cw = fsub float 1.000000e+00, %i.cr
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cw, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.da, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = fmul float %i.ct, %i.dc                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.bp, %i.db
  %i.de = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  switch i32 %i.cp, label %bb.x [
    i32 5, label %bb.w
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sink77.i.i.i.i = phi float [ %i.ct, %bb.w ], [ %i.de, %bb.v ], [ %i.cu, %bb.u ], [ %i.cu, %bb.t ], [ %i.dd, %bb.s ], [ %i.ct, %bb.r ]
  %.sink76.i.i.i.i = phi float [ %i.cu, %bb.w ], [ %i.cu, %bb.v ], [ %i.dd, %bb.u ], [ %i.ct, %bb.t ], [ %i.ct, %bb.s ], [ %i.de, %bb.r ]
  %.sink.i.i.i.i = phi float [ %i.dd, %bb.w ], [ %i.ct, %bb.v ], [ %i.ct, %bb.u ], [ %i.de, %bb.t ], [ %i.cu, %bb.s ], [ %i.cu, %bb.r ]
  %.sroa.0.0.vec.insert48.i.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i.i, float %.sink76.i.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i.i, i64 0
  br label %nk_hsva_colorfv.exit.i.i

nk_hsva_colorfv.exit.i.i:                         ; preds = %bb.x, %bb.q
  %.sroa.16.8.vec.insert73.sink.i.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i.i, %bb.x ], [ %i.cn, %bb.q ]
  %.sroa.0.1.i.i92.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i.i, %bb.x ], [ %.sroa.0.4.vec.insert.i.i91.i.i, %bb.q ]
  %.sroa.16.12.vec.insert75.i.i.i.i = insertelement <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i.i, float %.sroa.11.0.i.i, i64 1
  store <2 x float> %.sroa.0.1.i.i92.i.i, ptr %1, align 4
  store <2 x float> %.sroa.16.12.vec.insert75.i.i.i.i, ptr %i.ag, align 4
  store i32 34, ptr %i.m, align 8, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %nk_hsva_colorfv.exit.i.i, %bb.o
  %i.df = phi i32 [ 34, %nk_hsva_colorfv.exit.i.i ], [ %..i.i, %bb.o ]
  %i.dg = trunc nuw i8 %.2.i.i to i1              ; 3 uses
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %.sroa.11.0.i.i, ptr %i.dh, align 4, !tbaa !1194
  store i32 34, ptr %i.m, align 8, !tbaa !10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = phi i32 [ 34, %bb.z ], [ %i.df, %bb.y ] ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 356
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !714 ; 2 uses
  %i.dl = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.dk
  %foldExtExtBinop45 = fadd <2 x float> %i.q, %i.u
  %i.dm = extractelement <2 x float> %foldExtExtBinop45, i64 0 ; 3 uses
  %i.dn = fcmp olt float %i.dk, %i.dm
  %or.cond.i.i.i = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %or.cond.i.i.i, label %bb.ac, label %nk_input_is_mouse_hovering_rect.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.dp = load float, ptr %i.do, align 4, !tbaa !715 ; 2 uses
  %i.dq = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.dp
  %i.dr = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.ds = fcmp olt float %i.dp, %i.dr
  %or.cond.i.i = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %or.cond.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.thread27.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.i.i

nk_input_is_mouse_hovering_rect.exit.thread.thread27.i.i: ; preds = %bb.ac
  store i32 18, ptr %i.m, align 8, !tbaa !10
  br label %bb.ad

nk_input_is_mouse_hovering_rect.exit.thread.i.i:  ; preds = %bb.ac, %bb.ab
  %i.dt = and i32 %i.di, 16
  %.not90.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not90.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i, label %bb.ad

nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i: ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 364
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !716
  br label %.thread.i.i

nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i: ; preds = %bb.aa
  %i.du = and i32 %i.di, 16
  %.not905.i.i = icmp eq i32 %i.du, 0
  br i1 %.not905.i.i, label %nk_color_picker_behavior.exit.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

bb.ad:                                            ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i.i, %nk_input_is_mouse_hovering_rect.exit.thread.thread27.i.i
  %i.dv = phi i32 [ 18, %nk_input_is_mouse_hovering_rect.exit.thread.thread27.i.i ], [ %i.di, %nk_input_is_mouse_hovering_rect.exit.thread.i.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 364
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !716 ; 3 uses
  %i.dy = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.dx
  %i.dz = fcmp olt float %i.dx, %i.dm
  %or.cond.i96.i.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i96.i.i, label %bb.ae, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !717 ; 2 uses
  %i.ec = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.eb
  %i.ed = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.ee = fcmp olt float %i.eb, %i.ed
  %or.cond20.i.i = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %or.cond20.i.i, label %.thread.i.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i: ; preds = %bb.ae, %bb.ad, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i
  %i.ef = phi i32 [ %i.di, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i ], [ %i.dv, %bb.ad ], [ %i.dv, %bb.ae ]
  %i.eg = or i32 %i.ef, 8
  br label %nk_input_is_mouse_prev_hovering_rect.exit107.thread.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.ae, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i
  %i.eh = phi i32 [ %i.di, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i ], [ %i.dv, %bb.ae ]
  %i.ei = phi float [ %.pre.i.i, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i ], [ %i.dx, %bb.ae ] ; 2 uses
  %i.ej = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.ei
  %i.ek = fcmp olt float %i.ei, %i.dm
  %or.cond.i103.i.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i103.i.i, label %bb.af, label %nk_color_picker_behavior.exit.i

bb.af:                                            ; preds = %.thread.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.em = load float, ptr %i.el, align 4, !tbaa !717 ; 2 uses
  %i.en = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.em
  %i.eo = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.ep = fcmp olt float %i.em, %i.eo
  %or.cond22.i.i = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %or.cond22.i.i, label %bb.ag, label %nk_color_picker_behavior.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.eq = or i32 %i.eh, 64
  br label %nk_input_is_mouse_prev_hovering_rect.exit107.thread.sink.split.i.i

nk_input_is_mouse_prev_hovering_rect.exit107.thread.sink.split.i.i: ; preds = %bb.ag, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i
  %.sink.i.i = phi i32 [ %i.eq, %bb.ag ], [ %i.eg, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i ]
  store i32 %.sink.i.i, ptr %i.m, align 8, !tbaa !10
  br label %nk_color_picker_behavior.exit.i

nk_color_picker_behavior.exit.i:                  ; preds = %nk_input_is_mouse_prev_hovering_rect.exit107.thread.sink.split.i.i, %bb.af, %.thread.i.i, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i
  %i.er = load <2 x float>, ptr %1, align 4       ; 4 uses
  %i.es = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %i.et = fdiv float %.sroa.10.12.vec.extract.i, 6.000000e+00 ; 4 uses
  %i.eu = fadd float %i.et, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> %.sroa.20.8.vec.insert.i, float %i.eu, i64 1 ; 6 uses
  %i.ev = fadd float %i.et, %i.v
  %i.ew = fadd float %i.ev, 5.000000e-01
  %.sroa.0.4.vec.insert.i.1.i.i = insertelement <2 x float> %i.ab, float %i.ew, i64 1
  %i.ex = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> <float 0.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float> %i.ez) ; 4 uses
  %i.fb = extractelement <4 x float> %i.fa, i64 0
  %i.fc = fadd float %i.fb, 5.000000e-01
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.ab, float %i.fc, i64 1
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16776961, i32 -16776961, i32 -16711681, i32 -16711681)
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.1.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16711681, i32 -16711681, i32 -16711936, i32 -16711936)
  %4 = extractelement <4 x float> %i.fa, i64 1
  %5 = fadd float %4, 5.000000e-01
  %.sroa.0.4.vec.insert.i.2.i.i = insertelement <2 x float> %i.ab, float %5, i64 1
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.2.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16711936, i32 -16711936, i32 -256, i32 -256)
  %6 = extractelement <4 x float> %i.fa, i64 2
  %7 = fadd float %6, 5.000000e-01
  %.sroa.0.4.vec.insert.i.3.i.i = insertelement <2 x float> %i.ab, float %7, i64 1
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.3.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -256, i32 -256, i32 -65536, i32 -65536)
  %8 = extractelement <4 x float> %i.fa, i64 3
  %9 = fadd float %8, 5.000000e-01
  %.sroa.0.4.vec.insert.i.4.i.i = insertelement <2 x float> %i.ab, float %9, i64 1
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.4.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -65536, i32 -65536, i32 -65281, i32 -65281)
  %10 = tail call float @llvm.fmuladd.f32(float %i.et, float 5.000000e+00, float %i.v)
  %11 = fadd float %10, 5.000000e-01
  %.sroa.0.4.vec.insert.i.5.i.i = insertelement <2 x float> %i.ab, float %11, i64 1
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.5.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -65281, i32 -65281, i32 -16776961, i32 -16776961)
  %.sroa.0.4.vec.extract.i.i.i37.i = extractelement <2 x float> %i.er, i64 1
  %.sroa.18.8.vec.extract.i.i.i38.i = extractelement <2 x float> %i.es, i64 0
  %i.fd = fcmp olt float %.sroa.0.4.vec.extract.i.i.i37.i, %.sroa.18.8.vec.extract.i.i.i38.i ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i39.i = shufflevector <2 x float> %i.er, <2 x float> %i.es, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i40.i = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.0.i.i.i41.i = select i1 %i.fd, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i42.i = select i1 %i.fd, <2 x float> %.sroa.0.4.vec.insert.i.i.i39.i, <2 x float> %i.er ; 4 uses
  %.sroa.18.0.i.i.i43.i = select i1 %i.fd, <2 x float> %.sroa.18.8.vec.insert.i.i.i40.i, <2 x float> %i.es ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i44.i = extractelement <2 x float> %.sroa.0.0.i.i.i42.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i45.i = extractelement <2 x float> %.sroa.0.0.i.i.i42.i, i64 1
  %i.fe = fcmp olt float %.sroa.0.0.vec.extract.i.i.i44.i, %.sroa.0.4.vec.extract27.i.i.i45.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i46.i = shufflevector <2 x float> %.sroa.0.0.i.i.i42.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = fsub float f0xBEAAAAAB, %.0.i.i.i41.i
  %.1.i.i.i47.i = select i1 %i.fe, float %i.ff, float %.0.i.i.i41.i
  %.sroa.0.1.i.i.i48.i = select i1 %i.fe, <2 x float> %.sroa.0.4.vec.insert31.i.i.i46.i, <2 x float> %.sroa.0.0.i.i.i42.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i49.i = extractelement <2 x float> %.sroa.0.1.i.i.i48.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i50.i = extractelement <2 x float> %.sroa.0.1.i.i.i48.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i51.i = extractelement <2 x float> %.sroa.18.0.i.i.i43.i, i64 0 ; 2 uses
  %i.fg = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i50.i, %.sroa.18.8.vec.extract46.i.i.i51.i
  %i.fh = select i1 %i.fg, float %.sroa.0.4.vec.extract33.i.i.i50.i, float %.sroa.18.8.vec.extract46.i.i.i51.i
  %i.fi = shufflevector <2 x float> %.sroa.18.0.i.i.i43.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fj = insertelement <2 x float> %i.fi, float %i.fh, i64 0
  %i.fk = fsub <2 x float> %.sroa.0.1.i.i.i48.i, %i.fj ; 2 uses
  %i.fl = fadd float %.sroa.0.0.vec.extract18.i.i.i49.i, f0x1E3CE508
  %i.fm = extractelement <2 x float> %i.fk, i64 0
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fm, float 6.000000e+00, float f0x1E3CE508)
  %i.fo = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.fn, i64 1
  %i.fq = fdiv <2 x float> %i.fk, %i.fp           ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 1
  %i.fs = fadd float %.1.i.i.i47.i, %i.fr         ; 3 uses
  %i.ft = fcmp olt float %i.fs, 0.000000e+00
  %i.fu = fneg float %i.fs
  %i.fv = select i1 %i.ft, float %i.fu, float %i.fs ; 2 uses
  %i.fw = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.fx = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.fw, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i, label %nk_stroke_line.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %nk_color_picker_behavior.exit.i
  %i.fy = fadd float %i.ad, 2.000000e+00
  %i.fz = fadd float %i.aa, -1.000000e+00
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fv, float %.sroa.10.12.vec.extract.i, float %i.v)
  %i.gb = fadd float %i.ga, 5.000000e-01
  %i.gc = fptosi float %i.gb to i32
  %i.gd = load ptr, ptr %i.n, align 8, !tbaa !112 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !44
  %i.gg = ptrtoint ptr %i.fx to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !116
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 39
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = and i64 %i.gm, -8
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  store i32 2, ptr %i.fx, align 8, !tbaa !117
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !52
  %i.gs = add i64 %i.gr, %i.gp                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !119
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.gs, ptr %i.gu, align 8, !tbaa !120
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i16 1, ptr %i.gv, align 8, !tbaa !230
  %i.gw = fptosi float %i.fz to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fx, i64 18
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !1196
  %i.gy = trunc i32 %i.gc to i16                  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  store i16 %i.gy, ptr %i.gz, align 4, !tbaa !1197
  %i.ha = fptosi float %i.fy to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fx, i64 22
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !1198
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i16 %i.gy, ptr %i.hc, align 8, !tbaa !123
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fx, i64 26
  store i32 -1, ptr %i.hd, align 2
  br label %nk_stroke_line.exit.i.i

nk_stroke_line.exit.i.i:                          ; preds = %bb.ah, %nk_color_picker_behavior.exit.i
  br i1 %.not169.i, label %bb.ai, label %nk_stroke_line.exit77.i.i

bb.ai:                                            ; preds = %nk_stroke_line.exit.i.i
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.ae, <2 x float> %.sroa.20.12.vec.insert.i, i32 -1, i32 -1, i32 -16777216, i32 -16777216)
  %i.he = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.hf = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.he, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i76.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i76.i.i, label %nk_stroke_line.exit77.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = fadd float %i.t, %i.ad
  %i.hh = fadd float %i.hg, 2.000000e+00
  %i.hi = fadd float %i.ad, -1.000000e+00
  %.sroa.267.12.vec.extract.i.i = extractelement <2 x float> %i.es, i64 1 ; 2 uses
  %i.hj = fcmp ogt float %.sroa.267.12.vec.extract.i.i, 1.000000e+00
  %i.hk = select i1 %i.hj, float 1.000000e+00, float %.sroa.267.12.vec.extract.i.i ; 2 uses
  %i.hl = fcmp ogt float %i.hk, 0.000000e+00
  %i.hm = select i1 %i.hl, float %i.hk, float 0.000000e+00
  %i.hn = fsub float 1.000000e+00, %i.hm
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %.sroa.10.12.vec.extract.i, float %i.v)
  %i.hp = fadd float %i.ho, 5.000000e-01
  %i.hq = fptosi float %i.hp to i32
  %i.hr = load ptr, ptr %i.n, align 8, !tbaa !112 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !44
  %i.hu = ptrtoint ptr %i.hf to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !116
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hf, i64 39
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = and i64 %i.ia, -8
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  store i32 2, ptr %i.hf, align 8, !tbaa !117
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 88
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !52
  %i.ig = add i64 %i.if, %i.id                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !119
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.ig, ptr %i.ii, align 8, !tbaa !120
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store i16 1, ptr %i.ij, align 8, !tbaa !230
  %i.ik = fptosi float %i.hi to i16
  %i.il = getelementptr inbounds nuw i8, ptr %i.hf, i64 18
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !1196
  %i.im = trunc i32 %i.hq to i16                  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hf, i64 20
  store i16 %i.im, ptr %i.in, align 4, !tbaa !1197
  %i.io = fptosi float %i.hh to i16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hf, i64 22
  store i16 %i.io, ptr %i.ip, align 2, !tbaa !1198
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store i16 %i.im, ptr %i.iq, align 8, !tbaa !123
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hf, i64 26
  store i32 -1, ptr %i.ir, align 2
  br label %nk_stroke_line.exit77.i.i

nk_stroke_line.exit77.i.i:                        ; preds = %bb.aj, %bb.ai, %nk_stroke_line.exit.i.i
  %i.is = fdiv float %i.fv, f0x3E2AAAAB           ; 2 uses
  %i.it = fptosi float %i.is to i32               ; 2 uses
  %i.iu = sitofp i32 %i.it to float
  %i.iv = fsub float %i.is, %i.iu                 ; 2 uses
  %i.iw = fsub float 1.000000e+00, %i.iv          ; 3 uses
  %i.ix = fadd float %i.iv, -1.000000e+00
  %i.iy = fadd float %i.ix, 1.000000e+00          ; 3 uses
  switch i32 %i.it, label %nk_hsv_f.exit.i.i [
    i32 5, label %bb.ao
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
  ]

bb.ak:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

bb.al:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

bb.am:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

bb.an:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

bb.ao:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

nk_hsv_f.exit.i.i:                                ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %nk_stroke_line.exit77.i.i
  %.sink77.i.i.i.i.i = phi float [ 1.000000e+00, %bb.ao ], [ %i.iy, %bb.an ], [ 0.000000e+00, %bb.am ], [ 0.000000e+00, %bb.al ], [ %i.iw, %bb.ak ], [ 1.000000e+00, %nk_stroke_line.exit77.i.i ] ; 2 uses
  %.sink76.i.i.i.i.i = phi float [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %bb.an ], [ %i.iw, %bb.am ], [ 1.000000e+00, %bb.al ], [ 1.000000e+00, %bb.ak ], [ %i.iy, %nk_stroke_line.exit77.i.i ] ; 2 uses
  %.sink.i.i.i.i.i = phi float [ %i.iw, %bb.ao ], [ 1.000000e+00, %bb.an ], [ 1.000000e+00, %bb.am ], [ %i.iy, %bb.al ], [ 0.000000e+00, %bb.ak ], [ 0.000000e+00, %nk_stroke_line.exit77.i.i ] ; 2 uses
  %i.iz = fcmp ogt float %.sink.i.i.i.i.i, 1.000000e+00
  %i.ja = select i1 %i.iz, float 1.000000e+00, float %.sink.i.i.i.i.i ; 2 uses
  %i.jb = fcmp ogt float %i.ja, 0.000000e+00
  %i.jc = fmul float %i.ja, 2.550000e+02
  %i.jd = fptoui float %i.jc to i8
  %i.je = zext i8 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 16
  %i.jg = or disjoint i32 %i.jf, -16777216
  %i.jh = select i1 %i.jb, i32 %i.jg, i32 -16777216
  %i.ji = fcmp ogt float %.sink76.i.i.i.i.i, 1.000000e+00
  %i.jj = select i1 %i.ji, float 1.000000e+00, float %.sink76.i.i.i.i.i ; 2 uses
  %i.jk = fcmp ogt float %i.jj, 0.000000e+00
  %i.jl = fmul float %i.jj, 2.550000e+02
  %i.jm = fptoui float %i.jl to i8
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 8
  %.sroa.2.0.insert.ext.i.i.i.i.i = select i1 %i.jk, i32 %i.jo, i32 0
  %i.jp = fcmp ogt float %.sink77.i.i.i.i.i, 1.000000e+00
  %i.jq = select i1 %i.jp, float 1.000000e+00, float %.sink77.i.i.i.i.i ; 2 uses
end_hunk_0
