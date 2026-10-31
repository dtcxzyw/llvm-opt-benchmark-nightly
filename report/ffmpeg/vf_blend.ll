Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_blend?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@config_params:bb.a
bb.l:                                             ; preds = %bb.f
  tail call fastcc void @init_blend_func_16_16bit(ptr noundef nonnull %i.i) #15
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  tail call fastcc void @init_blend_func_32_32bit(ptr noundef nonnull %i.i) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !52 ; 3 uses
  %i.r = fcmp nsz oeq double %i.q, 0.000000e+00
  %i.s = load i32, ptr %i.i, align 8, !tbaa !51
  %.not.i = icmp eq i32 %i.s, 0                   ; 2 uses
  br i1 %i.r, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = icmp sgt i32 %i.o, 8
  %i.u = icmp samesign ugt i32 %i.o, 16
  %i.v = select i1 %i.u, ptr @blend_copytop_32, ptr @blend_copytop_16
  %i.w = select i1 %i.t, ptr %i.v, ptr @blend_copytop_8
  br label %.thread22.sink.split.i

bb.q:                                             ; preds = %bb.n
  %i.x = fcmp nsz oeq double %i.q, 1.000000e+00
  %or.cond.i = and i1 %i.x, %.not.i
  br i1 %or.cond.i, label %bb.r, label %ff_blend_init.exit

.thread.i:                                        ; preds = %bb.o
  %i.y = fcmp nsz oeq double %i.q, 1.000000e+00
  br i1 %i.y, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread.i, %bb.q
  %i.z = icmp sgt i32 %i.o, 8
  %i.aa = icmp samesign ugt i32 %i.o, 16
  %i.ab = select i1 %i.aa, ptr @blend_copytop_32, ptr @blend_copytop_16
  %i.ac = select i1 %i.z, ptr %i.ab, ptr @blend_copytop_8
  br label %.thread22.sink.split.i

bb.s:                                             ; preds = %.thread.i
  %i.ad = icmp sgt i32 %i.o, 8
  %i.ae = icmp samesign ugt i32 %i.o, 16
  %i.af = select i1 %i.ae, ptr @blend_copybottom_32, ptr @blend_copybottom_16
  %i.ag = select i1 %i.ad, ptr %i.af, ptr @blend_copybottom_8
  br label %.thread22.sink.split.i

.thread22.sink.split.i:                           ; preds = %bb.s, %bb.r, %bb.p
  %.sink.i = phi ptr [ %i.ag, %bb.s ], [ %i.ac, %bb.r ], [ %i.w, %bb.p ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sink.i, ptr %i.ah, align 8, !tbaa !53
  br label %ff_blend_init.exit

ff_blend_init.exit:                               ; preds = %bb.q, %.thread22.sink.split.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !100 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  %i.aj = icmp eq ptr %.pre, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %ff_blend_init.exit
  br i1 %i.aj, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ak = tail call noalias ptr @av_strdup(ptr noundef nonnull %i.ai) #13 ; 2 uses
  store ptr %i.ak, ptr %.phi.trans.insert, align 8, !tbaa !101
  %.not56 = icmp eq ptr %i.ak, null
  br i1 %.not56, label %.thread62, label %.thread

bb.v:                                             ; preds = %ff_blend_init.exit
  br i1 %i.aj, label %bb.z, label %.thread

.thread:                                          ; preds = %bb.t, %bb.u, %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  %.not58 = icmp eq ptr %i.an, null
  %.pre77 = load i32, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  br i1 %.not58, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread
  %i.ao = sext i32 %.pre77 to i64
  %i.ap = tail call noalias ptr @av_calloc(i64 noundef %i.ao, i64 noundef 8) #13 ; 2 uses
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !32
  %.not59 = icmp eq ptr %i.ap, null
  br i1 %.not59, label %.thread62, label %._crit_edge75

._crit_edge75:                                    ; preds = %bb.w
  %.pre76 = load i32, ptr %i.h, align 8, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge75, %.thread
  %i.aq = phi i32 [ %.pre76, %._crit_edge75 ], [ %.pre77, %.thread ]
  %.not6066 = icmp sgt i32 %i.aq, 0
  br i1 %.not6066, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !29
  %i.as = sext i32 %i.ar to i64
  %.not60 = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %.not60, label %.lr.ph, label %._crit_edge, !llvm.loop !96

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34
  tail call void @av_expr_free(ptr noundef %i.av) #13
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !34
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !101
  %i.az = tail call i32 @av_expr_parse(ptr noundef nonnull %i.ax, ptr noundef %i.ay, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %0) #13 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.thread62, label %bb.y

._crit_edge:                                      ; preds = %bb.y, %bb.x
  %i.bb = load i32, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 8
  %i.bd = icmp sgt i32 %i.bb, 16
  %i.be = select i1 %i.bd, ptr @blend_expr_32bit, ptr @blend_expr_16bit
  %i.bf = select i1 %i.bc, ptr %i.be, ptr @blend_expr_8bit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !53
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.v
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next73, 4
  br i1 %exitcond, label %.thread62, label %bb.b, !llvm.loop !97

.thread62:                                        ; preds = %bb.u, %bb.w, %bb.z, %.lr.ph
  %spec.select = phi i32 [ %i.az, %.lr.ph ], [ -12, %bb.w ], [ -12, %bb.u ], [ 0, %bb.z ]
  ret i32 %spec.select
}

declare i32 @ff_framesync_configure(ptr noundef) local_unnamed_addr #4

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #4

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @av_expr_free(ptr noundef) local_unnamed_addr #4

declare i32 @av_expr_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @blend_expr_32bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly captures(none) %9) #0 {
bb.a:
  %i.a = load ptr, ptr %9, align 8, !tbaa !56     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = sdiv i64 %5, 4
  %i.g = sdiv i64 %1, 4
  %i.h = sdiv i64 %3, 4
  %i.i = icmp sgt i64 %7, 0
  br i1 %i.i, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = icmp sgt i64 %6, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br i1 %i.k, label %.lr.ph.us, label %.lr.ph48.split.preheader

.lr.ph48.split.preheader:                         ; preds = %.lr.ph48
  %i.m = trunc i64 %7 to i32
  %i.n = add i32 %i.m, -1
  %i.o = add nsw i32 %i.n, %i.c
  %i.p = sitofp nsz i32 %i.o to double
  store double %i.p, ptr %i.j, align 8, !tbaa !59
  br label %._crit_edge49

.lr.ph.us:                                        ; preds = %.lr.ph48, %._crit_edge.us
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge.us ], [ 0, %.lr.ph48 ] ; 2 uses
  %.03845.us = phi ptr [ %i.ag, %._crit_edge.us ], [ %4, %.lr.ph48 ] ; 2 uses
  %.03944.us = phi ptr [ %i.ai, %._crit_edge.us ], [ %2, %.lr.ph48 ] ; 2 uses
  %.04043.us = phi ptr [ %i.ah, %._crit_edge.us ], [ %0, %.lr.ph48 ] ; 2 uses
  %i.q = trunc i64 %indvars.iv53 to i32
  %i.r = add i32 %i.c, %i.q
  %i.s = sitofp nsz i32 %i.r to double
  store double %i.s, ptr %i.j, align 8, !tbaa !59
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = uitofp nsz nneg i32 %i.t to double
  store double %i.u, ptr %i.a, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.04043.us, i64 %indvars.iv
  %i.w = load float, ptr %i.v, align 4, !tbaa !61
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.03944.us, i64 %indvars.iv
  %i.y = load float, ptr %i.x, align 4, !tbaa !61
  %i.z = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.y, i64 1
  %i.ab = fpext <2 x float> %i.aa to <2 x double>
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x double> %i.ac, ptr %i.l, align 8, !tbaa !59
  %i.ad = tail call nsz double @av_expr_eval(ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null) #13
  %i.ae = fptrunc nsz double %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.03845.us, i64 %indvars.iv
  store float %i.ae, ptr %i.af, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !102

._crit_edge.us:                                   ; preds = %bb.b
  %i.ag = getelementptr inbounds [4 x i8], ptr %.03845.us, i64 %i.f
  %i.ah = getelementptr inbounds [4 x i8], ptr %.04043.us, i64 %i.g
  %i.ai = getelementptr inbounds [4 x i8], ptr %.03944.us, i64 %i.h
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, %7
  br i1 %exitcond56.not, label %._crit_edge49, label %.lr.ph.us, !llvm.loop !103

