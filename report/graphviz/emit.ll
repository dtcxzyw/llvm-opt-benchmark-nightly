Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@node_in_layer:bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !103
  %i.i = load i32, ptr %i.a, align 4, !tbaa !158
  %i.j = tail call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.f, i32 noundef %i.h, i32 noundef %i.i, ptr noundef readonly %i.e)
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %strcmpload = load i8, ptr %i.e, align 1
  %i.k = icmp eq i8 %strcmpload, 0
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @agfstedge(ptr noundef %1, ptr noundef %2) #27
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @agfstedge(ptr noundef %1, ptr noundef %2) #27 ; 2 uses
  %.not24.not = icmp eq ptr %i.n, null
  br i1 %.not24.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.critedge
  %.025 = phi ptr [ %i.v, %.critedge ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr @E_layer, align 8, !tbaa !167
  %i.p = tail call ptr @late_string(ptr noundef nonnull %.025, ptr noundef %i.o, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %strcmpload23 = load i8, ptr %i.p, align 1
  %i.q = icmp eq i8 %strcmpload23, 0
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %0, align 8, !tbaa !70
  %i.s = load i32, ptr %i.g, align 8, !tbaa !103
  %i.t = load i32, ptr %i.a, align 4, !tbaa !158
  %i.u = tail call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull readonly %i.p)
  br i1 %i.u, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.f
  %i.v = tail call ptr @agnxtedge(ptr noundef %1, ptr noundef nonnull %.025, ptr noundef %2) #27 ; 2 uses
  %.not.not = icmp eq ptr %i.v, null
  br i1 %.not.not, label %.loopexit, label %.lr.ph, !llvm.loop !487

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %.critedge, %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %.lr.ph ], [ true, %bb.f ], [ false, %.critedge ]
  ret i1 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @selectedLayer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !105
  %i.c = tail call noalias ptr @strdup(ptr noundef readonly %3) #27 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %gv_strdup.exit.preheader

gv_strdup.exit.preheader:                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !205
  %i.j = call ptr @strtok_r(ptr noundef nonnull %i.c, ptr noundef %i.i, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not.not.not115.not = icmp eq ptr %i.j, null
  br i1 %.not.not.not115.not, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) #31
  %i.m = add i64 %i.l, 1
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.45, i64 noundef %i.m) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

.lr.ph:                                           ; preds = %gv_strdup.exit.preheader, %.backedge
  %i.o = phi ptr [ %i.bh, %.backedge ], [ %i.j, %gv_strdup.exit.preheader ]
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.q = call ptr @strtok_r(ptr noundef nonnull %i.o, ptr noundef %i.p, ptr noundef nonnull %i.b) #27 ; 8 uses
  %.not45 = icmp eq ptr %i.q, null
  br i1 %.not45, label %.backedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.s = call ptr @strtok_r(ptr noundef null, ptr noundef %i.r, ptr noundef nonnull %i.b) #27 ; 5 uses
  %.not46 = icmp eq ptr %i.s, null
  %i.t = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(4) @.str.63) #31
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %.not46, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.u, label %layer_index.exit, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.d, %.preheader14.i
  %.0.i.i = phi ptr [ %i.w, %.preheader14.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.v = load i8, ptr %.0.i.i, align 1, !tbaa !14 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.x = sext i8 %i.v to i32
  %i.y = add nsw i32 %i.x, -58
  %i.z = icmp ult i32 %i.y, -10
  br i1 %i.z, label %is_natural_number.exit.i, label %.preheader14.i, !llvm.loop !488

is_natural_number.exit.i:                         ; preds = %.preheader14.i
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %is_natural_number.exit.i
  %i.aa = call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.q, ptr noundef null, i32 noundef 10) #27, !inline_history !4
  %i.ab = trunc i64 %i.aa to i32
  br label %layer_index.exit

