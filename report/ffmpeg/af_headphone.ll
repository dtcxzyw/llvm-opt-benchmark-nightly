Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_headphone?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@config_output:bb.a
..critedge_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !44
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44   ; 2 uses
  %i.p = shl nsw i32 %i.o, 1                      ; 2 uses
  %.not = icmp slt i32 %i.m, %i.p
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.p) #8
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b
  %i.q = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.o, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.s = load float, ptr %i.r, align 8, !tbaa !45
  %i.t = mul nsw i32 %i.q, 3
  %i.u = sitofp nsz i32 %i.t to float
  %i.v = fsub nsz float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.x = load float, ptr %i.w, align 4, !tbaa !151
  %i.y = fadd nsz float %i.x, %i.v
  %i.z = fdiv nsz float %i.y, 2.000000e+01
  %i.aa = fpext nsz float %i.z to double
  %i.ab = fmul nsz double %i.aa, f0x40026BB1BBB55516
  %i.ac = fptrunc nsz double %i.ab to float
  %i.ad = tail call nsz float @llvm.exp.f32(float %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store float %i.ad, ptr %i.ae, align 8, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ -22, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #4

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_input(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !44   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.h) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.j, i32 noundef 3) #8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.k, ptr %i.l, align 4, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_append_inpad(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_asprintf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ff_append_inpad_free_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_index_from_channel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_strtok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @av_channel_from_string(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_all_channel_layouts() local_unnamed_addr #3