._crit_edge49:                                    ; preds = %._crit_edge.us, %.lr.ph48.split.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_expr_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly captures(none) %9) #0 {
bb.a:
  %i.a = load ptr, ptr %9, align 8, !tbaa !56     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = sdiv i64 %5, 2
  %i.g = sdiv i64 %1, 2
  %i.h = sdiv i64 %3, 2
  %i.i = icmp sgt i64 %7, 0
  br i1 %i.i, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = icmp sgt i64 %6, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br i1 %i.k, label %.lr.ph.us, label %.lr.ph48.split.preheader

.lr.ph48.split.preheader:                         ; preds = %.lr.ph48
  %i.m = trunc i64 %7 to i32
  %i.n = add i32 %i.m, -1
  %i.o = add nsw i32 %i.n, %i.c
  %i.p = sitofp nsz i32 %i.o to double
  store double %i.p, ptr %i.j, align 8, !tbaa !59
  br label %._crit_edge49

.lr.ph.us:                                        ; preds = %.lr.ph48, %._crit_edge.us
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge.us ], [ 0, %.lr.ph48 ] ; 2 uses
  %.03845.us = phi ptr [ %i.ag, %._crit_edge.us ], [ %4, %.lr.ph48 ] ; 2 uses
  %.03944.us = phi ptr [ %i.ai, %._crit_edge.us ], [ %2, %.lr.ph48 ] ; 2 uses
  %.04043.us = phi ptr [ %i.ah, %._crit_edge.us ], [ %0, %.lr.ph48 ] ; 2 uses
  %i.q = trunc i64 %indvars.iv53 to i32
  %i.r = add i32 %i.c, %i.q
  %i.s = sitofp nsz i32 %i.r to double
  store double %i.s, ptr %i.j, align 8, !tbaa !59
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = uitofp nsz nneg i32 %i.t to double
  store double %i.u, ptr %i.a, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %.04043.us, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !63
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.03944.us, i64 %indvars.iv
  %i.y = load i16, ptr %i.x, align 2, !tbaa !63
  %i.z = insertelement <2 x i16> poison, i16 %i.w, i64 0
  %i.aa = insertelement <2 x i16> %i.z, i16 %i.y, i64 1
  %i.ab = uitofp <2 x i16> %i.aa to <2 x double>
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x double> %i.ac, ptr %i.l, align 8, !tbaa !59
  %i.ad = tail call nsz double @av_expr_eval(ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null) #13
  %i.ae = fptoui double %i.ad to i16
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.03845.us, i64 %indvars.iv
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !104

._crit_edge.us:                                   ; preds = %bb.b
  %i.ag = getelementptr inbounds [2 x i8], ptr %.03845.us, i64 %i.f
  %i.ah = getelementptr inbounds [2 x i8], ptr %.04043.us, i64 %i.g
  %i.ai = getelementptr inbounds [2 x i8], ptr %.03944.us, i64 %i.h
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, %7
  br i1 %exitcond56.not, label %._crit_edge49, label %.lr.ph.us, !llvm.loop !105

._crit_edge49:                                    ; preds = %._crit_edge.us, %.lr.ph48.split.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_expr_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly captures(none) %9) #0 {
bb.a:
  %i.a = load ptr, ptr %9, align 8, !tbaa !56     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = icmp sgt i64 %7, 0
  br i1 %i.f, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = icmp sgt i64 %6, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  br i1 %i.h, label %.lr.ph.us, label %.lr.ph48.split.preheader

.lr.ph48.split.preheader:                         ; preds = %.lr.ph48
  %i.m = trunc i64 %7 to i32
  %i.n = add i32 %i.m, -1
  %i.o = add nsw i32 %i.n, %i.c
  %i.p = sitofp nsz i32 %i.o to double
  store double %i.p, ptr %i.g, align 8, !tbaa !59
  br label %._crit_edge49

.lr.ph.us:                                        ; preds = %.lr.ph48, %._crit_edge.us
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge.us ], [ 0, %.lr.ph48 ] ; 2 uses
  %.03845.us = phi ptr [ %i.ae, %._crit_edge.us ], [ %4, %.lr.ph48 ] ; 2 uses
  %.03944.us = phi ptr [ %i.ag, %._crit_edge.us ], [ %2, %.lr.ph48 ] ; 2 uses
  %.04043.us = phi ptr [ %i.af, %._crit_edge.us ], [ %0, %.lr.ph48 ] ; 2 uses
  %i.q = trunc i64 %indvars.iv53 to i32
  %i.r = add i32 %i.c, %i.q
  %i.s = sitofp nsz i32 %i.r to double
  store double %i.s, ptr %i.g, align 8, !tbaa !59
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = uitofp nsz nneg i32 %i.t to double
  store double %i.u, ptr %i.a, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %.04043.us, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !48
  %i.x = uitofp nsz i8 %i.w to double             ; 2 uses
  store double %i.x, ptr %i.i, align 8, !tbaa !59
  store double %i.x, ptr %i.j, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %.03944.us, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !48
  %i.aa = uitofp nsz i8 %i.z to double            ; 2 uses
  store double %i.aa, ptr %i.k, align 8, !tbaa !59
  store double %i.aa, ptr %i.l, align 8, !tbaa !59
  %i.ab = tail call nsz double @av_expr_eval(ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null) #13
  %i.ac = fptoui double %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.03845.us, i64 %indvars.iv
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !106

._crit_edge.us:                                   ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %.03845.us, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.04043.us, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.03944.us, i64 %3
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, %7
  br i1 %exitcond56.not, label %._crit_edge49, label %.lr.ph.us, !llvm.loop !107

._crit_edge49:                                    ; preds = %._crit_edge.us, %.lr.ph48.split.preheader, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_8_8bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_8_8bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_9_16bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_9_16bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_10_16bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_10_16bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_12_16bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_12_16bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_14_16bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_14_16bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_16_16bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
end_hunk_0
begin_hunk_1_@blend_stain_8bit:bb.a
  br label %vec.epilog.scalar.ph

