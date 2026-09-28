Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@button_released:bb.a
  call void @dt_control_queue_redraw_center() #34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.q, %bb.r, %.critedge.thread, %bb.p, %bb.o
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 324
  store <4 x float> splat (float -1.000000e+00), ptr %i.fk, align 4, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !197
  %i.fn = icmp eq i32 %i.fm, 3
  %i.fo = icmp eq i32 %3, 3
  %or.cond = and i1 %i.fo, %i.fn
  br i1 %or.cond, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @_draw_save_lines_to_params(ptr noundef %0)
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.e, %bb.d, %bb.g, %bb.b
  %.1102 = phi i32 [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.d ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %.1102
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_draw_save_lines_to_params(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !125 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157  ; 5 uses
  %i.f = icmp ne ptr %i.c, null
  %i.g = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %thread-pre-split.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !197  ; 2 uses
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !179  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %thread-pre-split.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.n = load i32, ptr %i.m, align 8, !tbaa !180
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %bb.e, label %thread-pre-split.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.p = tail call <21 x float> @llvm.masked.load.v21f32.p0(ptr nonnull align 16 %i.l, <21 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 false, i1 true, i1 true>, <21 x float> poison), !tbaa !15
  %i.q = shufflevector <21 x float> %i.p, <21 x float> poison, <8 x i32> <i32 0, i32 1, i32 3, i32 4, i32 16, i32 17, i32 19, i32 20>
  store <8 x float> %i.q, ptr %i.a, align 16, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !143
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.w = load i32, ptr %i.v, align 16, !tbaa !144
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to double
  %i.y = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.s, ptr noundef %i.u, double noundef %i.x, i32 noundef 4, ptr noundef nonnull %i.a, i64 noundef 4) #34
  %.not62 = icmp eq i32 %i.y, 0
  br i1 %.not62, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 860
  %i.aa = load <8 x float>, ptr %i.a, align 16, !tbaa !15
  store <8 x float> %i.aa, ptr %i.z, align 4, !tbaa !15
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !235
  call void @dt_dev_add_history_item(ptr noundef %i.ab, ptr noundef nonnull %0, i32 noundef 1) #34
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.pr.pre = load i32, ptr %i.h, align 8, !tbaa !197
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f, %bb.b
  %i.ac = phi i32 [ %i.i, %bb.b ], [ %.pr.pre, %bb.f ]
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %thread-pre-split.thread

bb.g:                                             ; preds = %thread-pre-split
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179 ; 2 uses
  %.not63 = icmp eq ptr %i.af, null
  br i1 %.not63, label %thread-pre-split.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 856 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !236
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !180 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %bb.i, %.lr.ph
  %.ph = phi i32 [ %i.bc, %bb.i ], [ 0, %.lr.ph ] ; 4 uses
  %.066.ph = phi i32 [ %i.be, %bb.i ], [ 0, %.lr.ph ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.j
  %.066 = phi i32 [ %.old, %bb.j ], [ %.066.ph, %.backedge.outer ] ; 3 uses
  %i.al = zext nneg i32 %.066 to i64
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.af, i64 %i.al ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !189
  switch i32 %i.ao, label %bb.j [
    i32 5, label %bb.i
    i32 7, label %bb.i
  ]

bb.i:                                             ; preds = %.backedge, %.backedge
  %i.ap = load float, ptr %i.am, align 16, !tbaa !15
  %i.aq = shl nsw i32 %.ph, 2
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ar ; 4 uses
  store float %i.ap, ptr %i.as, align 4, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !15
  %i.av = getelementptr i8, ptr %i.as, i64 4
  store float %i.au, ptr %i.av, align 4, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !15
  %i.ay = getelementptr i8, ptr %i.as, i64 8
  store float %i.ax, ptr %i.ay, align 4, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ba = load float, ptr %i.az, align 16, !tbaa !15
  %i.bb = getelementptr i8, ptr %i.as, i64 12
  store float %i.ba, ptr %i.bb, align 4, !tbaa !15
  %i.bc = add nuw nsw i32 %.ph, 1                 ; 3 uses
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !236
  %i.bd = icmp samesign ult i32 %.ph, 49
  %i.be = add nuw nsw i32 %.066, 1                ; 2 uses
  %i.bf = icmp slt i32 %i.be, %i.ai
  %or.cond69 = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond69, label %.backedge.outer, label %._crit_edge.loopexit

bb.j:                                             ; preds = %.backedge
  %.old = add nuw nsw i32 %.066, 1                ; 2 uses
  %.old68 = icmp slt i32 %.old, %i.ai
  br i1 %.old68, label %.backedge, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.i, %bb.j
  %i.bg = phi i32 [ %.ph, %bb.j ], [ %i.bc, %bb.i ]
  %i.bh = shl nsw i32 %i.bg, 1
  %i.bi = sext i32 %i.bh to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.bj = phi i64 [ %i.bi, %._crit_edge.loopexit ], [ 0, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !126 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !143
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bp = load i32, ptr %i.bo, align 16, !tbaa !144
  %i.bq = sitofp reassoc nsz arcp contract afn i32 %i.bp to double
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bs = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.bl, ptr noundef %i.bn, double noundef %i.bq, i32 noundef 4, ptr noundef nonnull %i.br, i64 noundef %i.bj) #34
  %.not64 = icmp eq i32 %i.bs, 0
  br i1 %.not64, label %thread-pre-split.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !235
  call void @dt_dev_add_history_item(ptr noundef %i.bt, ptr noundef nonnull %0, i32 noundef 1) #34
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.d, %bb.c, %thread-pre-split, %bb.g, %bb.k, %._crit_edge, %bb.a
  ret void
}

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #7

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #7

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #7

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @scrolled(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !125 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !179
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !203
  %i.i = fcmp reassoc nsz arcp contract afn ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !221
  %.not60 = icmp eq i32 %i.k, 0
  br i1 %.not60, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.m = load i32, ptr %i.l, align 4, !tbaa !222
  %.not61 = icmp eq i32 %i.m, 0
  br i1 %.not61, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.p = call i32 @dt_dev_get_preview_size(ptr noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #34 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !197
  %i.s = and i32 %i.r, -2
  %switch = icmp eq i32 %i.s, 2
  %.str.13..str.14 = select i1 %switch, ptr @.str.13, ptr @.str.14
  %i.t = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %.str.13..str.14) #34
  %.not62 = icmp eq i32 %3, 0
  %i.u = select reassoc nsz arcp contract afn i1 %.not62, float 8.000000e-01, float 1.250000e+00
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %i.u ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.v, 1.000000e+02
  %i.x = select reassoc nsz arcp contract afn i1 %i.w, float %i.v, float 1.000000e+02 ; 2 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, 4.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.y, float 4.000000e+00, float %i.x ; 8 uses
  %i.z = load i32, ptr %i.q, align 8, !tbaa !197
  %i.aa = and i32 %i.z, -2
  %switch68 = icmp eq i32 %i.aa, 2
  %.str.14.sink118 = select i1 %switch68, ptr @.str.13, ptr @.str.14
  call void @dt_conf_set_float(ptr noundef nonnull %.str.14.sink118, float noundef %spec.select) #34
  store float %spec.select, ptr %i.g, align 8, !tbaa !203
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !197
  %i.ac = and i32 %i.ab, -2
  %switch70 = icmp eq i32 %i.ac, 2
  br i1 %switch70, label %bb.ag, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !181
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !182 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !186 ; 8 uses
  %i.aj = load float, ptr %i.a, align 4, !tbaa !15
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %1 ; 3 uses
  %i.al = load float, ptr %i.b, align 4, !tbaa !15
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %2 ; 3 uses
  %i.an = fmul reassoc nsz arcp contract afn float %spec.select, %spec.select
  %i.ao = icmp slt i32 %i.ai, 1
  %i.ap = icmp eq ptr %i.ag, null
  %or.cond.i = or i1 %i.ap, %i.ao
  br i1 %or.cond.i, label %_get_near.exit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.ai to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ai, 8
  br i1 %min.iters.check, label %.preheader69.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check120 = icmp ult i32 %i.ai, 32
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %wide.trip.count.i, 24
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.ag, <8 x i64> %vec.ind
  %wide.gep121 = getelementptr inbounds nuw [48 x i8], ptr %i.ag, <8 x i64> %step.add
  %wide.gep122 = getelementptr inbounds nuw [48 x i8], ptr %i.ag, <8 x i64> %step.add.2
  %wide.gep123 = getelementptr inbounds nuw [48 x i8], ptr %i.ag, <8 x i64> %step.add.3
  %wide.gep124 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.gep125 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep121, i64 12
  %wide.gep126 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep122, i64 12
  %wide.gep127 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep123, i64 12
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep124, <8 x i1> splat (i1 true)), !tbaa !198
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep125, <8 x i1> splat (i1 true)), !tbaa !198
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep126, <8 x i1> splat (i1 true)), !tbaa !198
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep127, <8 x i1> splat (i1 true)), !tbaa !198
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !433

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.split.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.preheader69.i.preheader, label %vec.epilog.ph, !prof !229

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec128 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ]
  %vec.ind130 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next134, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep131 = getelementptr inbounds nuw [48 x i8], ptr %i.ag, <8 x i64> %vec.ind130
  %wide.gep132.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep131, i64 12
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep132.a, <8 x i1> splat (i1 true)), !tbaa !198
  %index.next133 = add nuw i64 %index129, 8       ; 2 uses
  %vec.ind.next134 = add nuw nsw <8 x i64> %vec.ind130, splat (i64 8)
  %i.as = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !434

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n135 = icmp eq i64 %n.vec128, %wide.trip.count.i
  br i1 %cmp.n135, label %.lr.ph.split.i.preheader, label %.preheader69.i.preheader

