Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_vif?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@config_input_ref:bb.a
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !50
  %.not52 = icmp eq ptr %i.eg, null
  br i1 %.not52, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = load i32, ptr %i.ae, align 8, !tbaa !34
  %i.ej = sext i32 %i.ei to i64
  %i.ek = tail call noalias ptr @av_calloc(i64 noundef %i.ej, i64 noundef 8) #12 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !35
  %.not53 = icmp eq ptr %i.ek, null
  br i1 %.not53, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.em = load i32, ptr %i.ae, align 8, !tbaa !34
  %.not5560 = icmp sgt i32 %i.em, 0
  br i1 %.not5560, label %.lr.ph, label %.loopexit

bb.r:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = load i32, ptr %i.ae, align 8, !tbaa !34
  %i.eo = sext i32 %i.en to i64
  %.not55 = icmp slt i64 %indvars.iv.next, %i.eo
  br i1 %.not55, label %.lr.ph, label %.loopexit, !llvm.loop !67

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.preheader ] ; 2 uses
  %i.ep = load i32, ptr %i.z, align 8, !tbaa !46
  %i.eq = sext i32 %i.ep to i64
  %i.er = tail call noalias ptr @av_calloc(i64 noundef %i.eq, i64 noundef 4) #12 ; 2 uses
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !35
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv
  store ptr %i.er, ptr %i.et, align 8, !tbaa !48
  %.not54 = icmp eq ptr %i.er, null
  br i1 %.not54, label %.loopexit, label %bb.r

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %.preheader56, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader, %bb.q, %bb.p, %.critedge, %bb.c
  %.2 = phi i32 [ -22, %bb.c ], [ -12, %bb.q ], [ 0, %.preheader ], [ -12, %bb.p ], [ -12, %.critedge ], [ -12, %bb.d ], [ -12, %.preheader56 ], [ -12, %bb.o ], [ -12, %bb.n ], [ -12, %bb.m ], [ -12, %bb.l ], [ -12, %bb.k ], [ -12, %bb.j ], [ -12, %bb.i ], [ -12, %bb.h ], [ -12, %bb.g ], [ -12, %bb.f ], [ -12, %bb.e ], [ -12, %.lr.ph ], [ 0, %bb.r ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @config_output(ptr nofree noundef captures(none) initializes((40, 56), (96, 104), (280, 288)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !51
  store <2 x i32> %i.i, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51
  store i64 %i.l, ptr %i.j, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  store i64 %i.o, ptr %i.m, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.r = load i64, ptr %i.q, align 8, !tbaa !51
  store i64 %i.r, ptr %i.p, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.t = tail call i32 @ff_framesync_init(ptr noundef nonnull %i.s, ptr noundef %i.a, i32 noundef 2) #12 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.k, align 8, !tbaa !51
  store i64 %i.y, ptr %i.x, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  store i32 2, ptr %i.ag, align 4, !tbaa !75
  store i32 0, ptr %i.w, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  store i32 1, ptr %i.ai, align 4, !tbaa !75
  store i32 0, ptr %i.z, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  store i32 0, ptr %i.aj, align 4, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.c, ptr %i.ak, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @process_frame, ptr %i.al, align 8, !tbaa !79
  %i.am = tail call i32 @ff_framesync_configure(ptr noundef nonnull %i.s) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.am, %bb.b ], [ %i.t, %bb.a ]
  ret i32 %.0
}

declare i32 @ff_framesync_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @process_frame(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 4 uses
  %i.b = alloca [257 x i8], align 16              ; 4 uses
  %i.c = alloca [257 x i8], align 16              ; 4 uses
  %i.d = alloca [257 x i8], align 16              ; 4 uses
  %1 = alloca %struct.ThreadData, align 8         ; 18 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr null, ptr %i.g, align 8, !tbaa !113
  %i.o = call i32 @ff_framesync_dualinput_get(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #12 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !114
  %i.s = icmp eq i32 %i.r, 0
  %i.t = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.u = icmp ne ptr %i.t, null
  %or.cond = select i1 %i.s, i1 %i.u, i1 false
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !113  ; 6 uses
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !116 ; 2 uses
  %i.ac = add nsw i32 %i.ab, -8
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = sitofp nsz i32 %i.ad to float
  %i.af = fdiv nsz float 1.000000e+00, %i.ae      ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  store float %i.af, ptr %i.ag, align 4, !tbaa !117
  %i.ah = icmp slt i32 %i.ab, 9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !118 ; 5 uses
  %.val54.i = load ptr, ptr %i.v, align 8, !tbaa !118 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !46 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47 ; 5 uses
  %i.am = icmp sgt i32 %i.al, 0                   ; 2 uses
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.am, label %.preheader.lr.ph.i.i, label %offset_8bit.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.v, i64 64
  %.val55.i = load i32, ptr %i.an, align 8, !tbaa !51 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.t, i64 64
  %.val53.i = load i32, ptr %i.ao, align 8, !tbaa !51 ; 2 uses
  %i.ap = icmp sgt i32 %i.aj, 0
  %i.aq = sext i32 %.val53.i to i64               ; 2 uses
  %i.ar = sext i32 %i.aj to i64                   ; 3 uses
  %i.as = sext i32 %.val55.i to i64               ; 2 uses
  br i1 %i.ap, label %.preheader.preheader.i.i, label %offset_8bit.exit.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.aj to i64 ; 8 uses
  %i.ax = add nsw i32 %i.al, -1
  %i.ay = zext i32 %i.ax to i64                   ; 3 uses
  %i.az = mul nsw i64 %i.as, %i.ay
  %2 = getelementptr i8, ptr %.val54.i, i64 %i.az
  %scevgep = getelementptr i8, ptr %2, i64 %wide.trip.count.i.i ; 2 uses
  %i.ba = mul nsw i64 %i.aq, %i.ay
  %i.bb = getelementptr i8, ptr %.val.i, i64 %i.ba
  %scevgep65 = getelementptr i8, ptr %i.bb, i64 %wide.trip.count.i.i ; 2 uses
  %i.bc = mul nuw nsw i64 %i.ar, %i.ay
  %3 = add nuw i64 %i.bc, %wide.trip.count.i.i
  %4 = shl i64 %3, 2                              ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.aw, i64 %4 ; 3 uses
  %scevgep67 = getelementptr i8, ptr %i.au, i64 %4 ; 3 uses
  %min.iters.check69 = icmp ult i32 %i.aj, 8
  %bound0 = icmp ult ptr %i.au, %scevgep66
  %bound1 = icmp ult ptr %i.aw, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  %bound071 = icmp ult ptr %i.au, %scevgep65
  %bound172 = icmp ult ptr %.val.i, %scevgep67
  %found.conflict73 = and i1 %bound071, %bound172
  %stride.check = icmp slt i32 %.val53.i, 0
  %i.bd = or i1 %found.conflict73, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.bd
  %bound074 = icmp ult ptr %i.au, %scevgep
  %bound175 = icmp ult ptr %.val54.i, %scevgep67
  %found.conflict76 = and i1 %bound074, %bound175
  %stride.check77 = icmp slt i32 %.val55.i, 0
  %i.be = or i1 %found.conflict76, %stride.check77
  %conflict.rdx78 = or i1 %conflict.rdx, %i.be
  %bound079 = icmp ult ptr %i.aw, %scevgep65
  %bound180 = icmp ult ptr %.val.i, %scevgep66
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx78, %found.conflict81
  %bound083 = icmp ult ptr %i.aw, %scevgep
  %bound184 = icmp ult ptr %.val54.i, %scevgep66
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %conflict.rdx82, %found.conflict85
  %n.vec88 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert89 = insertelement <4 x float> poison, float %i.af, i64 0
  %broadcast.splat90 = shufflevector <4 x float> %broadcast.splatinsert89, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n97 = icmp eq i64 %n.vec88, %wide.trip.count.i.i
  %xtraiter264 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %i.bf = add nsw i64 %wide.trip.count.i.i, -1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.03210.i.i = phi i32 [ %i.ce, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ]
  %.0339.i.i = phi ptr [ %i.cd, %._crit_edge.i.i ], [ %i.aw, %.preheader.preheader.i.i ] ; 5 uses
  %.0348.i.i = phi ptr [ %i.cb, %._crit_edge.i.i ], [ %i.au, %.preheader.preheader.i.i ] ; 5 uses
  %.0357.i.i = phi ptr [ %i.cc, %._crit_edge.i.i ], [ %.val54.i, %.preheader.preheader.i.i ] ; 5 uses
  %.0366.i.i = phi ptr [ %i.ca, %._crit_edge.i.i ], [ %.val.i, %.preheader.preheader.i.i ] ; 5 uses
  %brmerge = select i1 %min.iters.check69, i1 true, i1 %conflict.rdx86
  br i1 %brmerge, label %scalar.ph68.preheader, label %vector.body91

vector.body91:                                    ; preds = %.preheader.i.i, %vector.body91
  %index92 = phi i64 [ %index.next95, %vector.body91 ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 %index92
  %wide.load93 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !119, !alias.scope !120
  %i.bh = uitofp <4 x i8> %wide.load93 to <4 x float>
  %i.bi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %broadcast.splat90, <4 x float> splat (float -1.280000e+02))
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.0348.i.i, i64 %index92
  store <4 x float> %i.bi, ptr %i.bj, align 4, !tbaa !53, !alias.scope !121, !noalias !122
  %i.bk = getelementptr inbounds nuw i8, ptr %.0357.i.i, i64 %index92
  %wide.load94 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !119, !alias.scope !123
  %i.bl = uitofp <4 x i8> %wide.load94 to <4 x float>
  %i.bm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %broadcast.splat90, <4 x float> splat (float -1.280000e+02))
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0339.i.i, i64 %index92
  store <4 x float> %i.bm, ptr %i.bn, align 4, !tbaa !53, !alias.scope !124, !noalias !125
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bo, label %middle.block96, label %vector.body91, !llvm.loop !85

middle.block96:                                   ; preds = %vector.body91
  br i1 %cmp.n97, label %._crit_edge.i.i, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %.preheader.i.i, %middle.block96
  %indvars.iv.i.i.ph = phi i64 [ %n.vec88, %middle.block96 ], [ 0, %.preheader.i.i ] ; 7 uses
  br i1 %lcmp.mod265.not, label %scalar.ph68.prol.loopexit, label %scalar.ph68.prol

scalar.ph68.prol:                                 ; preds = %scalar.ph68.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 %indvars.iv.i.i.ph
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !119
  %i.br = uitofp i8 %i.bq to float
  %i.bs = call nsz float @llvm.fmuladd.f32(float %i.br, float %i.af, float -1.280000e+02)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0348.i.i, i64 %indvars.iv.i.i.ph
  store float %i.bs, ptr %i.bt, align 4, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %.0357.i.i, i64 %indvars.iv.i.i.ph
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !119
  %i.bw = uitofp i8 %i.bv to float
  %i.bx = call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.af, float -1.280000e+02)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0339.i.i, i64 %indvars.iv.i.i.ph
  store float %i.bx, ptr %i.by, align 4, !tbaa !53
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph68.prol.loopexit

scalar.ph68.prol.loopexit:                        ; preds = %scalar.ph68.prol, %scalar.ph68.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph68.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph68.prol ]
  %i.bz = icmp eq i64 %indvars.iv.i.i.ph, %i.bf
  br i1 %i.bz, label %._crit_edge.i.i, label %scalar.ph68