._crit_edge37.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ar = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.as = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.at = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %iter.check, !llvm.loop !509

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02735, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !48  ; 2 uses
  %i.aw = zext i8 %i.av to i32
  %i.ax = uitofp i8 %i.av to float
  %i.ay = getelementptr inbounds nuw i8, ptr %.02834, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !48
  %i.ba = zext i8 %i.az to i32
  %reass.add.neg = mul nsw i32 %i.aw, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.ba
  %i.bb = add nsw i32 %reass.sub, 510
  %i.bc = sitofp nsz i32 %i.bb to float
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.c, float %i.ax)
  %i.be = fptoui float %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.02933, i64 %indvars.iv
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !510
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 3 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = getelementptr i8, ptr %2, i64 %6
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.g
  %i.i = mul i64 %1, %i.f
  %i.j = getelementptr i8, ptr %0, i64 %6
  %scevgep50 = getelementptr i8, ptr %i.j, i64 %i.i
  %i.k = mul i64 %5, %i.f
  %i.l = getelementptr i8, ptr %4, i64 %6
  %scevgep51 = getelementptr i8, ptr %i.l, i64 %i.k ; 2 uses
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep50
  %bound1 = icmp ult ptr %0, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %i.m = or i64 %1, %5
  %i.n = icmp slt i64 %i.m, 0
  %i.o = or i1 %found.conflict, %i.n
  %bound053 = icmp ult ptr %4, %scevgep
  %bound154 = icmp ult ptr %2, %scevgep51
  %found.conflict55 = and i1 %bound053, %bound154
  %stride.check56 = icmp slt i64 %3, 0
  %i.p = or i1 %found.conflict55, %stride.check56
  %conflict.rdx = or i1 %i.o, %i.p
  %min.iters.check57 = icmp ult i64 %6, 16
  %i.q = and i64 %6, 12
  %n.vec = and i64 %6, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  %n.vec59 = and i64 %6, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert60 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat61 = shufflevector <4 x float> %broadcast.splatinsert60, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n66 = icmp eq i64 %6, %n.vec59
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.bq, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02833 = phi ptr [ %i.br, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.02932 = phi ptr [ %i.bp, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02734, i64 %index
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !48, !alias.scope !523 ; 3 uses
  %i.s = uitofp <16 x i8> %wide.load to <16 x float>
  %i.t = uitofp <16 x i8> %wide.load to <16 x double>
  %i.u = fmul nnan nsz <16 x double> %i.t, splat (double f0x400921FB54442D18)
  %i.v = fdiv nsz <16 x double> %i.u, splat (double 2.550000e+02)
  %i.w = fptrunc nsz <16 x double> %i.v to <16 x float>
  %i.x = tail call nsz <16 x float> @llvm.cos.v16f32(<16 x float> %i.w)
  %i.y = fsub nsz <16 x float> splat (float 2.000000e+00), %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.02833, i64 %index
  %wide.load58 = load <16 x i8>, ptr %i.z, align 1, !tbaa !48, !alias.scope !524
  %i.aa = uitofp <16 x i8> %wide.load58 to <16 x double>
  %i.ab = fmul nnan nsz <16 x double> %i.aa, splat (double f0x400921FB54442D18)
  %i.ac = fdiv nsz <16 x double> %i.ab, splat (double 2.550000e+02)
  %i.ad = fptrunc nsz <16 x double> %i.ac to <16 x float>
  %i.ae = tail call nsz <16 x float> @llvm.cos.v16f32(<16 x float> %i.ad)
  %i.af = fsub nsz <16 x float> %i.y, %i.ae
  %i.ag = fmul nsz <16 x float> %i.af, splat (float 2.550000e+02)
  %i.ah = fmul nsz <16 x float> %i.ag, splat (float 2.500000e-01)
  %i.ai = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.ah)
  %i.aj = zext <16 x i8> %wide.load to <16 x i64>
  %i.ak = sub nsw <16 x i64> %i.ai, %i.aj
  %i.al = sitofp nsz <16 x i64> %i.ak to <16 x float>
  %i.am = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.al, <16 x float> %broadcast.splat, <16 x float> %i.s)
  %i.an = fptoui <16 x float> %i.am to <16 x i8>
  %i.ao = getelementptr inbounds nuw i8, ptr %.02932, i64 %index
  store <16 x i8> %i.an, ptr %i.ao, align 1, !tbaa !48, !alias.scope !525, !noalias !526
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02734, i64 %index62
  %wide.load63 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !48, !alias.scope !523 ; 3 uses
  %i.ar = uitofp <4 x i8> %wide.load63 to <4 x float>
  %i.as = uitofp <4 x i8> %wide.load63 to <4 x double>
  %i.at = fmul nnan nsz <4 x double> %i.as, splat (double f0x400921FB54442D18)
  %i.au = fdiv nsz <4 x double> %i.at, splat (double 2.550000e+02)
  %i.av = fptrunc nsz <4 x double> %i.au to <4 x float>
  %i.aw = tail call nsz <4 x float> @llvm.cos.v4f32(<4 x float> %i.av)
  %i.ax = fsub nsz <4 x float> splat (float 2.000000e+00), %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.02833, i64 %index62
  %wide.load64 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !48, !alias.scope !524
  %i.az = uitofp <4 x i8> %wide.load64 to <4 x double>
  %i.ba = fmul nnan nsz <4 x double> %i.az, splat (double f0x400921FB54442D18)
  %i.bb = fdiv nsz <4 x double> %i.ba, splat (double 2.550000e+02)
  %i.bc = fptrunc nsz <4 x double> %i.bb to <4 x float>
  %i.bd = tail call nsz <4 x float> @llvm.cos.v4f32(<4 x float> %i.bc)
  %i.be = fsub nsz <4 x float> %i.ax, %i.bd
  %i.bf = fmul nsz <4 x float> %i.be, splat (float 2.550000e+02)
  %i.bg = fmul nsz <4 x float> %i.bf, splat (float 2.500000e-01)
  %i.bh = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.bg)
  %i.bi = zext <4 x i8> %wide.load63 to <4 x i64>
  %i.bj = sub nsw <4 x i64> %i.bh, %i.bi
  %i.bk = sitofp nsz <4 x i64> %i.bj to <4 x float>
  %i.bl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %broadcast.splat61, <4 x float> %i.ar)
  %i.bm = fptoui <4 x float> %i.bl to <4 x i8>
  %i.bn = getelementptr inbounds nuw i8, ptr %.02932, i64 %index62
  store <4 x i8> %i.bm, ptr %i.bn, align 1, !tbaa !48, !alias.scope !525, !noalias !526
  %index.next65 = add nuw i64 %index62, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next65, %n.vec59
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !520

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n66, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec59, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bp = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.bq = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.br = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %iter.check, !llvm.loop !521

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !48  ; 3 uses
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !48
  %i.bx = insertelement <2 x i8> poison, i8 %i.bt, i64 0
  %i.by = insertelement <2 x i8> %i.bx, i8 %i.bw, i64 1
  %i.bz = uitofp <2 x i8> %i.by to <2 x double>
  %i.ca = fmul nnan nsz <2 x double> %i.bz, splat (double f0x400921FB54442D18)
  %i.cb = fdiv nsz <2 x double> %i.ca, splat (double 2.550000e+02)
  %i.cc = fptrunc <2 x double> %i.cb to <2 x float> ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0
  %i.ce = tail call nsz float @llvm.cos.f32(float %i.cd)
  %i.cf = fsub nsz float 2.000000e+00, %i.ce
  %i.cg = extractelement <2 x float> %i.cc, i64 1
  %i.ch = tail call nsz float @llvm.cos.f32(float %i.cg)
  %i.ci = fsub nsz float %i.cf, %i.ch
  %i.cj = fmul nsz float %i.ci, 2.550000e+02
  %i.ck = fmul nsz float %i.cj, 2.500000e-01
  %i.cl = tail call i64 @llvm.lrint.i64.f32(float %i.ck)
  %i.cm = zext i8 %i.bt to i64
  %i.cn = sub nsw i64 %i.cl, %i.cm
  %i.co = sitofp nsz i64 %i.cn to float
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %i.co, float %i.c, float %i.bu)
  %i.cq = fptoui float %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !522
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !527

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.04958, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !48    ; 4 uses
  %i.k = uitofp i8 %i.j to float
  %i.l = icmp eq i8 %i.j, -1
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i8 %i.j to i32                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05057, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !48    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.r = zext i8 %i.o to i16
  %.lhs.trunc = mul nuw i16 %i.r, 255
  %i.s = trunc nuw nsw i32 %i.q to i16
  %.rhs.trunc = sub nuw nsw i16 510, %i.s
  %i.t = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.t to i32
  %i.u = icmp ugt i8 %i.j, -128
  %i.v = mul nuw nsw i32 %i.q, %i.p
  %i.w = udiv i32 %i.v, 255
  %i.x = select i1 %i.u, i32 %.zext, i32 %i.w
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.x, i32 255)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.05156, i64 %indvars.iv
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !528
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_9bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep55 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep56 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep55
  %bound1 = icmp ult ptr %0, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound058 = icmp ult ptr %4, %scevgep
  %bound159 = icmp ult ptr %2, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  %stride.check61 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict60, %stride.check61
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !536 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load62 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !537
  %i.v = zext <8 x i16> %wide.load62 to <8 x i32>
  %i.w = add nuw nsw <8 x i32> %i.v, %i.s
  %i.x = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 511))
  %i.y = sub nsw <8 x i32> %i.x, %i.s
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !538, !noalias !539
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !534

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
end_hunk_1
begin_hunk_2_@blend_stain_9bit:bb.a
  %bound0 = icmp ult ptr %4, %scevgep51
  %bound1 = icmp ult ptr %0, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound054 = icmp ult ptr %4, %scevgep
  %bound155 = icmp ult ptr %2, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02735 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02834 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02933 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !898 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %index
  %wide.load58 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !899
  %i.v = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.w = mul nsw <8 x i32> %i.s, splat (i32 -2)
  %i.x = sub nsw <8 x i32> %i.w, %i.v
  %i.y = add nsw <8 x i32> %i.x, splat (i32 1022)
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !900, !noalias !901
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !895

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge37.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !896

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %reass.add.neg = mul nsw i32 %i.aj, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.an
  %i.ao = add nsw i32 %reass.sub, 1022
  %i.ap = sitofp nsz i32 %i.ao to float
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.c, float %i.ak)
  %i.ar = fptoui float %i.aq to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !897
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_9bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep50 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep51 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep50
  %bound1 = icmp ult ptr %0, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound053 = icmp ult ptr %4, %scevgep
  %bound154 = icmp ult ptr %2, %scevgep51
  %found.conflict55 = and i1 %bound053, %bound154
  %stride.check56 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict55, %stride.check56
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.ar, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.as, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.aq, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !909 ; 3 uses
  %i.s = uitofp <8 x i16> %wide.load to <8 x float>
  %i.t = uitofp <8 x i16> %wide.load to <8 x double>
  %i.u = fmul nnan nsz <8 x double> %i.t, splat (double f0x400921FB54442D18)
  %i.v = fdiv nsz <8 x double> %i.u, splat (double 5.110000e+02)
  %i.w = fptrunc nsz <8 x double> %i.v to <8 x float>
  %i.x = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.w)
  %i.y = fsub nsz <8 x float> splat (float 2.000000e+00), %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load57 = load <8 x i16>, ptr %i.z, align 2, !tbaa !63, !alias.scope !910
  %i.aa = uitofp <8 x i16> %wide.load57 to <8 x double>
  %i.ab = fmul nnan nsz <8 x double> %i.aa, splat (double f0x400921FB54442D18)
  %i.ac = fdiv nsz <8 x double> %i.ab, splat (double 5.110000e+02)
  %i.ad = fptrunc nsz <8 x double> %i.ac to <8 x float>
  %i.ae = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.ad)
  %i.af = fsub nsz <8 x float> %i.y, %i.ae
  %i.ag = fmul nsz <8 x float> %i.af, splat (float 5.110000e+02)
  %i.ah = fmul nsz <8 x float> %i.ag, splat (float 2.500000e-01)
  %i.ai = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.ah)
  %i.aj = zext <8 x i16> %wide.load to <8 x i64>
  %i.ak = sub nsw <8 x i64> %i.ai, %i.aj
  %i.al = sitofp nsz <8 x i64> %i.ak to <8 x float>
  %i.am = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.al, <8 x float> %broadcast.splat, <8 x float> %i.s)
  %i.an = fptoui <8 x float> %i.am to <8 x i16>
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !63, !alias.scope !911, !noalias !912
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !906

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aq = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.ar = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.as = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !907

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !63 ; 3 uses
  %i.av = uitofp i16 %i.au to float
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !63
  %i.ay = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %i.az = insertelement <2 x i16> %i.ay, i16 %i.ax, i64 1
  %i.ba = uitofp <2 x i16> %i.az to <2 x double>
  %i.bb = fmul nnan nsz <2 x double> %i.ba, splat (double f0x400921FB54442D18)
  %i.bc = fdiv nsz <2 x double> %i.bb, splat (double 5.110000e+02)
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = tail call nsz float @llvm.cos.f32(float %i.be)
  %i.bg = fsub nsz float 2.000000e+00, %i.bf
  %i.bh = extractelement <2 x float> %i.bd, i64 1
  %i.bi = tail call nsz float @llvm.cos.f32(float %i.bh)
  %i.bj = fsub nsz float %i.bg, %i.bi
  %i.bk = fmul nsz float %i.bj, 5.110000e+02
  %i.bl = fmul nsz float %i.bk, 2.500000e-01
  %i.bm = tail call i64 @llvm.lrint.i64.f32(float %i.bl)
  %i.bn = zext i16 %i.au to i64
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = sitofp nsz i64 %i.bo to float
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.c, float %i.av)
  %i.br = fptoui float %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !908
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_9bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !913

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 4 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 511
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 511
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 1022, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 256
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 511
  %i.x = select i1 %i.u, i32 %i.t, i32 %i.w
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.x, i32 511)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !914
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_10bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep55 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep56 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep55
  %bound1 = icmp ult ptr %0, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound058 = icmp ult ptr %4, %scevgep
  %bound159 = icmp ult ptr %2, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  %stride.check61 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict60, %stride.check61
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !922 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load62 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !923
  %i.v = zext <8 x i16> %wide.load62 to <8 x i32>
  %i.w = add nuw nsw <8 x i32> %i.v, %i.s
  %i.x = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 1023))
  %i.y = sub nsw <8 x i32> %i.x, %i.s
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !924, !noalias !925
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !919

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !920

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, %i.aj
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 1023)
  %i.ap = sub nsw i32 %spec.select, %i.aj
  %i.aq = sitofp nsz i32 %i.ap to float
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.c, float %i.ak)
  %i.as = fptoui float %i.ar to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.as, ptr %i.at, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !921
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_10bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
end_hunk_2
begin_hunk_3_@blend_stain_10bit:bb.a
  %bound0 = icmp ult ptr %4, %scevgep51
  %bound1 = icmp ult ptr %0, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound054 = icmp ult ptr %4, %scevgep
  %bound155 = icmp ult ptr %2, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02735 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02834 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02933 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1163 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %index
  %wide.load58 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !1164
  %i.v = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.w = mul nsw <8 x i32> %i.s, splat (i32 -2)
  %i.x = sub nsw <8 x i32> %i.w, %i.v
  %i.y = add nsw <8 x i32> %i.x, splat (i32 2046)
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !1165, !noalias !1166
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1160

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge37.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !1161

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %reass.add.neg = mul nsw i32 %i.aj, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.an
  %i.ao = add nsw i32 %reass.sub, 2046
  %i.ap = sitofp nsz i32 %i.ao to float
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.c, float %i.ak)
  %i.ar = fptoui float %i.aq to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1162
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_10bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep50 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep51 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep50
  %bound1 = icmp ult ptr %0, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound053 = icmp ult ptr %4, %scevgep
  %bound154 = icmp ult ptr %2, %scevgep51
  %found.conflict55 = and i1 %bound053, %bound154
  %stride.check56 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict55, %stride.check56
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.ar, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.as, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.aq, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1174 ; 3 uses
  %i.s = uitofp <8 x i16> %wide.load to <8 x float>
  %i.t = uitofp <8 x i16> %wide.load to <8 x double>
  %i.u = fmul nnan nsz <8 x double> %i.t, splat (double f0x400921FB54442D18)
  %i.v = fdiv nsz <8 x double> %i.u, splat (double 1.023000e+03)
  %i.w = fptrunc nsz <8 x double> %i.v to <8 x float>
  %i.x = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.w)
  %i.y = fsub nsz <8 x float> splat (float 2.000000e+00), %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load57 = load <8 x i16>, ptr %i.z, align 2, !tbaa !63, !alias.scope !1175
  %i.aa = uitofp <8 x i16> %wide.load57 to <8 x double>
  %i.ab = fmul nnan nsz <8 x double> %i.aa, splat (double f0x400921FB54442D18)
  %i.ac = fdiv nsz <8 x double> %i.ab, splat (double 1.023000e+03)
  %i.ad = fptrunc nsz <8 x double> %i.ac to <8 x float>
  %i.ae = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.ad)
  %i.af = fsub nsz <8 x float> %i.y, %i.ae
  %i.ag = fmul nsz <8 x float> %i.af, splat (float 1.023000e+03)
  %i.ah = fmul nsz <8 x float> %i.ag, splat (float 2.500000e-01)
  %i.ai = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.ah)
  %i.aj = zext <8 x i16> %wide.load to <8 x i64>
  %i.ak = sub nsw <8 x i64> %i.ai, %i.aj
  %i.al = sitofp nsz <8 x i64> %i.ak to <8 x float>
  %i.am = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.al, <8 x float> %broadcast.splat, <8 x float> %i.s)
  %i.an = fptoui <8 x float> %i.am to <8 x i16>
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !63, !alias.scope !1176, !noalias !1177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aq = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.ar = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.as = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1172

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !63 ; 3 uses
  %i.av = uitofp i16 %i.au to float
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !63
  %i.ay = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %i.az = insertelement <2 x i16> %i.ay, i16 %i.ax, i64 1
  %i.ba = uitofp <2 x i16> %i.az to <2 x double>
  %i.bb = fmul nnan nsz <2 x double> %i.ba, splat (double f0x400921FB54442D18)
  %i.bc = fdiv nsz <2 x double> %i.bb, splat (double 1.023000e+03)
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = tail call nsz float @llvm.cos.f32(float %i.be)
  %i.bg = fsub nsz float 2.000000e+00, %i.bf
  %i.bh = extractelement <2 x float> %i.bd, i64 1
  %i.bi = tail call nsz float @llvm.cos.f32(float %i.bh)
  %i.bj = fsub nsz float %i.bg, %i.bi
  %i.bk = fmul nsz float %i.bj, 1.023000e+03
  %i.bl = fmul nsz float %i.bk, 2.500000e-01
  %i.bm = tail call i64 @llvm.lrint.i64.f32(float %i.bl)
  %i.bn = zext i16 %i.au to i64
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = sitofp nsz i64 %i.bo to float
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.c, float %i.av)
  %i.br = fptoui float %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1173
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_10bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1178

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 4 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 1023
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 1023
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 2046, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 512
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 1023
  %i.x = select i1 %i.u, i32 %i.t, i32 %i.w
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.x, i32 1023)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1179
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_12bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep55 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep56 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep55
  %bound1 = icmp ult ptr %0, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound058 = icmp ult ptr %4, %scevgep
  %bound159 = icmp ult ptr %2, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  %stride.check61 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict60, %stride.check61
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1187 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load62 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !1188
  %i.v = zext <8 x i16> %wide.load62 to <8 x i32>
  %i.w = add nuw nsw <8 x i32> %i.v, %i.s
  %i.x = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 4095))
  %i.y = sub nsw <8 x i32> %i.x, %i.s
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !1189, !noalias !1190
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1184

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !1185

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, %i.aj
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 4095)
  %i.ap = sub nsw i32 %spec.select, %i.aj
  %i.aq = sitofp nsz i32 %i.ap to float
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.c, float %i.ak)
  %i.as = fptoui float %i.ar to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.as, ptr %i.at, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1186
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_12bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
end_hunk_3
begin_hunk_4_@blend_stain_12bit:bb.a
  %bound0 = icmp ult ptr %4, %scevgep51
  %bound1 = icmp ult ptr %0, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound054 = icmp ult ptr %4, %scevgep
  %bound155 = icmp ult ptr %2, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02735 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02834 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02933 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1428 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %index
  %wide.load58 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !1429
  %i.v = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.w = mul nsw <8 x i32> %i.s, splat (i32 -2)
  %i.x = sub nsw <8 x i32> %i.w, %i.v
  %i.y = add nsw <8 x i32> %i.x, splat (i32 8190)
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !1430, !noalias !1431
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1425

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge37.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !1426

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %reass.add.neg = mul nsw i32 %i.aj, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.an
  %i.ao = add nsw i32 %reass.sub, 8190
  %i.ap = sitofp nsz i32 %i.ao to float
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.c, float %i.ak)
  %i.ar = fptoui float %i.aq to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1427
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_12bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep50 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep51 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep50
  %bound1 = icmp ult ptr %0, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound053 = icmp ult ptr %4, %scevgep
  %bound154 = icmp ult ptr %2, %scevgep51
  %found.conflict55 = and i1 %bound053, %bound154
  %stride.check56 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict55, %stride.check56
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.ar, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.as, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.aq, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1439 ; 3 uses
  %i.s = uitofp <8 x i16> %wide.load to <8 x float>
  %i.t = uitofp <8 x i16> %wide.load to <8 x double>
  %i.u = fmul nnan nsz <8 x double> %i.t, splat (double f0x400921FB54442D18)
  %i.v = fdiv nsz <8 x double> %i.u, splat (double 4.095000e+03)
  %i.w = fptrunc nsz <8 x double> %i.v to <8 x float>
  %i.x = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.w)
  %i.y = fsub nsz <8 x float> splat (float 2.000000e+00), %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load57 = load <8 x i16>, ptr %i.z, align 2, !tbaa !63, !alias.scope !1440
  %i.aa = uitofp <8 x i16> %wide.load57 to <8 x double>
  %i.ab = fmul nnan nsz <8 x double> %i.aa, splat (double f0x400921FB54442D18)
  %i.ac = fdiv nsz <8 x double> %i.ab, splat (double 4.095000e+03)
  %i.ad = fptrunc nsz <8 x double> %i.ac to <8 x float>
  %i.ae = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.ad)
  %i.af = fsub nsz <8 x float> %i.y, %i.ae
  %i.ag = fmul nsz <8 x float> %i.af, splat (float 4.095000e+03)
  %i.ah = fmul nsz <8 x float> %i.ag, splat (float 2.500000e-01)
  %i.ai = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.ah)
  %i.aj = zext <8 x i16> %wide.load to <8 x i64>
  %i.ak = sub nsw <8 x i64> %i.ai, %i.aj
  %i.al = sitofp nsz <8 x i64> %i.ak to <8 x float>
  %i.am = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.al, <8 x float> %broadcast.splat, <8 x float> %i.s)
  %i.an = fptoui <8 x float> %i.am to <8 x i16>
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !63, !alias.scope !1441, !noalias !1442
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1436

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aq = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.ar = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.as = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1437

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !63 ; 3 uses
  %i.av = uitofp i16 %i.au to float
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !63
  %i.ay = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %i.az = insertelement <2 x i16> %i.ay, i16 %i.ax, i64 1
  %i.ba = uitofp <2 x i16> %i.az to <2 x double>
  %i.bb = fmul nnan nsz <2 x double> %i.ba, splat (double f0x400921FB54442D18)
  %i.bc = fdiv nsz <2 x double> %i.bb, splat (double 4.095000e+03)
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = tail call nsz float @llvm.cos.f32(float %i.be)
  %i.bg = fsub nsz float 2.000000e+00, %i.bf
  %i.bh = extractelement <2 x float> %i.bd, i64 1
  %i.bi = tail call nsz float @llvm.cos.f32(float %i.bh)
  %i.bj = fsub nsz float %i.bg, %i.bi
  %i.bk = fmul nsz float %i.bj, 4.095000e+03
  %i.bl = fmul nsz float %i.bk, 2.500000e-01
  %i.bm = tail call i64 @llvm.lrint.i64.f32(float %i.bl)
  %i.bn = zext i16 %i.au to i64
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = sitofp nsz i64 %i.bo to float
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.c, float %i.av)
  %i.br = fptoui float %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1438
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_12bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1443

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 4 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 4095
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 4095
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 8190, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 2048
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 4095
  %i.x = select i1 %i.u, i32 %i.t, i32 %i.w
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.x, i32 4095)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1444
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep55 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep56 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep55
  %bound1 = icmp ult ptr %0, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound058 = icmp ult ptr %4, %scevgep
  %bound159 = icmp ult ptr %2, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  %stride.check61 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict60, %stride.check61
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1452 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load62 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !1453
  %i.v = zext <8 x i16> %wide.load62 to <8 x i32>
  %i.w = add nuw nsw <8 x i32> %i.v, %i.s
  %i.x = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 16383))
  %i.y = sub nsw <8 x i32> %i.x, %i.s
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !1454, !noalias !1455
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1449

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !1450

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, %i.aj
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 16383)
  %i.ap = sub nsw i32 %spec.select, %i.aj
  %i.aq = sitofp nsz i32 %i.ap to float
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.c, float %i.ak)
  %i.as = fptoui float %i.ar to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.as, ptr %i.at, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1451
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
end_hunk_4
begin_hunk_5_@blend_stain_14bit:bb.a
  %bound0 = icmp ult ptr %4, %scevgep51
  %bound1 = icmp ult ptr %0, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound054 = icmp ult ptr %4, %scevgep
  %bound155 = icmp ult ptr %2, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02735 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02834 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02933 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1693 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %index
  %wide.load58 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !1694
  %i.v = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.w = mul nsw <8 x i32> %i.s, splat (i32 -2)
  %i.x = sub nsw <8 x i32> %i.w, %i.v
  %i.y = add nsw <8 x i32> %i.x, splat (i32 32766)
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !1695, !noalias !1696
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1690

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge37.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !1691

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %reass.add.neg = mul nsw i32 %i.aj, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.an
  %i.ao = add nsw i32 %reass.sub, 32766
  %i.ap = sitofp nsz i32 %i.ao to float
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.c, float %i.ak)
  %i.ar = fptoui float %i.aq to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1692
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep50 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep51 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep50
  %bound1 = icmp ult ptr %0, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound053 = icmp ult ptr %4, %scevgep
  %bound154 = icmp ult ptr %2, %scevgep51
  %found.conflict55 = and i1 %bound053, %bound154
  %stride.check56 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict55, %stride.check56
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.ar, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.as, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.aq, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1704 ; 3 uses
  %i.s = uitofp <8 x i16> %wide.load to <8 x float>
  %i.t = uitofp <8 x i16> %wide.load to <8 x double>
  %i.u = fmul nnan nsz <8 x double> %i.t, splat (double f0x400921FB54442D18)
  %i.v = fdiv nsz <8 x double> %i.u, splat (double 1.638300e+04)
  %i.w = fptrunc nsz <8 x double> %i.v to <8 x float>
  %i.x = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.w)
  %i.y = fsub nsz <8 x float> splat (float 2.000000e+00), %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load57 = load <8 x i16>, ptr %i.z, align 2, !tbaa !63, !alias.scope !1705
  %i.aa = uitofp <8 x i16> %wide.load57 to <8 x double>
  %i.ab = fmul nnan nsz <8 x double> %i.aa, splat (double f0x400921FB54442D18)
  %i.ac = fdiv nsz <8 x double> %i.ab, splat (double 1.638300e+04)
  %i.ad = fptrunc nsz <8 x double> %i.ac to <8 x float>
  %i.ae = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.ad)
  %i.af = fsub nsz <8 x float> %i.y, %i.ae
  %i.ag = fmul nsz <8 x float> %i.af, splat (float 1.638300e+04)
  %i.ah = fmul nsz <8 x float> %i.ag, splat (float 2.500000e-01)
  %i.ai = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.ah)
  %i.aj = zext <8 x i16> %wide.load to <8 x i64>
  %i.ak = sub nsw <8 x i64> %i.ai, %i.aj
  %i.al = sitofp nsz <8 x i64> %i.ak to <8 x float>
  %i.am = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.al, <8 x float> %broadcast.splat, <8 x float> %i.s)
  %i.an = fptoui <8 x float> %i.am to <8 x i16>
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !63, !alias.scope !1706, !noalias !1707
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1701

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aq = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.ar = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.as = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1702

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !63 ; 3 uses
  %i.av = uitofp i16 %i.au to float
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !63
  %i.ay = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %i.az = insertelement <2 x i16> %i.ay, i16 %i.ax, i64 1
  %i.ba = uitofp <2 x i16> %i.az to <2 x double>
  %i.bb = fmul nnan nsz <2 x double> %i.ba, splat (double f0x400921FB54442D18)
  %i.bc = fdiv nsz <2 x double> %i.bb, splat (double 1.638300e+04)
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = tail call nsz float @llvm.cos.f32(float %i.be)
  %i.bg = fsub nsz float 2.000000e+00, %i.bf
  %i.bh = extractelement <2 x float> %i.bd, i64 1
  %i.bi = tail call nsz float @llvm.cos.f32(float %i.bh)
  %i.bj = fsub nsz float %i.bg, %i.bi
  %i.bk = fmul nsz float %i.bj, 1.638300e+04
  %i.bl = fmul nsz float %i.bk, 2.500000e-01
  %i.bm = tail call i64 @llvm.lrint.i64.f32(float %i.bl)
  %i.bn = zext i16 %i.au to i64
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = sitofp nsz i64 %i.bo to float
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.c, float %i.av)
  %i.br = fptoui float %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1703
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1708

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 4 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 16383
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 16383
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 32766, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 8192
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 16383
  %i.x = select i1 %i.u, i32 %i.t, i32 %i.w
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.x, i32 16383)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1709
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep55 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep56 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep55
  %bound1 = icmp ult ptr %0, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound058 = icmp ult ptr %4, %scevgep
  %bound159 = icmp ult ptr %2, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  %stride.check61 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict60, %stride.check61
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1717 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load62 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !1718
  %i.v = zext <8 x i16> %wide.load62 to <8 x i32>
  %i.w = add nuw nsw <8 x i32> %i.v, %i.s
  %i.x = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 65535))
  %i.y = sub nsw <8 x i32> %i.x, %i.s
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !1719, !noalias !1720
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1714

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !1715

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, %i.aj
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 65535)
  %i.ap = sub nsw i32 %spec.select, %i.aj
  %i.aq = sitofp nsz i32 %i.ap to float
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.c, float %i.ak)
  %i.as = fptoui float %i.ar to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.as, ptr %i.at, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1716
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
end_hunk_5
begin_hunk_6_@blend_stain_16bit:bb.a
  %bound0 = icmp ult ptr %4, %scevgep51
  %bound1 = icmp ult ptr %0, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound054 = icmp ult ptr %4, %scevgep
  %bound155 = icmp ult ptr %2, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02735 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02834 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02933 = phi ptr [ %i.ae, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1958 ; 2 uses
  %i.s = zext <8 x i16> %wide.load to <8 x i32>
  %i.t = uitofp <8 x i16> %wide.load to <8 x float>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %index
  %wide.load58 = load <8 x i16>, ptr %i.u, align 2, !tbaa !63, !alias.scope !1959
  %i.v = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.w = mul nsw <8 x i32> %i.s, splat (i32 -2)
  %i.x = sub nsw <8 x i32> %i.w, %i.v
  %i.y = add nsw <8 x i32> %i.x, splat (i32 131070)
  %i.z = sitofp nsz <8 x i32> %i.y to <8 x float>
  %i.aa = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.z, <8 x float> %broadcast.splat, <8 x float> %i.t)
  %i.ab = fptoui <8 x float> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !63, !alias.scope !1960, !noalias !1961
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1955

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge37.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ae = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.af = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ag = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !1956

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = uitofp i16 %i.ai to float
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !63
  %i.an = zext i16 %i.am to i32
  %reass.add.neg = mul nsw i32 %i.aj, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.an
  %i.ao = add nsw i32 %reass.sub, 131070
  %i.ap = sitofp nsz i32 %i.ao to float
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.c, float %i.ak)
  %i.ar = fptoui float %i.aq to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1957
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep50 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep51 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep50
  %bound1 = icmp ult ptr %0, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound053 = icmp ult ptr %4, %scevgep
  %bound154 = icmp ult ptr %2, %scevgep51
  %found.conflict55 = and i1 %bound053, %bound154
  %stride.check56 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict55, %stride.check56
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.ar, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.as, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.aq, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !63, !alias.scope !1969 ; 3 uses
  %i.s = uitofp <8 x i16> %wide.load to <8 x float>
  %i.t = uitofp <8 x i16> %wide.load to <8 x double>
  %i.u = fmul nnan nsz <8 x double> %i.t, splat (double f0x400921FB54442D18)
  %i.v = fdiv nsz <8 x double> %i.u, splat (double 6.553500e+04)
  %i.w = fptrunc nsz <8 x double> %i.v to <8 x float>
  %i.x = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.w)
  %i.y = fsub nsz <8 x float> splat (float 2.000000e+00), %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load57 = load <8 x i16>, ptr %i.z, align 2, !tbaa !63, !alias.scope !1970
  %i.aa = uitofp <8 x i16> %wide.load57 to <8 x double>
  %i.ab = fmul nnan nsz <8 x double> %i.aa, splat (double f0x400921FB54442D18)
  %i.ac = fdiv nsz <8 x double> %i.ab, splat (double 6.553500e+04)
  %i.ad = fptrunc nsz <8 x double> %i.ac to <8 x float>
  %i.ae = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.ad)
  %i.af = fsub nsz <8 x float> %i.y, %i.ae
  %i.ag = fmul nsz <8 x float> %i.af, splat (float 6.553500e+04)
  %i.ah = fmul nsz <8 x float> %i.ag, splat (float 2.500000e-01)
  %i.ai = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.ah)
  %i.aj = zext <8 x i16> %wide.load to <8 x i64>
  %i.ak = sub nsw <8 x i64> %i.ai, %i.aj
  %i.al = sitofp nsz <8 x i64> %i.ak to <8 x float>
  %i.am = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.al, <8 x float> %broadcast.splat, <8 x float> %i.s)
  %i.an = fptoui <8 x float> %i.am to <8 x i16>
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !63, !alias.scope !1971, !noalias !1972
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1966

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aq = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.ar = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.as = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1967

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !63 ; 3 uses
  %i.av = uitofp i16 %i.au to float
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !63
  %i.ay = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %i.az = insertelement <2 x i16> %i.ay, i16 %i.ax, i64 1
  %i.ba = uitofp <2 x i16> %i.az to <2 x double>
  %i.bb = fmul nnan nsz <2 x double> %i.ba, splat (double f0x400921FB54442D18)
  %i.bc = fdiv nsz <2 x double> %i.bb, splat (double 6.553500e+04)
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = tail call nsz float @llvm.cos.f32(float %i.be)
  %i.bg = fsub nsz float 2.000000e+00, %i.bf
  %i.bh = extractelement <2 x float> %i.bd, i64 1
  %i.bi = tail call nsz float @llvm.cos.f32(float %i.bh)
  %i.bj = fsub nsz float %i.bg, %i.bi
  %i.bk = fmul nsz float %i.bj, 6.553500e+04
  %i.bl = fmul nsz float %i.bk, 2.500000e-01
  %i.bm = tail call i64 @llvm.lrint.i64.f32(float %i.bl)
  %i.bn = zext i16 %i.au to i64
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = sitofp nsz i64 %i.bo to float
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.c, float %i.av)
  %i.br = fptoui float %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1968
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1973

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 4 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, -1
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 65535
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nuw nsw i32 131070, %i.r
  %i.t = udiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, -32768
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 65535
  %i.x = select i1 %i.u, i32 %i.t, i32 %i.w
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.x, i32 65535)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1974
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_32bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 4 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl i64 %6, 2                            ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep55 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep56 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep55
  %bound1 = icmp ult ptr %0, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound058 = icmp ult ptr %4, %scevgep
  %bound159 = icmp ult ptr %2, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  %stride.check61 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict60, %stride.check61
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %6, %n.vec
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.au, %._crit_edge ], [ %0, %.preheader.preheader ] ; 5 uses
  %.03238 = phi ptr [ %i.av, %._crit_edge ], [ %2, %.preheader.preheader ] ; 5 uses
  %.03337 = phi ptr [ %i.at, %._crit_edge ], [ %4, %.preheader.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.03139, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x float>, ptr %i.r, align 4, !tbaa !61, !alias.scope !1982 ; 3 uses
  %wide.load62 = load <4 x float>, ptr %i.s, align 4, !tbaa !61, !alias.scope !1982 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.03238, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load63 = load <4 x float>, ptr %i.t, align 4, !tbaa !61, !alias.scope !1983
  %wide.load64 = load <4 x float>, ptr %i.u, align 4, !tbaa !61, !alias.scope !1983
  %i.v = fadd nsz <4 x float> %wide.load, %wide.load63 ; 2 uses
  %i.w = fadd nsz <4 x float> %wide.load62, %wide.load64 ; 2 uses
  %i.x = fcmp nsz olt <4 x float> %i.v, splat (float 1.000000e+00)
  %i.y = fcmp nsz olt <4 x float> %i.w, splat (float 1.000000e+00)
  %i.z = select nsz <4 x i1> %i.x, <4 x float> %i.v, <4 x float> splat (float 1.000000e+00)
  %i.aa = select nsz <4 x i1> %i.y, <4 x float> %i.w, <4 x float> splat (float 1.000000e+00)
  %i.ab = fsub nsz <4 x float> %i.z, %wide.load
  %i.ac = fsub nsz <4 x float> %i.aa, %wide.load62
  %i.ad = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ae = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %broadcast.splat, <4 x float> %wide.load62)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.03337, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x float> %i.ad, ptr %i.af, align 4, !tbaa !61, !alias.scope !1984, !noalias !1985
  store <4 x float> %i.ae, ptr %i.ag, align 4, !tbaa !61, !alias.scope !1984, !noalias !1985
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1979

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.03139, i64 %indvars.iv.ph
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !61 ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.03238, i64 %indvars.iv.ph
  %i.al = load float, ptr %i.ak, align 4, !tbaa !61
  %i.am = fadd nsz float %i.aj, %i.al             ; 2 uses
  %i.an = fcmp nsz olt float %i.am, 1.000000e+00
  %i.ao = select nsz i1 %i.an, float %i.am, float 1.000000e+00
  %i.ap = fsub nsz float %i.ao, %i.aj
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.c, float %i.aj)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.03337, i64 %indvars.iv.ph
  store float %i.aq, ptr %i.ar, align 4, !tbaa !61
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp eq i64 %6, %.neg
  br i1 %i.as, label %._crit_edge, label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.at = getelementptr inbounds i8, ptr %.03337, i64 %5