.preheader69.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec128, %vec.epilog.middle.block ]
  br label %.preheader69.i

.preheader69.i:                                   ; preds = %.preheader69.i.preheader, %.preheader69.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader69.i ], [ %indvars.iv.i.ph, %.preheader69.i.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !198
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.split.i.preheader, label %.preheader69.i, !llvm.loop !435

.lr.ph.split.i.preheader:                         ; preds = %.preheader69.i, %vec.epilog.middle.block, %middle.block
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %.thread.i
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %.thread.i ], [ 0, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv80.i ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !196
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.ba = load float, ptr %i.az, align 4, !tbaa !225
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ba, %spec.select
  %i.bc = fcmp reassoc nsz arcp contract afn olt float %i.ak, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !226
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %spec.select
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.ak, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !227
  %i.bj = fsub reassoc nsz arcp contract afn float %i.bi, %spec.select
  %i.bk = fcmp reassoc nsz arcp contract afn olt float %i.am, %i.bj
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !228
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, %spec.select
  %i.bo = fcmp reassoc nsz arcp contract afn ogt float %i.am, %i.bn
  br i1 %i.bo, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !194 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 2
  br i1 %i.br, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !192
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %bb.l
  %.072.i = phi i32 [ 0, %bb.l ], [ %i.ce, %.critedge.i ]
  %.05771.i = phi i64 [ %i.bs, %bb.l ], [ %i.cf, %.critedge.i ] ; 2 uses
  %.idx.i = shl i64 %.05771.i, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !15
  %i.bv = fsub reassoc nsz arcp contract afn float %i.ak, %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !15
  %i.by = fsub reassoc nsz arcp contract afn float %i.am, %i.bx ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bv, %i.bv
  %i.ca = fmul reassoc nsz arcp contract afn float %i.by, %i.by
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.bz
  %i.cc = fcmp reassoc nsz arcp contract afn uge float %i.cb, %i.an
  br i1 %i.cc, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 1, ptr %i.cd, align 4, !tbaa !198
  br label %.thread.i

.critedge.i:                                      ; preds = %bb.m
  %i.ce = add nuw nsw i32 %.072.i, 1              ; 2 uses
  %i.cf = add i64 %.05771.i, 1
  %exitcond79.not.i = icmp eq i32 %i.ce, %i.bq
  br i1 %exitcond79.not.i, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %.critedge.i, %bb.n, %bb.k, %bb.j, %.lr.ph.split.i
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count.i
  br i1 %exitcond84.not.i, label %_get_near.exit, label %.lr.ph.split.i

_get_near.exit:                                   ; preds = %.thread.i, %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 172 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !223 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 228 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !183 ; 2 uses
  %i.ck = icmp eq i32 %i.ch, %i.cj
  %.fr = freeze i1 %i.ck
  %i.cl = icmp sgt i32 %i.ai, 0
  %or.cond80 = and i1 %.fr, %i.cl
  br i1 %or.cond80, label %.lr.ph.split.split.us.epil.preheader, label %.critedge.thread

.lr.ph.split.split.us.epil.preheader:             ; preds = %_get_near.exit
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 156 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ai to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cm = icmp eq i32 %i.ai, 1
  br i1 %i.cm, label %.lr.ph.split.split.epil.preheader, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.split.us.epil.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph.split.split

.critedge.loopexit209.unr-lcssa:                  ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %.critedge.loopexit209.unr-lcssa, %.lr.ph.split.split.us.epil.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.epil.preheader ], [ %indvars.iv.next.1, %.critedge.loopexit209.unr-lcssa ] ; 3 uses
  %.05381.epil.init = phi i32 [ 0, %.lr.ph.split.split.us.epil.preheader ], [ %.1.1, %.critedge.loopexit209.unr-lcssa ]
  %lcmp.mod211 = trunc i32 %i.ai to i1
  call void @llvm.assume(i1 %lcmp.mod211)
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv.epil.init
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !198
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.split.epil.preheader
  %i.cr = load i32, ptr %i.j, align 8, !tbaa !221
  %.not64.epil = icmp eq i32 %i.cr, 0
  br i1 %.not64.epil, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !179
  %i.ct = getelementptr inbounds nuw [64 x i8], ptr %i.cs, i64 %indvars.iv.epil.init
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 36 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !189
  %i.cw = and i32 %i.cv, -5
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !189
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.cx = load i32, ptr %5, align 4, !tbaa !222
  %.not65.epil = icmp eq i32 %i.cx, 0
  br i1 %.not65.epil, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !179
  %i.cz = getelementptr inbounds nuw [64 x i8], ptr %i.cy, i64 %indvars.iv.epil.init
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 36 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !189
  %i.dc = or i32 %i.db, 4
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !189
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.split.split.epil.preheader, %bb.q, %bb.r, %bb.s, %.critedge.loopexit209.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.critedge.loopexit209.unr-lcssa ], [ %.05381.epil.init, %.lr.ph.split.split.epil.preheader ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.s ]
  %.not63 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not63, label %.critedge.thread, label %bb.ac