declare i32 @ff_channel_layouts_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_add_channel_layout(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_all_channel_counts() local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #3

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_check_available_samples(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @headphone_convolute(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !73     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = sext i32 %2 to i64                       ; 6 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !46 ; 3 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 388
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !47 ; 4 uses
  %i.aj = add i32 %i.ai, -1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !25  ; 5 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.i ; 3 uses
  %i.am = icmp sgt i32 %i.ag, 0
  br i1 %i.am, label %.lr.ph.preheader, label %.preheader109.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.an = sext i32 %i.ai to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 2 uses
  %xtraiter172 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ao = icmp ult i32 %i.ag, 4
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter176 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.preheader109.unr-lcssa:                          ; preds = %.lr.ph
  %lcmp.mod174.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod174.not, label %.preheader109, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader109.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader109.unr-lcssa ]
  %lcmp.mod175 = icmp ne i64 %xtraiter172, 0
  tail call void @llvm.assume(i1 %lcmp.mod175)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter173 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter173.next, %.lr.ph.epil ]
  %i.ap = mul nsw i64 %indvars.iv.epil, %i.an
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !53
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter173.next = add i64 %epil.iter173, 1   ; 2 uses
  %epil.iter173.cmp.not = icmp eq i64 %epil.iter173.next, %xtraiter172
  br i1 %epil.iter173.cmp.not, label %.preheader109, label %.lr.ph.epil, !llvm.loop !152

.preheader109:                                    ; preds = %.lr.ph.epil, %.preheader109.unr-lcssa
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !68
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph121, label %._crit_edge122

.preheader109.thread:                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !68 ; 4 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.preheader.preheader.preheader, label %._crit_edge122

.preheader.preheader.preheader:                   ; preds = %.preheader109.thread
  %xtraiter = and i32 %i.aw, 3                    ; 3 uses
  %i.ay = icmp ult i32 %i.aw, 4
  br i1 %i.ay, label %.preheader.preheader.epil.preheader, label %.preheader.preheader.preheader.new

.preheader.preheader.preheader.new:               ; preds = %.preheader.preheader.preheader
  %unroll_iter = and i32 %i.aw, 2147483644
  br label %.preheader.preheader

.lr.ph121:                                        ; preds = %.preheader109
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.ba = sext i32 %i.aa to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.bd = add nsw i32 %i.aa, 31
  %i.be = and i32 %i.bd, -32                      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bg = sext i32 %i.ac to i64                   ; 2 uses
  %i.bh = zext nneg i32 %i.ag to i64
  %wide.trip.count151 = zext nneg i32 %i.ag to i64 ; 3 uses
  %wide.trip.count156 = zext nneg i32 %i.ag to i64
  %xtraiter178 = and i64 %wide.trip.count151, 3   ; 3 uses
  %i.bi = icmp ult i32 %i.ag, 4
  %unroll_iter182 = and i64 %wide.trip.count151, 2147483644
  %lcmp.mod180.not = icmp eq i64 %xtraiter178, 0
  %lcmp.mod181 = icmp ne i64 %xtraiter178, 0
  %invariant.op = sub i32 1, %i.aa
  br label %.lr.ph112.us

.lr.ph112.us:                                     ; preds = %bb.j, %.lr.ph121
  %.099120.us = phi i32 [ %i.er, %bb.j ], [ 0, %.lr.ph121 ]
  %.0100119.us = phi i32 [ %i.eq, %bb.j ], [ %i.ak, %.lr.ph121 ] ; 3 uses
  %.0101117.us = phi ptr [ %i.en, %bb.j ], [ %i.al, %.lr.ph121 ] ; 8 uses
  %.0102116.us = phi ptr [ %i.eo, %bb.j ], [ %i.ad, %.lr.ph121 ] ; 6 uses
  store float 0.000000e+00, ptr %.0101117.us, align 4, !tbaa !49
  %i.bj = sext i32 %.0100119.us to i64            ; 7 uses
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph112.us.new

.lr.ph112.us.new:                                 ; preds = %.lr.ph112.us, %.lr.ph112.us.new
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph112.us.new ], [ 0, %.lr.ph112.us ] ; 6 uses
  %niter183 = phi i64 [ %niter183.next.3, %.lr.ph112.us.new ], [ 0, %.lr.ph112.us ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv143
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !49
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !53
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bj
  store float %i.bl, ptr %i.bo, align 4, !tbaa !49
  %indvars.iv.next144 = or disjoint i64 %indvars.iv143, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv.next144
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !49
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bj
  store float %i.bq, ptr %i.bt, align 4, !tbaa !49
  %indvars.iv.next144.1 = or disjoint i64 %indvars.iv143, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv.next144.1
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !49
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next144.1
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !53
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bj
  store float %i.bv, ptr %i.by, align 4, !tbaa !49
  %indvars.iv.next144.2 = or disjoint i64 %indvars.iv143, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv.next144.2
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !49
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next144.2
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.bj
  store float %i.ca, ptr %i.cd, align 4, !tbaa !49
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %niter183.next.3 = add i64 %niter183, 4         ; 2 uses
  %niter183.ncmp.3 = icmp eq i64 %niter183.next.3, %unroll_iter182
  br i1 %niter183.ncmp.3, label %.preheader.us.unr-lcssa, label %.lr.ph112.us.new, !llvm.loop !153

.preheader.us.unr-lcssa:                          ; preds = %.lr.ph112.us.new
  br i1 %lcmp.mod180.not, label %.preheader.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.us.unr-lcssa, %.lr.ph112.us
  %indvars.iv143.epil.init = phi i64 [ 0, %.lr.ph112.us ], [ %indvars.iv.next144.3, %.preheader.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod181)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv143.epil = phi i64 [ %indvars.iv.next144.epil, %bb.b ], [ %indvars.iv143.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter179 = phi i64 [ %epil.iter179.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv143.epil
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !49
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !53
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bj
  store float %i.cf, ptr %i.ci, align 4, !tbaa !49
  %indvars.iv.next144.epil = add nuw nsw i64 %indvars.iv143.epil, 1
  %epil.iter179.next = add i64 %epil.iter179, 1   ; 2 uses
  %epil.iter179.cmp.not = icmp eq i64 %epil.iter179.next, %xtraiter178
  br i1 %epil.iter179.cmp.not, label %.preheader.us, label %bb.b, !llvm.loop !154

.preheader.us:                                    ; preds = %bb.b, %.preheader.us.unr-lcssa
  %.reass.reass.us.reass.reass = add i32 %.0100119.us, %invariant.op
  %i.cj = and i32 %.reass.reass.us.reass.reass, %i.aj ; 4 uses
  %i.ck = add nsw i32 %i.cj, %i.aa
  %i.cl = icmp slt i32 %i.ck, %i.ai
  %i.cm = sub nsw i32 %i.ai, %i.cj
  %i.cn = sext i32 %i.cj to i64                   ; 2 uses
  %.fr.us = freeze i1 %i.cl
  br i1 %.fr.us, label %.lr.ph115.split.us.us, label %.lr.ph115.split.us124

.lr.ph115.split.us124:                            ; preds = %.preheader.us, %bb.e
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %bb.e ], [ 0, %.preheader.us ] ; 3 uses
  %.0114.us125 = phi ptr [ %i.do, %bb.e ], [ %i.n, %.preheader.us ] ; 2 uses
  %i.co = load i32, ptr %i.az, align 4, !tbaa !79 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp eq i64 %indvars.iv148, %i.cp
  br i1 %i.cq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph115.split.us124
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv148
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = srem i32 %i.cj, %i.aa
  %i.cu = sub nsw i32 %i.ac, %i.ct
  %..us = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.cm) ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cn
  %i.cw = sext i32 %..us to i64                   ; 2 uses
  %i.cx = shl nsw i64 %i.cw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.cv, i64 %i.cx, i1 false)
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.cw
  %i.cz = sub nsw i32 %i.ac, %..us
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cy, ptr align 4 %i.cs, i64 %i.db, i1 false)
  %i.dc = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.dd = tail call nsz float %i.dc(ptr noundef %.0114.us125, ptr noundef %i.y, i32 noundef %i.be) #8
  %i.de = load float, ptr %.0101117.us, align 4, !tbaa !49
  %i.df = fadd nsz float %i.dd, %i.de
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph115.split.us124
  %i.dg = sext i32 %i.co to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !53
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.bj
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !49
  %i.dl = load float, ptr %i.bf, align 8, !tbaa !78
  %i.dm = load float, ptr %.0101117.us, align 4, !tbaa !49
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.dl, float %i.dm)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.us127 = phi float [ %i.df, %bb.c ], [ %i.dn, %bb.d ] ; 2 uses
  store float %storemerge.us127, ptr %.0101117.us, align 4, !tbaa !49
  %i.do = getelementptr inbounds [4 x i8], ptr %.0114.us125, i64 %i.bg
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge.us, label %.lr.ph115.split.us124, !llvm.loop !155