end_hunk_6
begin_hunk_7_@blend_stain_32bit:bb.a
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.ar, %._crit_edge ], [ %0, %.preheader.preheader ] ; 5 uses
  %.02833 = phi ptr [ %i.as, %._crit_edge ], [ %2, %.preheader.preheader ] ; 5 uses
  %.02932 = phi ptr [ %i.aq, %._crit_edge ], [ %4, %.preheader.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.02734, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x float>, ptr %i.r, align 4, !tbaa !61, !alias.scope !2335 ; 3 uses
  %wide.load57 = load <4 x float>, ptr %i.s, align 4, !tbaa !61, !alias.scope !2335 ; 3 uses
  %i.t = fsub nsz <4 x float> splat (float 2.000000e+00), %wide.load
  %i.u = fsub nsz <4 x float> splat (float 2.000000e+00), %wide.load57
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.02833, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load58 = load <4 x float>, ptr %i.v, align 4, !tbaa !61, !alias.scope !2336
  %wide.load59 = load <4 x float>, ptr %i.w, align 4, !tbaa !61, !alias.scope !2336
  %i.x = fsub nsz <4 x float> %i.t, %wide.load58
  %i.y = fsub nsz <4 x float> %i.u, %wide.load59
  %i.z = fsub nsz <4 x float> %i.x, %wide.load
  %i.aa = fsub nsz <4 x float> %i.y, %wide.load57
  %i.ab = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ac = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %broadcast.splat, <4 x float> %wide.load57)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.02932, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x float> %i.ab, ptr %i.ad, align 4, !tbaa !61, !alias.scope !2337, !noalias !2338
  store <4 x float> %i.ac, ptr %i.ae, align 4, !tbaa !61, !alias.scope !2337, !noalias !2338
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2332

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.02734, i64 %indvars.iv.ph
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !61 ; 3 uses
  %i.ai = fsub nsz float 2.000000e+00, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.02833, i64 %indvars.iv.ph
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !61
  %i.al = fsub nsz float %i.ai, %i.ak
  %i.am = fsub nsz float %i.al, %i.ah
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.c, float %i.ah)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.02932, i64 %indvars.iv.ph
  store float %i.an, ptr %i.ao, align 4, !tbaa !61
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ap = icmp eq i64 %6, %.neg
  br i1 %i.ap, label %._crit_edge, label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aq = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.ar = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.as = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !2333

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.02734, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !61 ; 3 uses
  %i.av = fsub nsz float 2.000000e+00, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.02833, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !61
  %i.ay = fsub nsz float %i.av, %i.ax
  %i.az = fsub nsz float %i.ay, %i.au
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.c, float %i.au)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.02932, i64 %indvars.iv
  store float %i.ba, ptr %i.bb, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.02734, i64 %indvars.iv.next
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !61 ; 3 uses
  %i.be = fsub nsz float 2.000000e+00, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.02833, i64 %indvars.iv.next
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !61
  %i.bh = fsub nsz float %i.be, %i.bg
  %i.bi = fsub nsz float %i.bh, %i.bd
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.bi, float %i.c, float %i.bd)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.02932, i64 %indvars.iv.next
  store float %i.bj, ptr %i.bk, align 4, !tbaa !61
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %6
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !2334
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_32bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %3, %i.f
  %i.h = shl i64 %6, 2                            ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep50 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %5, %i.f
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %scevgep51 = getelementptr i8, ptr %i.m, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep50
  %bound1 = icmp ult ptr %0, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound053 = icmp ult ptr %4, %scevgep
  %bound154 = icmp ult ptr %2, %scevgep51
  %found.conflict55 = and i1 %bound053, %bound154
  %stride.check56 = icmp slt i64 %3, 0
  %i.q = or i1 %found.conflict55, %stride.check56
  %conflict.rdx = or i1 %i.p, %i.q
  %n.vec = and i64 %6, 9223372036854775804        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.aj, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.ak, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.ai, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.02734, i64 %index
  %wide.load = load <4 x float>, ptr %i.r, align 4, !tbaa !61, !alias.scope !2346 ; 3 uses
  %i.s = fpext nsz <4 x float> %wide.load to <4 x double>
  %i.t = fmul nsz <4 x double> %i.s, splat (double f0x400921FB54442D18)
  %i.u = fptrunc nsz <4 x double> %i.t to <4 x float>
  %i.v = tail call nsz <4 x float> @llvm.cos.v4f32(<4 x float> %i.u)
  %i.w = fsub nsz <4 x float> splat (float 2.000000e+00), %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.02833, i64 %index
  %wide.load57 = load <4 x float>, ptr %i.x, align 4, !tbaa !61, !alias.scope !2347
  %i.y = fpext nsz <4 x float> %wide.load57 to <4 x double>
  %i.z = fmul nsz <4 x double> %i.y, splat (double f0x400921FB54442D18)
  %i.aa = fptrunc nsz <4 x double> %i.z to <4 x float>
  %i.ab = tail call nsz <4 x float> @llvm.cos.v4f32(<4 x float> %i.aa)
  %i.ac = fsub nsz <4 x float> %i.w, %i.ab
  %i.ad = fneg nsz <4 x float> %wide.load
  %i.ae = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> splat (float 2.500000e-01), <4 x float> %i.ad)
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.02932, i64 %index
  store <4 x float> %i.af, ptr %i.ag, align 4, !tbaa !61, !alias.scope !2348, !noalias !2349
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2343

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ai = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.aj = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.ak = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !2344

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.02734, i64 %indvars.iv
  %i.am = load float, ptr %i.al, align 4, !tbaa !61 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.02833, i64 %indvars.iv
  %i.ao = load float, ptr %i.an, align 4, !tbaa !61
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ao, i64 1
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = fmul nsz <2 x double> %i.ar, splat (double f0x400921FB54442D18)
  %i.at = fptrunc <2 x double> %i.as to <2 x float> ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  %i.av = tail call nsz float @llvm.cos.f32(float %i.au)
  %i.aw = fsub nsz float 2.000000e+00, %i.av
  %i.ax = extractelement <2 x float> %i.at, i64 1
  %i.ay = tail call nsz float @llvm.cos.f32(float %i.ax)
  %i.az = fsub nsz float %i.aw, %i.ay
  %i.ba = fneg nsz float %i.am
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.az, float 2.500000e-01, float %i.ba)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.c, float %i.am)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.02932, i64 %indvars.iv
  store float %i.bc, ptr %i.bd, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !2345
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_32bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.e
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !2350

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load float, ptr %i.i, align 4, !tbaa !61 ; 7 uses
  %i.k = fcmp nsz oeq float %i.j, 1.000000e+00
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.05057, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !61 ; 2 uses
  %i.n = tail call nsz float @llvm.fmuladd.f32(float %i.j, float -2.000000e+00, float 2.000000e+00)
  %i.o = fdiv nsz float %i.m, %i.n
  %i.p = fcmp nsz ogt float %i.j, 5.000000e-01
  %i.q = uitofp i1 %i.p to float
  %i.r = fmul nsz float %i.j, 2.000000e+00
  %i.s = fmul nsz float %i.r, %i.m
  %i.t = fcmp nsz ole float %i.j, 5.000000e-01
  %i.u = uitofp i1 %i.t to float
  %i.v = fmul nsz float %i.s, %i.u
  %i.w = tail call nsz float @llvm.fmuladd.f32(float %i.o, float %i.q, float %i.v) ; 2 uses
  %i.x = fcmp nsz olt float %i.w, 1.000000e+00
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.y = phi nsz float [ 1.000000e+00, %bb.b ], [ %i.w, %bb.d ], [ 1.000000e+00, %bb.c ]
  %i.z = fsub nsz float %i.y, %i.j
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.z, float %i.c, float %i.j)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.05156, i64 %indvars.iv
  store float %i.aa, ptr %i.ab, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2351
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare double @av_expr_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @av_default_item_name(ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @blend_child_next(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readnone captures(address_is_null) %1) #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = select i1 %.not, ptr %i.a, ptr null
  ret ptr %i.b
}