bb.f:                                             ; preds = %is_natural_number.exit.i
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !104 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %layer_index.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !157 ; 2 uses
  %.not1315.i = icmp slt i32 %i.ad, 1
  br i1 %.not1315.i, label %layer_index.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ae = add nuw i32 %i.ad, 1
  %wide.trip.count.i = zext i32 %i.ae to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !105
  %i.ah = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %i.ag) #31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit.loopexit.split.loop.exit21.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %layer_index.exit, label %.lr.ph.i, !llvm.loop !489

.loopexit.loopexit.split.loop.exit21.i:           ; preds = %.lr.ph.i
  %i.aj = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %layer_index.exit

layer_index.exit:                                 ; preds = %bb.g, %bb.d, %bb.e, %bb.f, %.preheader.i, %.loopexit.loopexit.split.loop.exit21.i
  %.012.i = phi i32 [ -1, %bb.f ], [ %i.ab, %bb.e ], [ 0, %bb.d ], [ -1, %.preheader.i ], [ %i.aj, %.loopexit.loopexit.split.loop.exit21.i ], [ -1, %bb.g ] ; 3 uses
  %i.ak = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(4) @.str.63) #31
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %layer_index.exit63, label %.preheader14.i48

.preheader14.i48:                                 ; preds = %layer_index.exit, %.preheader14.i48
  %.0.i.i49 = phi ptr [ %i.an, %.preheader14.i48 ], [ %i.s, %layer_index.exit ] ; 2 uses
  %i.am = load i8, ptr %.0.i.i49, align 1, !tbaa !14 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i49, i64 1
  %i.ao = sext i8 %i.am to i32
  %i.ap = add nsw i32 %i.ao, -58
  %i.aq = icmp ult i32 %i.ap, -10
  br i1 %i.aq, label %is_natural_number.exit.i50, label %.preheader14.i48, !llvm.loop !488

is_natural_number.exit.i50:                       ; preds = %.preheader14.i48
  %.not.i.i51 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i51, label %bb.h, label %bb.i

bb.h:                                             ; preds = %is_natural_number.exit.i50
  %i.ar = call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.s, ptr noundef null, i32 noundef 10) #27, !inline_history !4
  %i.as = trunc i64 %i.ar to i32
  br label %layer_index.exit63

bb.i:                                             ; preds = %is_natural_number.exit.i50
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !104 ; 2 uses
  %.not.i52 = icmp eq ptr %i.at, null
  br i1 %.not.i52, label %layer_index.exit63, label %.preheader.i53

.preheader.i53:                                   ; preds = %bb.i
  %i.au = load i32, ptr %i.h, align 8, !tbaa !157 ; 2 uses
  %.not1315.i54 = icmp slt i32 %i.au, 1
  br i1 %.not1315.i54, label %layer_index.exit63, label %.lr.ph.preheader.i55

.lr.ph.preheader.i55:                             ; preds = %.preheader.i53
  %i.av = add nuw i32 %i.au, 1
  %wide.trip.count.i56 = zext i32 %i.av to i64
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.j, %.lr.ph.preheader.i55
  %indvars.iv.i58 = phi i64 [ 1, %.lr.ph.preheader.i55 ], [ %indvars.iv.next.i59, %bb.j ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i58
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105
  %i.ay = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.s, ptr noundef nonnull readonly dereferenceable(1) %i.ax) #31
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.loopexit.loopexit.split.loop.exit21.i62, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i57
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next.i59, %wide.trip.count.i56
  br i1 %exitcond.not.i60, label %layer_index.exit63, label %.lr.ph.i57, !llvm.loop !489

.loopexit.loopexit.split.loop.exit21.i62:         ; preds = %.lr.ph.i57
  %i.ba = trunc nuw nsw i64 %indvars.iv.i58 to i32
  br label %layer_index.exit63