._crit_edge.i.i:                                  ; preds = %scalar.ph68.prol.loopexit, %scalar.ph68, %middle.block96
  %i.ca = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 %i.aq
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0348.i.i, i64 %i.ar
  %i.cc = getelementptr inbounds nuw i8, ptr %.0357.i.i, i64 %i.as
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0339.i.i, i64 %i.ar
  %i.ce = add nuw nsw i32 %.03210.i.i, 1          ; 2 uses
  %exitcond13.not.i.i = icmp eq i32 %i.ce, %i.al
  br i1 %exitcond13.not.i.i, label %offset_8bit.exit.i, label %.preheader.i.i, !llvm.loop !86

scalar.ph68:                                      ; preds = %scalar.ph68.prol.loopexit, %scalar.ph68
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph68 ], [ %indvars.iv.i.i.unr, %scalar.ph68.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 %indvars.iv.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !119
  %i.ch = uitofp i8 %i.cg to float
  %i.ci = call nsz float @llvm.fmuladd.f32(float %i.ch, float %i.af, float -1.280000e+02)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0348.i.i, i64 %indvars.iv.i.i
  store float %i.ci, ptr %i.cj, align 4, !tbaa !53
  %i.ck = getelementptr inbounds nuw i8, ptr %.0357.i.i, i64 %indvars.iv.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !119
  %i.cm = uitofp i8 %i.cl to float
  %i.cn = call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.af, float -1.280000e+02)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.0339.i.i, i64 %indvars.iv.i.i
  store float %i.cn, ptr %i.co, align 4, !tbaa !53
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 %indvars.iv.next.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !119
  %i.cr = uitofp i8 %i.cq to float
  %i.cs = call nsz float @llvm.fmuladd.f32(float %i.cr, float %i.af, float -1.280000e+02)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0348.i.i, i64 %indvars.iv.next.i.i
  store float %i.cs, ptr %i.ct, align 4, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %.0357.i.i, i64 %indvars.iv.next.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !119
  %i.cw = uitofp i8 %i.cv to float
  %i.cx = call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.af, float -1.280000e+02)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0339.i.i, i64 %indvars.iv.next.i.i
  store float %i.cx, ptr %i.cy, align 4, !tbaa !53
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %scalar.ph68, !llvm.loop !87