declare ptr @ff_framesync_child_class_iterate(ptr noundef) #4

declare void @ff_framesync_preinit(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal i32 @blend_frame_for_dualinput(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2352 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.e = call i32 @ff_framesync_dualinput_get(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.l = call i32 @ff_filter_frame(ptr noundef %i.j, ptr noundef %i.k) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.n = call fastcc ptr @blend_frame(ptr noundef %i.d, ptr noundef %i.m, ptr noundef %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = call i32 @ff_filter_frame(ptr noundef %i.q, ptr noundef %i.n) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ %i.r, %bb.d ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare i32 @ff_framesync_dualinput_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @blend_frame(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.ThreadData, align 8         ; 12 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46
  %i.o = tail call ptr @ff_get_video_buffer(ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.n) #13 ; 6 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !67
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.o, ptr noundef %1) #13
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !50
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.ai = trunc i64 %indvars.iv to i32
  %i.aj = add i32 %i.ai, -1
  %or.cond = icmp ult i32 %i.aj, 2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.u, align 8, !tbaa !2354
  %i.al = load i32, ptr %i.v, align 4, !tbaa !2355
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = phi i32 [ %i.ak, %bb.d ], [ 0, %bb.c ]
  %i.an = phi i32 [ %i.al, %bb.d ], [ 0, %bb.c ]
  %i.ao = load i32, ptr %i.ag, align 8, !tbaa !2356
  %i.ap = sub nsw i32 0, %i.ao
  %i.aq = ashr i32 %i.ap, %i.am
  %i.ar = sub nsw i32 0, %i.aq
  %i.as = load i32, ptr %i.ah, align 4, !tbaa !2357
  %i.at = sub nsw i32 0, %i.as
  %i.au = ashr i32 %i.at, %i.an
  %i.av = sub nsw i32 0, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !75
  store ptr %2, ptr %i.x, align 8, !tbaa !76
  store ptr %i.o, ptr %i.y, align 8, !tbaa !77
  store ptr %i.g, ptr %i.z, align 8, !tbaa !78
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ax, ptr %i.aa, align 8, !tbaa !79
  store i32 %i.ar, ptr %i.ab, align 4, !tbaa !80
  store i32 %i.av, ptr %i.ac, align 8, !tbaa !81
  store i32 0, ptr %i.ad, align 4
  store ptr %i.aw, ptr %i.ae, align 8, !tbaa !82
  %i.ay = load i32, ptr %i.af, align 8, !tbaa !29
  %. = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ay)
  %i.az = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef nonnull @filter_slice, ptr noundef nonnull %3, ptr noundef null, i32 noundef %.) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !50
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %bb.c, label %._crit_edge, !llvm.loop !2353

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !28
  %.not44 = icmp eq i32 %i.be, 0
  br i1 %.not44, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.sink = phi ptr [ %i.b, %bb.b ], [ %i.a, %._crit_edge ]
  %.040.in.ph = phi ptr [ %i.a, %bb.b ], [ %i.b, %._crit_edge ]
  call void @av_frame_free(ptr noundef nonnull %.sink) #13
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %._crit_edge, %bb.a
  %.040.in = phi ptr [ %i.b, %._crit_edge ], [ %i.a, %bb.a ], [ %.040.in.ph, %.sink.split ]
  %.040 = load ptr, ptr %.040.in, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret ptr %.040
}

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_slice(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca [12 x double], align 16           ; 7 uses
  %4 = alloca %struct.SliceParams, align 8        ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = mul nsw i64 %i.d, %i.e
  %i.g = sext i32 %3 to i64                       ; 2 uses
  %i.h = sdiv i64 %i.f, %i.g                      ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !79
  %i.m = sext i32 %i.l to i64                     ; 6 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2358
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2358
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77   ; 4 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.m
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2358
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.a, ptr %4, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.i, ptr %i.z, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !82 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.e
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ai = phi ptr [ %i.ah, %bb.b ], [ null, %bb.a ]
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !2360
  %i.al = sitofp nsz i64 %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.al, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !2361 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = sitofp nsz i64 %i.ao to double
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.as to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.as, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.at = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.au = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.av = fdiv nsz double %i.at, %i.au
  %i.aw = fmul nsz double %i.av, %i.aq
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ax = phi nsz double [ %i.aw, %bb.d ], [ +qnan, %bb.c ]
  %i.ay = add nsw i32 %2, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.d, %i.az
  %i.bb = sdiv i64 %i.ba, %i.g
  %i.bc = sub nsw i64 %i.bb, %i.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.ax, ptr %i.bd, align 16, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bj = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %i.bk = insertelement <2 x i32> %i.bj, i32 %i.c, i64 1
  %i.bl = sitofp <2 x i32> %i.bk to <2 x double>  ; 2 uses
  store <2 x double> %i.bl, ptr %i.bg, align 16, !tbaa !59
  %i.bm = load <2 x i32>, ptr %i.bh, align 8, !tbaa !47
  %i.bn = sitofp <2 x i32> %i.bm to <2 x double>
  %i.bo = fdiv nsz <2 x double> %i.bl, %i.bn
  store <2 x double> %i.bo, ptr %i.bi, align 16, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.m
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !47 ; 2 uses
  %i.bu = mul nsw i32 %i.bt, %i.i
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.o, i64 %i.bv
  %i.bx = sext i32 %i.bt to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.m
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !47 ; 2 uses
  %i.cb = mul nsw i32 %i.ca, %i.i
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.s, i64 %i.cc
  %i.ce = sext i32 %i.ca to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.m
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !47 ; 2 uses
  %i.ci = mul nsw i32 %i.ch, %i.i
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.w, i64 %i.cj
  %i.cl = sext i32 %i.ch to i64
  %i.cm = sext i32 %i.bf to i64
  %sext = shl i64 %i.bc, 32
  %i.cn = ashr exact i64 %sext, 32
  call void %i.bq(ptr noundef %i.bw, i64 noundef %i.bx, ptr noundef %i.cd, i64 noundef %i.ce, ptr noundef %i.ck, i64 noundef %i.cl, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull %i.ad, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 0
}

declare void @ff_framesync_uninit(ptr noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_framesync_activate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @tblend_filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2362 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 320 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2363 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2364
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @av_frame_clone(ptr noundef %1) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call fastcc ptr @blend_frame(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  tail call void @av_frame_free(ptr noundef nonnull %i.h) #13
  store ptr %1, ptr %i.h, align 8, !tbaa !2363
  %i.n = tail call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef %.0) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store ptr %1, ptr %i.h, align 8, !tbaa !2363
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.016 = phi i32 [ %i.n, %bb.e ], [ 0, %bb.f ]
  ret i32 %.016
}

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.masked.udiv.v16i16(<16 x i16>, <16 x i16>, <16 x i1>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i16> @llvm.masked.udiv.v4i16(<4 x i16>, <4 x i16>, <4 x i1>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.sqrt.v16f32(<16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.cos.v16f32(<16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #7

end_hunk_7