layer_index.exit63:                               ; preds = %bb.j, %layer_index.exit, %bb.h, %bb.i, %.preheader.i53, %.loopexit.loopexit.split.loop.exit21.i62
  %.012.i61 = phi i32 [ -1, %bb.i ], [ %i.as, %bb.h ], [ %2, %layer_index.exit ], [ -1, %.preheader.i53 ], [ %i.ba, %.loopexit.loopexit.split.loop.exit21.i62 ], [ -1, %bb.j ] ; 3 uses
  %i.bb = icmp sgt i32 %.012.i, -1
  %i.bc = icmp sgt i32 %.012.i61, -1
  %or.cond = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond, label %.split, label %.backedge

.split:                                           ; preds = %layer_index.exit63
  %spec.select = call i32 @llvm.smax.i32(i32 %.012.i, i32 %.012.i61)
  %spec.select47 = call i32 @llvm.smin.i32(i32 %.012.i, i32 %.012.i61)
  %i.bd = icmp sle i32 %spec.select47, %1
  %i.be = icmp sle i32 %1, %spec.select
  %i.bf = and i1 %i.bd, %i.be
  br i1 %i.bf, label %.critedge, label %.backedge

.backedge:                                        ; preds = %layer_index.exit63, %.lr.ph, %.split, %layer_index.exit79
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !205
  %i.bh = call ptr @strtok_r(ptr noundef null, ptr noundef %i.bg, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not.not.not.not = icmp eq ptr %i.bh, null
  br i1 %.not.not.not.not, label %.critedge, label %.lr.ph, !llvm.loop !490

bb.k:                                             ; preds = %bb.c
  br i1 %i.u, label %.critedge, label %.preheader14.i64

.preheader14.i64:                                 ; preds = %bb.k, %.preheader14.i64
  %.0.i.i65 = phi ptr [ %i.bj, %.preheader14.i64 ], [ %i.q, %bb.k ] ; 2 uses
  %i.bi = load i8, ptr %.0.i.i65, align 1, !tbaa !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i65, i64 1
  %i.bk = sext i8 %i.bi to i32
  %i.bl = add nsw i32 %i.bk, -58
  %i.bm = icmp ult i32 %i.bl, -10
  br i1 %i.bm, label %is_natural_number.exit.i66, label %.preheader14.i64, !llvm.loop !488

is_natural_number.exit.i66:                       ; preds = %.preheader14.i64
  %.not.i.i67 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i67, label %bb.l, label %bb.m

bb.l:                                             ; preds = %is_natural_number.exit.i66
  %i.bn = call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.q, ptr noundef null, i32 noundef 10) #27, !inline_history !4
  %i.bo = trunc i64 %i.bn to i32
  br label %layer_index.exit79

bb.m:                                             ; preds = %is_natural_number.exit.i66
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !104 ; 2 uses
  %.not.i68 = icmp eq ptr %i.bp, null
  br i1 %.not.i68, label %layer_index.exit79, label %.preheader.i69

.preheader.i69:                                   ; preds = %bb.m
  %i.bq = load i32, ptr %i.h, align 8, !tbaa !157 ; 2 uses
  %.not1315.i70 = icmp slt i32 %i.bq, 1
  br i1 %.not1315.i70, label %layer_index.exit79, label %.lr.ph.preheader.i71

.lr.ph.preheader.i71:                             ; preds = %.preheader.i69
  %i.br = add nuw i32 %i.bq, 1
  %wide.trip.count.i72 = zext i32 %i.br to i64
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.n, %.lr.ph.preheader.i71
  %indvars.iv.i74 = phi i64 [ 1, %.lr.ph.preheader.i71 ], [ %indvars.iv.next.i75, %bb.n ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i74
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !105
  %i.bu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %i.bt) #31
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit.loopexit.split.loop.exit21.i78, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i73
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, %wide.trip.count.i72
  br i1 %exitcond.not.i76, label %layer_index.exit79, label %.lr.ph.i73, !llvm.loop !489

.loopexit.loopexit.split.loop.exit21.i78:         ; preds = %.lr.ph.i73
  %i.bw = trunc nuw nsw i64 %indvars.iv.i74 to i32
  br label %layer_index.exit79