bb.e:                                             ; preds = %bb.c
  br i1 %i.am, label %.preheader.lr.ph.i60.i, label %offset_8bit.exit.i

.preheader.lr.ph.i60.i:                           ; preds = %bb.e
  %i.cz = getelementptr i8, ptr %i.v, i64 64
  %.val59.i = load i32, ptr %i.cz, align 8, !tbaa !51
  %i.da = getelementptr i8, ptr %i.t, i64 64
  %.val57.i = load i32, ptr %i.da, align 8, !tbaa !51
  %i.db = icmp sgt i32 %i.aj, 0
  %i.dc = sext i32 %.val57.i to i64
  %i.dd = lshr i64 %i.dc, 1
  %i.de = sext i32 %i.aj to i64                   ; 2 uses
  %i.df = sext i32 %.val59.i to i64
  %i.dg = lshr i64 %i.df, 1
  br i1 %i.db, label %.preheader.preheader.i61.i, label %offset_8bit.exit.i

.preheader.preheader.i61.i:                       ; preds = %.preheader.lr.ph.i60.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !49 ; 2 uses
  %i.dj = ptrtoaddr ptr %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !50 ; 2 uses
  %i.dm = ptrtoaddr ptr %i.dl to i64
  %wide.trip.count.i62.i = zext nneg i32 %i.aj to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.aj, 4
  %i.dn = sub i64 %i.dj, %i.dm
  %diff.check = icmp ugt i64 %i.dn, -16
  %or.cond259 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %wide.trip.count.i62.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.af, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i62.i
  %xtraiter = and i64 %wide.trip.count.i62.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.do = insertelement <2 x float> poison, float %i.af, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = add nsw i64 %wide.trip.count.i62.i, -1
  %i.dr = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x float> poison, float %i.af, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.i63.i

