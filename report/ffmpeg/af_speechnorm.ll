Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_speechnorm?download=true
inline.NumInlined: 29
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@activate:bb.a
  %.not48 = icmp eq i32 %i.em, 0
  br i1 %.not48, label %bb.x, label %.critedge51

.critedge51:                                      ; preds = %bb.w, %ff_bufqueue_peek.exit
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #11
  br label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.en = call i32 @ff_outlink_frame_wanted(ptr noundef %i.j) #11
  %.not49 = icmp eq i32 %i.en, 0
  br i1 %.not49, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ff_inlink_request_frame(ptr noundef %i.g) #11
  br label %bb.z

bb.z:                                             ; preds = %filter_frame.exit.thread57, %filter_frame.exit.thread55, %bb.e, %bb.x, %.critedge51, %filter_frame.exit, %bb.a, %bb.y, %bb.u
  %.2 = phi i32 [ 0, %bb.e ], [ %i.o, %bb.a ], [ 0, %bb.u ], [ 0, %bb.y ], [ %i.dk, %filter_frame.exit ], [ 0, %.critedge51 ], [ -1497649742, %bb.x ], [ %i.bz, %filter_frame.exit.thread55 ], [ -12, %filter_frame.exit.thread57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52
  %i.g = sdiv i32 %i.f, 10
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 %i.g, ptr %i.h, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias ptr @av_calloc(i64 noundef %i.l, i64 noundef 21168048) #11 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.m, ptr %i.n, align 8, !tbaa !38
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.o = load i32, ptr %i.j, align 4, !tbaa !53   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = icmp ult i32 %i.o, 4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.t = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv.epil ; 2 uses
  store i32 -1, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 21168008
  store double %i.r, ptr %i.u, align 8, !tbaa !61
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !94

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !98
  switch i32 %i.w, label %bb.e [
    i32 8, label %.sink.split
    i32 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.x = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  store i32 -1, ptr %i.x, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 21168008
  store double %i.r, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 21168048
  store i32 -1, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 42336056
  store double %i.r, ptr %i.ab, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 42336096
  store i32 -1, ptr %i.ad, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 63504104
  store double %i.r, ptr %i.ae, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 63504144
  store i32 -1, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 84672152
  store double %i.r, ptr %i.ah, align 8, !tbaa !61
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !95

bb.d:                                             ; preds = %._crit_edge
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.d
  %analyze_channel_flt.sink = phi ptr [ @analyze_channel_dbl, %bb.d ], [ @analyze_channel_flt, %._crit_edge ]
  %filter_channels_flt.sink = phi ptr [ @filter_channels_dbl, %bb.d ], [ @filter_channels_flt, %._crit_edge ]
  %filter_link_channels_flt.sink = phi ptr [ @filter_link_channels_dbl, %bb.d ], [ @filter_link_channels_flt, %._crit_edge ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8336
  store ptr %analyze_channel_flt.sink, ptr %i.ai, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8344
  store ptr %filter_channels_flt.sink, ptr %i.aj, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8352
  store ptr %filter_link_channels_flt.sink, ptr %i.ak, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %._crit_edge, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %._crit_edge ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @analyze_channel_flt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 21168036 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !62   ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %2, align 4, !tbaa !64
  %i.k = fcmp nsz oge float %i.j, 0.000000e+00
  %i.l = zext i1 %i.k to i32                      ; 2 uses
  store i32 %i.l, ptr %1, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %i.l, %bb.b ], [ %i.h, %bb.a ]
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.o = zext nneg i32 %3 to i64                  ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.p = phi i32 [ %i.aw, %.loopexit ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.0105130 = phi i64 [ %indvars.iv.lcssa.sink, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0108129 = phi i32 [ %.2110, %.loopexit ], [ %i.g, %.lr.ph.preheader ] ; 5 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %.0105130
  %i.r = load float, ptr %i.q, align 4, !tbaa !64
  %i.s = fcmp nsz oge float %i.r, 0.000000e+00
  %i.t = zext i1 %i.s to i32                      ; 4 uses
  %.not = icmp eq i32 %i.p, %i.t                  ; 2 uses
  %i.u = sext i32 %.0108129 to i64                ; 4 uses
  br i1 %.not, label %bb.d, label %.lr.ph._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.u
  %i.w = load i32, ptr %i.v, align 8, !tbaa !66   ; 2 uses
  %i.x = icmp sgt i32 %i.w, %i.d
  br i1 %i.x, label %.lr.ph._crit_edge, label %bb.j

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.d
  %i.y = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.u ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !67 ; 2 uses
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float>
  store i32 %i.t, ptr %1, align 8, !tbaa !60
  %i.ac = extractelement <2 x double> %i.aa, i64 0
  %i.ad = fcmp nsz ult double %i.ac, f0x3EFFFFFFF0000000
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph._crit_edge
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !66  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, %i.d
  br i1 %i.af, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %.lr.ph._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 1, ptr %i.ag, align 4, !tbaa !68
  %i.ah = add nsw i32 %.0108129, 1
  %i.ai = icmp sgt i32 %.0108129, 881998
  %spec.store.select = select i1 %i.ai, i32 0, i32 %i.ah ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = sext i32 %spec.store.select to i64      ; 2 uses
  %i.ak = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store double f0x0010000000000000, ptr %i.al, align 8, !tbaa !69
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = fpext <2 x float> %i.ab to <2 x double> ; 2 uses
  %i.an = sext i32 %spec.store.select to i64      ; 2 uses
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = extractelement <2 x double> %i.am, i64 0
  store double %i.aq, ptr %i.ap, align 8, !tbaa !69
  %i.ar = extractelement <2 x double> %i.am, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi double [ %i.ar, %bb.h ], [ 0.000000e+00, %bb.g ]
  %.pre-phi141 = phi i64 [ %i.an, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %i.e, i64 %.pre-phi141
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %.sink, ptr %i.at, align 8, !tbaa !70
  %i.au = getelementptr inbounds [24 x i8], ptr %i.e, i64 %.pre-phi141 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !68
  store i32 0, ptr %i.au, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.d
  %i.aw = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.ax = phi i32 [ %i.ae, %bb.e ], [ 0, %bb.i ], [ %i.w, %bb.d ] ; 2 uses
  %.pre-phi = phi i64 [ %i.u, %bb.e ], [ %.pre-phi141, %bb.i ], [ %i.u, %bb.d ]
  %.2110 = phi i32 [ %.0108129, %bb.e ], [ %spec.store.select, %bb.i ], [ %.0108129, %bb.d ] ; 3 uses
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.e, i64 %.pre-phi ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load double, ptr %i.az, align 8, !tbaa !69
  %i.bc = fptrunc nsz double %i.bb to float       ; 2 uses
  %i.bd = load double, ptr %i.ba, align 8, !tbaa !70
  %i.be = fptrunc nsz double %i.bd to float       ; 2 uses
  %.not120 = icmp eq i32 %i.aw, 0
  br i1 %.not120, label %.preheader, label %.preheader123

.preheader123:                                    ; preds = %bb.j, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ %.0105130, %bb.j ] ; 3 uses
  %.0102 = phi nsz float [ %.0102., %bb.k ], [ %i.bc, %bb.j ] ; 3 uses
  %.099 = phi nsz float [ %i.bj, %bb.k ], [ %i.be, %bb.j ] ; 2 uses
  %.0 = phi i32 [ %i.bk, %bb.k ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !64 ; 5 uses
  %i.bh = fcmp nsz ult float %i.bg, 0.000000e+00
  br i1 %i.bh, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.preheader123
  %i.bi = fcmp nsz ogt float %.0102, %i.bg
  %.0102. = select nsz i1 %i.bi, float %.0102, float %i.bg ; 2 uses
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %.099) ; 2 uses
  %i.bk = add nsw i32 %.0, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not122 = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %.not122, label %.preheader123, label %.loopexit.thread, !llvm.loop !99

.preheader:                                       ; preds = %bb.j, %bb.l
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.l ], [ %.0105130, %bb.j ] ; 3 uses
  %.1103 = phi nsz float [ %.1103., %bb.l ], [ %i.bc, %bb.j ] ; 3 uses
  %.1100 = phi nsz float [ %i.bq, %bb.l ], [ %i.be, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %i.br, %bb.l ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv137
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !64 ; 4 uses
  %i.bn = fcmp nsz olt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.preheader
  %i.bo = fneg nsz float %i.bm                    ; 2 uses
  %i.bp = fcmp nsz ogt float %.1103, %i.bo
  %.1103. = select nsz i1 %i.bp, float %.1103, float %i.bo ; 2 uses
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %.1100) ; 2 uses
  %i.br = add nsw i32 %.1, 1                      ; 2 uses
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %.not121 = icmp slt i64 %indvars.iv.next138, %i.o
  br i1 %.not121, label %.preheader, label %.loopexit.thread, !llvm.loop !100

.loopexit.thread:                                 ; preds = %bb.k, %bb.l
  %.2104.ph = phi float [ %.1103., %bb.l ], [ %.0102., %bb.k ]
  %.2101.ph = phi float [ %i.bq, %bb.l ], [ %i.bj, %bb.k ]
  %.2.ph = phi i32 [ %i.br, %bb.l ], [ %i.bk, %bb.k ]
  %i.bs = insertelement <2 x float> poison, float %.2104.ph, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %.2101.ph, i64 1
  %i.bu = fpext <2 x float> %i.bt to <2 x double>
  store <2 x double> %i.bu, ptr %i.az, align 8, !tbaa !67
  store i32 %.2.ph, ptr %i.ay, align 8, !tbaa !66
  br label %._crit_edge

.loopexit:                                        ; preds = %.preheader123, %.preheader
  %indvars.iv.lcssa.sink = phi i64 [ %indvars.iv137, %.preheader ], [ %indvars.iv, %.preheader123 ] ; 2 uses
  %.2104 = phi nsz float [ %.1103, %.preheader ], [ %.0102, %.preheader123 ]
  %.2101 = phi nsz float [ %.1100, %.preheader ], [ %.099, %.preheader123 ]
  %.2 = phi i32 [ %.1, %.preheader ], [ %.0, %.preheader123 ]
  %i.bv = trunc nsw i64 %indvars.iv.lcssa.sink to i32
  %i.bw = insertelement <2 x float> poison, float %.2104, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %.2101, i64 1
  %i.by = fpext <2 x float> %i.bx to <2 x double>
  store <2 x double> %i.by, ptr %i.az, align 8, !tbaa !67
  store i32 %.2, ptr %i.ay, align 8, !tbaa !66
  %i.bz = icmp sgt i32 %3, %i.bv
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.thread, %bb.c
  %.0108.lcssa = phi i32 [ %i.g, %bb.c ], [ %.2110, %.loopexit.thread ], [ %.2110, %.loopexit ]
  store i32 %.0108.lcssa, ptr %i.f, align 4, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @filter_channels_flt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !53
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.n = icmp sgt i32 %3, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  br i1 %i.n, label %.lr.ph51.us, label %.lr.ph53.split

.lr.ph51.us:                                      ; preds = %.lr.ph53, %.critedge._crit_edge.us
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %.critedge._crit_edge.us ], [ 0, %.lr.ph53 ] ; 5 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw [21168048 x i8], ptr %i.p, i64 %indvars.iv57 ; 5 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv57
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 3 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv57
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 3 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.aa = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.i, i32 noundef %i.z) #11
  %i.ab = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.m, i32 noundef %i.aa) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 21168040 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 21168032 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 21168016
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 21168008 ; 3 uses
  %.not54.i.i.us = icmp sgt i32 %i.ab, -1
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !71
  %i.ah = sub i64 %i.u, %i.y
  %diff.check = icmp ugt i64 %i.ah, -32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51.us, %.critedge.loopexit.us
  %i.ai = phi i32 [ %.pre, %.lr.ph51.us ], [ %i.ck, %.critedge.loopexit.us ] ; 2 uses
  %.04150.us = phi i32 [ 0, %.lr.ph51.us ], [ %i.cm, %.critedge.loopexit.us ] ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %.consume_pi.exit.us_crit_edge