layer_index.exit79:                               ; preds = %bb.n, %bb.l, %bb.m, %.preheader.i69, %.loopexit.loopexit.split.loop.exit21.i78
  %.012.i77 = phi i32 [ -1, %bb.m ], [ %i.bo, %bb.l ], [ %i.bw, %.loopexit.loopexit.split.loop.exit21.i78 ], [ -1, %.preheader.i69 ], [ -1, %bb.n ]
  %i.bx = icmp eq i32 %.012.i77, %1
  br i1 %i.bx, label %.critedge, label %.backedge

.critedge:                                        ; preds = %.backedge, %.split, %layer_index.exit79, %bb.k, %gv_strdup.exit.preheader
  %.not.not.not.lcssa = phi i1 [ false, %gv_strdup.exit.preheader ], [ false, %.backedge ], [ true, %.split ], [ true, %layer_index.exit79 ], [ true, %bb.k ]
  call void @free(ptr noundef %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.not.not.not.lcssa
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #19

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gvrender_begin_cluster(ptr noundef) local_unnamed_addr #2

declare ptr @agraphof(ptr noundef) local_unnamed_addr #2

declare i32 @shapeOf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc noalias noundef ptr @pEllipse(double noundef %0, double noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #3 {
bb.a:
  %i.a = uitofp nneg i64 %2 to double
  %i.b = fdiv double f0x401921FB54442D18, %i.a    ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %gv_calloc.exit.thread, label %bb.b

gv_calloc.exit.thread:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp ugt i64 %2, 1152921504606846975
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.47, i64 noundef %2, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 16) #28 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %2, 1
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 1152921504606846974
  %i.i = insertelement <2 x double> poison, double %0, i64 0
  %i.j = insertelement <2 x double> %i.i, double %1, i64 1
  %i.k = insertelement <2 x double> poison, double %0, i64 0
  %i.l = insertelement <2 x double> %i.k, double %1, i64 1
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.n = shl nuw nsw i64 %2, 4
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.45, i64 noundef %i.n) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %.01517.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.p = tail call double @cos(double noundef %.01517.epil.init) #27
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.018.epil.init
  %i.r = tail call double @sin(double noundef %.01517.epil.init) #27
  %i.s = insertelement <2 x double> poison, double %0, i64 0
  %i.t = insertelement <2 x double> %i.s, double %1, i64 1
  %i.u = insertelement <2 x double> poison, double %i.p, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.r, i64 1
  %i.w = fmul <2 x double> %i.t, %i.v
  store <2 x double> %i.w, ptr %i.q, align 8, !tbaa !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %gv_calloc.exit.thread
  %i.x = phi ptr [ %i.c, %gv_calloc.exit.thread ], [ %i.f, %._crit_edge.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil.preheader ]
  ret ptr %i.x

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.018 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ] ; 3 uses
  %.01517 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.y = tail call double @cos(double noundef %.01517) #27
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.018
  %i.aa = tail call double @sin(double noundef %.01517) #27
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.aa, i64 1
  %i.ad = fmul <2 x double> %i.j, %i.ac
  store <2 x double> %i.ad, ptr %i.z, align 8, !tbaa !110
  %i.ae = fadd double %i.b, %.01517               ; 3 uses
  %i.af = tail call double @cos(double noundef %i.ae) #27
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.018
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = tail call double @sin(double noundef %i.ae) #27
  %i.aj = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ai, i64 1
  %i.al = fmul <2 x double> %i.l, %i.ak
  store <2 x double> %i.al, ptr %i.ah, align 8, !tbaa !110
  %i.am = fadd double %i.b, %i.ae                 ; 2 uses
  %i.an = add nuw nsw i64 %.018, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !491
}

declare void @gvrender_begin_node(ptr noundef) local_unnamed_addr #2

declare ptr @late_nnstring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7
end_hunk_0