.preheader.i63.i:                                 ; preds = %._crit_edge.i72.i, %.preheader.preheader.i61.i
  %.03210.i64.i = phi i32 [ %i.ev, %._crit_edge.i72.i ], [ 0, %.preheader.preheader.i61.i ]
  %.0339.i65.i = phi ptr [ %i.eu, %._crit_edge.i72.i ], [ %i.dl, %.preheader.preheader.i61.i ] ; 5 uses
  %.0348.i66.i = phi ptr [ %i.es, %._crit_edge.i72.i ], [ %i.di, %.preheader.preheader.i61.i ] ; 5 uses
  %.0357.i67.i = phi ptr [ %i.et, %._crit_edge.i72.i ], [ %.val54.i, %.preheader.preheader.i61.i ] ; 5 uses
  %.0366.i68.i = phi ptr [ %i.er, %._crit_edge.i72.i ], [ %.val.i, %.preheader.preheader.i61.i ] ; 5 uses
  br i1 %or.cond259, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i63.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i63.i ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.0366.i68.i, i64 %index
  %wide.load = load <4 x i16>, ptr %i.dv, align 2, !tbaa !129
  %i.dw = uitofp <4 x i16> %wide.load to <4 x float>
  %i.dx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %broadcast.splat, <4 x float> splat (float -1.280000e+02))
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.0348.i66.i, i64 %index
  store <4 x float> %i.dx, ptr %i.dy, align 4, !tbaa !53
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.0357.i67.i, i64 %index
  %wide.load44 = load <4 x i16>, ptr %i.dz, align 2, !tbaa !129
  %i.ea = uitofp <4 x i16> %wide.load44 to <4 x float>
  %i.eb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %broadcast.splat, <4 x float> splat (float -1.280000e+02))
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0339.i65.i, i64 %index
  store <4 x float> %i.eb, ptr %i.ec, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i72.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i63.i, %middle.block
  %indvars.iv.i69.i.ph = phi i64 [ 0, %.preheader.i63.i ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.0366.i68.i, i64 %indvars.iv.i69.i.ph
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !129
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0348.i66.i, i64 %indvars.iv.i69.i.ph
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.0357.i67.i, i64 %indvars.iv.i69.i.ph
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !129
  %i.ej = insertelement <2 x i16> poison, i16 %i.ef, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = uitofp <2 x i16> %i.ek to <2 x float>
  %i.em = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dp, <2 x float> splat (float -1.280000e+02)) ; 2 uses
  %i.en = extractelement <2 x float> %i.em, i64 0
  store float %i.en, ptr %i.eg, align 4, !tbaa !53
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0339.i65.i, i64 %indvars.iv.i69.i.ph
  %i.ep = extractelement <2 x float> %i.em, i64 1
  store float %i.ep, ptr %i.eo, align 4, !tbaa !53
  %indvars.iv.next.i70.i.prol = or disjoint i64 %indvars.iv.i69.i.ph, 1
  br label %scalar.ph.prol.loopexit

end_hunk_0