.consume_pi.exit.us_crit_edge:                    ; preds = %bb.b
  %.pre60 = load double, ptr %i.ag, align 8, !tbaa !61
  br label %consume_pi.exit.us

bb.c:                                             ; preds = %bb.b
  %i.ak = load i32, ptr %i.ad, align 8, !tbaa !72 ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !68
  %i.ap = icmp sgt i32 %i.ao, 0
  %.val.pre.i.us = load ptr, ptr %i.a, align 8, !tbaa !20 ; 9 uses
  br i1 %i.ap, label %._crit_edge.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 124
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !45
  %.not.i.us = icmp eq i32 %i.ar, 0
  br i1 %.not.i.us, label %.split.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.d, %bb.c
  %i.as = load i32, ptr %i.am, align 8, !tbaa !66 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !67 ; 3 uses
  store <2 x double> %i.au, ptr %i.af, align 8, !tbaa !67
  %i.av = add nsw i32 %i.ak, 1
  %i.aw = icmp sgt i32 %i.ak, 881998
  %spec.store.select.i.us = select i1 %i.aw, i32 0, i32 %i.av
  store i32 %spec.store.select.i.us, ptr %i.ad, align 8, !tbaa !72
  %i.ax = load double, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 32
  %i.az = load double, ptr %i.ay, align 8, !tbaa !73
  %i.ba = fdiv nsz double 1.000000e+00, %i.az     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !74
  %.not.i.i.us = icmp eq i32 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 40
  %i.be = load double, ptr %i.bd, align 8, !tbaa !75 ; 2 uses
  %i.bf = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.bg = fcmp nsz ole double %i.bf, %i.be
  %i.bh = fcmp nsz oge double %i.bf, %i.be
  %.in.i.i.us = select i1 %.not.i.i.us, i1 %i.bh, i1 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !58 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !76
  %i.bm = fdiv nsz double %i.bl, %i.bf            ; 2 uses
  %i.bn = fcmp nsz ogt double %i.bj, %i.bm
  %..i.i.us = select nsz i1 %i.bn, double %i.bm, double %i.bj ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !77 ; 2 uses
  %i.bq = fcmp nsz ogt double %i.bp, f0x3CB0000000000000
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.us
  %i.br = sitofp nsz i32 %i.as to double
  %i.bs = extractelement <2 x double> %i.au, i64 1
  %i.bt = fdiv nsz double %i.bs, %i.br
  %i.bu = tail call nsz double @llvm.sqrt.f64(double %i.bt)
  %i.bv = fdiv nsz double %i.bp, %i.bu            ; 2 uses
  %i.bw = fcmp nsz ogt double %..i.i.us, %i.bv
  %...i.i.us = select nsz i1 %i.bw, double %i.bv, double %..i.i.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.us
  %.0.i.i.us = phi nsz double [ %...i.i.us, %bb.e ], [ %..i.i.us, %._crit_edge.i.us ] ; 4 uses
  br i1 %.not54.i.i.us, label %bb.g, label %next_gain.exit.i.us