.lr.ph.split.split:                               ; preds = %bb.ab, %bb.o
  %indvars.iv = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.1, %bb.ab ] ; 5 uses
  %.05381 = phi i32 [ 0, %bb.o ], [ %.1.1, %bb.ab ]
  %niter = phi i64 [ 0, %bb.o ], [ %niter.next.1, %bb.ab ]
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !198
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.split.split.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split
  %i.dh = load i32, ptr %i.j, align 8, !tbaa !221
  %.not64 = icmp eq i32 %i.dh, 0
  br i1 %.not64, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %i.e, align 8, !tbaa !179
  %i.dj = getelementptr inbounds nuw [64 x i8], ptr %i.di, i64 %indvars.iv
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 36 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !189
  %i.dm = and i32 %i.dl, -5
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !189
  br label %.lr.ph.split.split.1

bb.v:                                             ; preds = %bb.t
  %i.dn = load i32, ptr %5, align 4, !tbaa !222
  %.not65 = icmp eq i32 %i.dn, 0
  br i1 %.not65, label %.lr.ph.split.split.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !179
  %i.dp = getelementptr inbounds nuw [64 x i8], ptr %i.do, i64 %indvars.iv
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 36 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !189
  %i.ds = or i32 %i.dr, 4
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !189
  br label %.lr.ph.split.split.1