.lr.ph115.split.us.us:                            ; preds = %.preheader.us, %bb.h
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %bb.h ], [ 0, %.preheader.us ] ; 3 uses
  %.0114.us.us = phi ptr [ %i.eh, %bb.h ], [ %i.n, %.preheader.us ] ; 2 uses
  %i.dp = load i32, ptr %i.az, align 4, !tbaa !79 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp eq i64 %indvars.iv153, %i.dq
  br i1 %i.dr, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph115.split.us.us
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv153
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !53
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.du, i64 %i.bb, i1 false)
  %i.dv = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.dw = tail call nsz float %i.dv(ptr noundef %.0114.us.us, ptr noundef %i.y, i32 noundef %i.be) #8
  %i.dx = load float, ptr %.0101117.us, align 4, !tbaa !49
  %i.dy = fadd nsz float %i.dw, %i.dx
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph115.split.us.us
  %i.dz = sext i32 %i.dp to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !53
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.bj
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !49
  %i.ee = load float, ptr %i.bf, align 8, !tbaa !78
  %i.ef = load float, ptr %.0101117.us, align 4, !tbaa !49
  %i.eg = tail call nsz float @llvm.fmuladd.f32(float %i.ed, float %i.ee, float %i.ef)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.us.us = phi float [ %i.dy, %bb.f ], [ %i.eg, %bb.g ] ; 2 uses
  store float %storemerge.us.us, ptr %.0101117.us, align 4, !tbaa !49
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0114.us.us, i64 %i.bg
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge.us, label %.lr.ph115.split.us.us, !llvm.loop !155

._crit_edge.us:                                   ; preds = %bb.e, %bb.h
  %i.ei = phi float [ %storemerge.us.us, %bb.h ], [ %storemerge.us127, %bb.e ]
  %i.ej = tail call nsz float @llvm.fabs.f32(float %i.ei)
  %i.ek = fcmp nsz ogt float %i.ej, 1.000000e+00
  br i1 %i.ek, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.us
  %i.el = load i32, ptr %i.q, align 4, !tbaa !25
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.q, align 4, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.us
  %i.en = getelementptr inbounds nuw i8, ptr %.0101117.us, i64 8
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %i.bh
  %i.ep = add nsw i32 %.0100119.us, 1
  %i.eq = and i32 %i.ep, %i.aj                    ; 2 uses
  %i.er = add nuw nsw i32 %.099120.us, 1          ; 2 uses
  %i.es = load i32, ptr %i.as, align 8, !tbaa !68
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph112.us, label %._crit_edge122, !llvm.loop !156

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter177 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter177.next.3, %.lr.ph ]
  %i.eu = mul nsw i64 %indvars.iv, %i.an
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.ev, ptr %i.ew, align 16, !tbaa !53
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ex = mul nsw i64 %indvars.iv.next, %i.an
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
end_hunk_0