bb.g:                                             ; preds = %bb.f
  br i1 %.in.i.i.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !78
  %i.bz = fsub nsz double %i.ax, %i.by            ; 2 uses
  %i.ca = fcmp nsz ogt double %i.ba, %i.bz
  %.55.i.i.us = select nsz i1 %i.ca, double %i.ba, double %i.bz ; 2 uses
  %i.cb = fcmp nsz ogt double %.0.i.i.us, %.55.i.i.us
  br i1 %i.cb, label %bb.i, label %next_gain.exit.i.us

bb.i:                                             ; preds = %bb.h
  br label %next_gain.exit.i.us

bb.j:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 48
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !79
  %i.ce = fadd nsz double %i.ax, %i.cd            ; 2 uses
  %i.cf = fcmp nsz ogt double %.0.i.i.us, %i.ce
  %..0.i.i.us = select nsz i1 %i.cf, double %i.ce, double %.0.i.i.us
  br label %next_gain.exit.i.us

next_gain.exit.i.us:                              ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.044.i.i.us = phi nsz double [ 1.000000e+00, %bb.f ], [ %..0.i.i.us, %bb.j ], [ %.55.i.i.us, %bb.i ], [ %.0.i.i.us, %bb.h ] ; 2 uses
  store double %.044.i.i.us, ptr %i.ag, align 8, !tbaa !61
  br label %consume_pi.exit.us