.lr.ph.split.split.1:                             ; preds = %bb.u, %bb.w, %bb.v, %.lr.ph.split.split
  %.1 = phi i32 [ %.05381, %.lr.ph.split.split ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.w ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv.next
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !198
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.split.1
  %i.dx = load i32, ptr %i.j, align 8, !tbaa !221
  %.not64.1 = icmp eq i32 %i.dx, 0
  br i1 %.not64.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !179
  %i.dz = getelementptr inbounds nuw [64 x i8], ptr %i.dy, i64 %indvars.iv.next
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 36 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !189
  %i.ec = and i32 %i.eb, -5
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !189
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.ed = load i32, ptr %5, align 4, !tbaa !222
  %.not65.1 = icmp eq i32 %i.ed, 0
  br i1 %.not65.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !179
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.ee, i64 %indvars.iv.next
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 36 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !189
  %i.ei = or i32 %i.eh, 4
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !189
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %.lr.ph.split.split.1
  %.1.1 = phi i32 [ %.1, %.lr.ph.split.split.1 ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.aa ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit209.unr-lcssa, label %.lr.ph.split.split

bb.ac:                                            ; preds = %.critedge
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !179 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !180 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 220
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.eo = icmp ne ptr %i.ej, null
  %i.ep = icmp sgt i32 %i.el, 0
  %i.eq = and i1 %i.eo, %i.ep
  br i1 %i.eq, label %iter.check183, label %_update_lines_count.exit

iter.check183:                                    ; preds = %bb.ac
  %wide.trip.count.i71 = zext nneg i32 %i.el to i64 ; 6 uses
  %min.iters.check136 = icmp ult i32 %i.el, 8
  br i1 %min.iters.check136, label %.lr.ph.split.i72.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %iter.check183
  %min.iters.check138 = icmp ult i32 %i.el, 32
  br i1 %min.iters.check138, label %vec.epilog.ph187, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %i.er = and i64 %wide.trip.count.i71, 24
  %n.vec140 = and i64 %wide.trip.count.i71, 2147483616 ; 4 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.ph139, %vector.body141
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next172, %vector.body141 ]
  %vec.ind143 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph139 ], [ %vec.ind.next173, %vector.body141 ] ; 5 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph139 ], [ %predphi168, %vector.body141 ]
  %vec.phi144 = phi <8 x i32> [ zeroinitializer, %vector.ph139 ], [ %predphi169, %vector.body141 ]
  %vec.phi145 = phi <8 x i32> [ zeroinitializer, %vector.ph139 ], [ %predphi170, %vector.body141 ]
  %vec.phi146 = phi <8 x i32> [ zeroinitializer, %vector.ph139 ], [ %predphi171, %vector.body141 ]
  %vec.phi147 = phi <8 x i32> [ zeroinitializer, %vector.ph139 ], [ %predphi, %vector.body141 ]
  %vec.phi148 = phi <8 x i32> [ zeroinitializer, %vector.ph139 ], [ %predphi165, %vector.body141 ]
  %vec.phi149 = phi <8 x i32> [ zeroinitializer, %vector.ph139 ], [ %predphi166, %vector.body141 ]
  %vec.phi150 = phi <8 x i32> [ zeroinitializer, %vector.ph139 ], [ %predphi167, %vector.body141 ]
  %step.add151 = add nuw <8 x i64> %vec.ind143, splat (i64 8)
  %step.add.2152 = add nuw <8 x i64> %vec.ind143, splat (i64 16)
  %step.add.3153 = add nuw <8 x i64> %vec.ind143, splat (i64 24)
  %wide.gep154 = getelementptr inbounds nuw [64 x i8], ptr %i.ej, <8 x i64> %vec.ind143
  %wide.gep155 = getelementptr inbounds nuw [64 x i8], ptr %i.ej, <8 x i64> %step.add151
  %wide.gep156 = getelementptr inbounds nuw [64 x i8], ptr %i.ej, <8 x i64> %step.add.2152
  %wide.gep157 = getelementptr inbounds nuw [64 x i8], ptr %i.ej, <8 x i64> %step.add.3153
  %wide.gep158 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep154, i64 36
  %wide.gep159 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep155, i64 36
  %wide.gep160 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep156, i64 36
  %wide.gep161 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep157, i64 36
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep158, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !189
  %wide.masked.gather162 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep159, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !189
  %wide.masked.gather163 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep160, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !189
  %wide.masked.gather164 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep161, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !189
  %i.es = and <8 x i32> %wide.masked.gather, splat (i32 7) ; 2 uses
  %i.et = and <8 x i32> %wide.masked.gather162, splat (i32 7) ; 2 uses
  %i.eu = and <8 x i32> %wide.masked.gather163, splat (i32 7) ; 2 uses
  %i.ev = and <8 x i32> %wide.masked.gather164, splat (i32 7) ; 2 uses
  %i.ew = icmp eq <8 x i32> %i.es, splat (i32 7)
  %i.ex = icmp eq <8 x i32> %i.et, splat (i32 7)
  %i.ey = icmp eq <8 x i32> %i.eu, splat (i32 7)
  %i.ez = icmp eq <8 x i32> %i.ev, splat (i32 7)
  %i.fa = icmp eq <8 x i32> %i.es, splat (i32 5)
  %i.fb = icmp eq <8 x i32> %i.et, splat (i32 5)
  %i.fc = icmp eq <8 x i32> %i.eu, splat (i32 5)
  %i.fd = icmp eq <8 x i32> %i.ev, splat (i32 5)
  %i.fe = zext <8 x i1> %i.ew to <8 x i32>
  %predphi = add <8 x i32> %vec.phi147, %i.fe     ; 2 uses
  %i.ff = zext <8 x i1> %i.ex to <8 x i32>
  %predphi165 = add <8 x i32> %vec.phi148, %i.ff  ; 2 uses
  %i.fg = zext <8 x i1> %i.ey to <8 x i32>
  %predphi166 = add <8 x i32> %vec.phi149, %i.fg  ; 2 uses
  %i.fh = zext <8 x i1> %i.ez to <8 x i32>
  %predphi167 = add <8 x i32> %vec.phi150, %i.fh  ; 2 uses
  %i.fi = zext <8 x i1> %i.fa to <8 x i32>
  %predphi168 = add <8 x i32> %vec.phi, %i.fi     ; 2 uses
  %i.fj = zext <8 x i1> %i.fb to <8 x i32>
  %predphi169 = add <8 x i32> %vec.phi144, %i.fj  ; 2 uses
  %i.fk = zext <8 x i1> %i.fc to <8 x i32>
  %predphi170 = add <8 x i32> %vec.phi145, %i.fk  ; 2 uses
  %i.fl = zext <8 x i1> %i.fd to <8 x i32>
  %predphi171 = add <8 x i32> %vec.phi146, %i.fl  ; 2 uses
  %index.next172 = add nuw i64 %index142, 32      ; 2 uses
  %vec.ind.next173 = add nuw <8 x i64> %vec.ind143, splat (i64 32)
  %i.fm = icmp eq i64 %index.next172, %n.vec140
  br i1 %i.fm, label %middle.block174, label %vector.body141, !llvm.loop !436