consume_pi.exit.us:                               ; preds = %.consume_pi.exit.us_crit_edge, %next_gain.exit.i.us
  %i.cg = phi double [ %.044.i.i.us, %next_gain.exit.i.us ], [ %.pre60, %.consume_pi.exit.us_crit_edge ]
  %i.ch = phi i32 [ %i.as, %next_gain.exit.i.us ], [ %i.ai, %.consume_pi.exit.us_crit_edge ] ; 2 uses
  %i.ci = sub nsw i32 %3, %.04150.us
  %..us = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.ch) ; 3 uses
  %i.cj = fptrunc nsz double %i.cg to float       ; 2 uses
  %i.ck = sub nsw i32 %i.ch, %..us                ; 2 uses
  store i32 %i.ck, ptr %i.ac, align 8, !tbaa !71
  %i.cl = load i32, ptr %i.o, align 8, !tbaa !80
  %.fr = freeze i32 %i.cl
  %.not.us = icmp eq i32 %.fr, 0
  %i.cm = add nsw i32 %..us, %.04150.us           ; 3 uses
  %i.cn = icmp sgt i32 %..us, 0
  %or.cond48.us = select i1 %.not.us, i1 %i.cn, i1 false
  br i1 %or.cond48.us, label %.lr.ph.split.us54.preheader, label %.critedge.loopexit.us

.lr.ph.split.us54.preheader:                      ; preds = %consume_pi.exit.us
  %i.co = sext i32 %.04150.us to i64              ; 5 uses
  %i.cp = sext i32 %i.cm to i64                   ; 2 uses
  %i.cq = add nsw i64 %i.co, 1
  %i.cr = tail call i64 @llvm.smax.i64(i64 %i.cq, i64 %i.cp)
  %i.cs = sub i64 %i.cr, %i.co                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 8
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us54.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us54.preheader
  %n.vec = and i64 %i.cs, -8                      ; 3 uses
  %i.ct = add i64 %n.vec, %i.co
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = add i64 %index, %i.co                   ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
end_hunk_0