middle.block174:                                  ; preds = %vector.body141
  %bin.rdx = add <8 x i32> %predphi169, %predphi168
  %bin.rdx175 = add <8 x i32> %predphi170, %bin.rdx
  %bin.rdx176 = add <8 x i32> %predphi171, %bin.rdx175
  %i.fn = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx176) ; 3 uses
  %bin.rdx177 = add <8 x i32> %predphi165, %predphi
  %bin.rdx178 = add <8 x i32> %predphi166, %bin.rdx177
  %bin.rdx179 = add <8 x i32> %predphi167, %bin.rdx178
  %i.fo = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx179) ; 3 uses
  %cmp.n180 = icmp eq i64 %n.vec140, %wide.trip.count.i71
  br i1 %cmp.n180, label %_update_lines_count.exit, label %vec.epilog.iter.check185

vec.epilog.iter.check185:                         ; preds = %middle.block174
  %min.epilog.iters.check186 = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check186, label %.lr.ph.split.i72.preheader, label %vec.epilog.ph187, !prof !229

vec.epilog.ph187:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check185
  %vec.epilog.resume.val181 = phi i64 [ %n.vec140, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check137 ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.fn, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check137 ]
  %bc.merge.rdx182 = phi i32 [ %i.fo, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check137 ]
  %n.vec188 = and i64 %wide.trip.count.i71, 2147483640 ; 3 uses
  %i.fp = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.fq = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx182, i64 0
  %broadcast.splatinsert189 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val181, i64 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction191 = or disjoint <8 x i64> %broadcast.splat190, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body192

vec.epilog.vector.body192:                        ; preds = %vec.epilog.vector.body192, %vec.epilog.ph187
  %index193 = phi i64 [ %vec.epilog.resume.val181, %vec.epilog.ph187 ], [ %index.next202, %vec.epilog.vector.body192 ]
  %vec.ind194 = phi <8 x i64> [ %induction191, %vec.epilog.ph187 ], [ %vec.ind.next203, %vec.epilog.vector.body192 ] ; 2 uses
  %vec.phi195 = phi <8 x i32> [ %i.fp, %vec.epilog.ph187 ], [ %predphi201, %vec.epilog.vector.body192 ]
  %vec.phi196 = phi <8 x i32> [ %i.fq, %vec.epilog.ph187 ], [ %predphi200, %vec.epilog.vector.body192 ]
  %wide.gep197 = getelementptr inbounds nuw [64 x i8], ptr %i.ej, <8 x i64> %vec.ind194
  %wide.gep198 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep197, i64 36
  %wide.masked.gather199 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep198, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !189
  %i.fr = and <8 x i32> %wide.masked.gather199, splat (i32 7) ; 2 uses
  %i.fs = icmp eq <8 x i32> %i.fr, splat (i32 7)
end_hunk_0
