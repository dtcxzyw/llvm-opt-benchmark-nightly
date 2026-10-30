Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afftfilt?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@imagf:bb.a
  %i.t = fpext nsz float %i.s to double
  ret double %i.t
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cosh.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #5

declare double @av_bessel_i0(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_expr_free(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @tx_channel(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h                      ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %sext = shl i64 %i.i, 32
  %i.u = ashr exact i64 %sext, 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !147
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  tail call void %i.ab(ptr noundef %i.ae, ptr noundef %i.aa, ptr noundef %i.x, i64 noundef 8) #11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !146
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [8 x double], align 16            ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !71
  %i.j = fsub nsz float 1.000000e+00, %i.i
  %i.k = tail call nsz float @llvm.sqrt.f32(float %i.j) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = sext i32 %2 to i64
  %i.p = mul nsw i64 %i.n, %i.o
  %i.q = sext i32 %3 to i64                       ; 2 uses
  %i.r = sdiv i64 %i.p, %i.q                      ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = add nsw i32 %2, 1
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.n, %i.u
  %i.w = sdiv i64 %i.v, %i.q
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %1, i64 64, i1 false)
  %i.y = icmp slt i32 %i.s, %i.x
  br i1 %i.y, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = icmp sgt i32 %i.e, 0                    ; 2 uses
  %i.af = sdiv i32 %i.e, 2                        ; 2 uses
  %.not9398 = icmp slt i32 %i.e, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.088101 = add nsw i32 %i.af, 1                 ; 2 uses
  %i.ak = icmp slt i32 %.088101, %i.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.ao = sext i32 %i.e to i64                    ; 4 uses
  %i.ap = shl nsw i64 %i.ao, 2                    ; 2 uses
  %i.aq = sext i32 %i.af to i64                   ; 6 uses
  %i.ar = add nsw i64 %i.aq, 1                    ; 2 uses
  %sext = shl i64 %i.r, 32
  %i.as = ashr exact i64 %sext, 32
  %wide.trip.count = zext i32 %i.e to i64         ; 11 uses
  %wide.trip.count116 = zext i32 %.088101 to i64
  %wide.trip.count130 = zext nneg i32 %i.e to i64
  %i.at = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.au = shl nuw nsw i64 %wide.trip.count, 3     ; 3 uses
  %i.av = add nsw i64 %i.au, -4                   ; 3 uses
  %scevgep141 = getelementptr i8, ptr %i.g, i64 %i.at
  %i.aw = add nsw i64 %i.ao, -2
  %min.iters.check165 = icmp ult i32 %i.e, 6
  %n.vec167 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec167, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ax = sub nsw i64 %i.aq, %i.ao
  %i.ay = and i64 %i.ax, 1
  %lcmp.mod184.not.not = icmp eq i64 %i.ay, 0
  %indvars.iv.next121.prol = add nsw i64 %i.aq, -1 ; 2 uses
  %indvars.iv.next119.prol = add nsw i64 %i.aq, 2
  %i.az = icmp eq i64 %i.aw, %i.aq
  %min.iters.check = icmp ult i32 %i.e, 9
  %i.ba = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i64 8, i64 %i.ba
  %n.vec = sub nsw i64 %wide.trip.count, %i.bc    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = add nuw nsw i64 %n.vec, 1
  %i.bd = add nsw i64 %wide.trip.count, -1
  br label %bb.b

._crit_edge110:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0

bb.b:                                             ; preds = %.lr.ph109, %._crit_edge
  %indvars.iv132 = phi i64 [ %i.as, %.lr.ph109 ], [ %indvars.iv.next133, %._crit_edge ] ; 9 uses
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv132
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !61 ; 21 uses
  %i.bh = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv132
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61 ; 20 uses
  %i.bk = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !58
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv132
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !59 ; 11 uses
  %i.bp = trunc nsw i64 %indvars.iv132 to i32
  %i.bq = sitofp nsz i32 %i.bp to double
  store double %i.bq, ptr %i.ac, align 8, !tbaa !69
  %i.br = load i32, ptr %i.ad, align 8, !tbaa !160
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %.preheader94, label %.preheader95

.preheader95:                                     ; preds = %bb.b
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge.critedge

.lr.ph.preheader:                                 ; preds = %.preheader95
  br i1 %min.iters.check165, label %.lr.ph.preheader181, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph.preheader
  %scevgep151 = getelementptr i8, ptr %i.bj, i64 %i.av
  %scevgep152 = getelementptr i8, ptr %i.bg, i64 %i.av
  %scevgep153 = getelementptr i8, ptr %i.bj, i64 4
  %scevgep154 = getelementptr i8, ptr %i.bj, i64 %i.au
  %scevgep155 = getelementptr i8, ptr %i.bg, i64 4
  %scevgep156 = getelementptr i8, ptr %i.bg, i64 %i.au
  %bound0157 = icmp ult ptr %i.bj, %scevgep152
  %bound1158 = icmp ult ptr %i.bg, %scevgep151
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0160 = icmp ult ptr %scevgep153, %scevgep156
  %bound1161 = icmp ult ptr %scevgep155, %scevgep154
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %found.conflict159, %found.conflict162
  br i1 %conflict.rdx163, label %.lr.ph.preheader181, label %vector.body168

vector.body168:                                   ; preds = %vector.memcheck150, %vector.body168
  %index169 = phi i64 [ %index.next177, %vector.body168 ], [ 0, %vector.memcheck150 ] ; 4 uses
  %i.bs = or disjoint i64 %index169, 2            ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index169
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bs
  %wide.vec170 = load <4 x float>, ptr %i.bt, align 4, !tbaa !62
  %wide.vec173 = load <4 x float>, ptr %i.bu, align 4, !tbaa !62
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index169
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bs
  store <4 x float> %wide.vec170, ptr %i.bv, align 4, !tbaa !62
  store <4 x float> %wide.vec173, ptr %i.bw, align 4, !tbaa !62
  %index.next177 = add nuw i64 %index169, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next177, %n.vec167
  br i1 %i.bx, label %middle.block178, label %vector.body168, !llvm.loop !148

middle.block178:                                  ; preds = %vector.body168
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader181

.lr.ph.preheader181:                              ; preds = %vector.memcheck150, %.lr.ph.preheader, %middle.block178
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck150 ], [ 0, %.lr.ph.preheader ], [ %n.vec167, %middle.block178 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader181, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader181 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader181 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.prol
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.prol
  %i.ca = load <2 x float>, ptr %i.by, align 4, !tbaa !62
  store <2 x float> %i.ca, ptr %i.bz, align 4, !tbaa !62
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !149

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader181
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader181 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.cb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %.loopexit, label %.lr.ph

.preheader94:                                     ; preds = %bb.b
  br i1 %.not9398, label %.preheader, label %.lr.ph100

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.cf = load <2 x float>, ptr %i.cd, align 4, !tbaa !62
  store <2 x float> %i.cf, ptr %i.ce, align 4, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next
  %i.ci = load <2 x float>, ptr %i.cg, align 4, !tbaa !62
  store <2 x float> %i.ci, ptr %i.ch, align 4, !tbaa !62
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.1
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next.1
  %i.cl = load <2 x float>, ptr %i.cj, align 4, !tbaa !62
  store <2 x float> %i.cl, ptr %i.ck, align 4, !tbaa !62
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.2
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next.2
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !62
  store <2 x float> %i.co, ptr %i.cn, align 4, !tbaa !62
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !150

.preheader:                                       ; preds = %.lr.ph100, %.preheader94
  br i1 %i.ak, label %.lr.ph104.preheader, label %.loopexit

.lr.ph104.preheader:                              ; preds = %.preheader
  br i1 %lcmp.mod184.not.not, label %.lr.ph104.prol, label %.lr.ph104.prol.loopexit

.lr.ph104.prol:                                   ; preds = %.lr.ph104.preheader
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv.next121.prol ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !66
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ar ; 2 uses
  store float %i.cq, ptr %i.cr, align 4, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !67
  %i.cu = fneg nsz float %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store float %i.cu, ptr %i.cv, align 4, !tbaa !67
  br label %.lr.ph104.prol.loopexit

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader
  %indvars.iv120.unr = phi i64 [ %i.aq, %.lr.ph104.preheader ], [ %indvars.iv.next121.prol, %.lr.ph104.prol ]
  %indvars.iv118.unr = phi i64 [ %i.ar, %.lr.ph104.preheader ], [ %indvars.iv.next119.prol, %.lr.ph104.prol ]
  br i1 %i.az, label %.loopexit, label %.lr.ph104

.lr.ph100:                                        ; preds = %.preheader94, %.lr.ph100
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %.lr.ph100 ], [ 0, %.preheader94 ] ; 4 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.cx = uitofp nsz nneg i32 %i.cw to double
  store double %i.cx, ptr %i.ag, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv113
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !62
  %i.da = fpext <2 x float> %i.cz to <2 x double>
  store <2 x double> %i.da, ptr %i.ah, align 16, !tbaa !69
  %i.db = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %indvars.iv132
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !37
  %i.de = call nsz double @av_expr_eval(ptr noundef %i.dd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #11
  %i.df = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.df, i64 %indvars.iv132
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !37
  %i.di = call nsz double @av_expr_eval(ptr noundef %i.dh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #11
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv113
  %i.dk = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.di, i64 1
  %i.dm = fptrunc <2 x double> %i.dl to <2 x float>
  store <2 x float> %i.dm, ptr %i.dj, align 4, !tbaa !62
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.preheader, label %.lr.ph100, !llvm.loop !151

.lr.ph104:                                        ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104
  %indvars.iv120 = phi i64 [ %indvars.iv.next121.1, %.lr.ph104 ], [ %indvars.iv120.unr, %.lr.ph104.prol.loopexit ] ; 2 uses
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.1, %.lr.ph104 ], [ %indvars.iv118.unr, %.lr.ph104.prol.loopexit ] ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv120 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 -8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !66
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv118 ; 2 uses
  store float %i.dp, ptr %i.dq, align 4, !tbaa !66
  %i.dr = getelementptr i8, ptr %i.dn, i64 -4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !67
  %i.dt = fneg nsz float %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store float %i.dt, ptr %i.du, align 4, !tbaa !67
  %indvars.iv.next121.1 = add nsw i64 %indvars.iv120, -2 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv.next121.1 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !66
  %i.dx = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv118 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  store float %i.dw, ptr %i.dy, align 4, !tbaa !66
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !67
  %i.eb = fneg nsz float %i.ea
  %i.ec = getelementptr i8, ptr %i.dx, i64 12
  store float %i.eb, ptr %i.ec, align 4, !tbaa !67
  %indvars.iv.next119.1 = add nsw i64 %indvars.iv118, 2 ; 2 uses
  %exitcond126.not.1 = icmp eq i64 %indvars.iv.next119.1, %i.ao
  br i1 %exitcond126.not.1, label %.loopexit, label %.lr.ph104, !llvm.loop !152

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph104.prol.loopexit, %.lr.ph104, %middle.block178, %.preheader
  %i.ed = load ptr, ptr %i.al, align 8, !tbaa !162
  %i.ee = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %indvars.iv132
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !73
  call void %i.ed(ptr noundef %i.eg, ptr noundef %i.bg, ptr noundef %i.bj, i64 noundef 8) #11
  %i.eh = load i32, ptr %i.an, align 8, !tbaa !39
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.ei
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bo, ptr align 4 %i.ej, i64 %i.ap, i1 false)
  br i1 %i.ae, label %.lr.ph106.preheader, label %._crit_edge

.lr.ph106.preheader:                              ; preds = %.loopexit
  br i1 %min.iters.check, label %.lr.ph106.preheader180, label %vector.memcheck

.lr.ph106.preheader180:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph106.preheader
  %indvars.iv.next128.prol = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph106.preheader ], [ %4, %vector.body ]
  %indvars.iv127.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph106.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.ek = sub nsw i64 %wide.trip.count, %indvars.iv127.ph
  %xtraiter186 = and i64 %i.ek, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph106.prol.loopexit, label %.lr.ph106.prol

.lr.ph106.prol:                                   ; preds = %.lr.ph106.preheader180
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv127.ph
  %i.em = load float, ptr %i.el, align 4, !tbaa !66
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127.ph
  %i.eo = load float, ptr %i.en, align 4, !tbaa !62
  %i.ep = fmul nsz float %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv127.ph ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !62
  %i.es = call nsz float @llvm.fmuladd.f32(float %i.ep, float %i.k, float %i.er)
  store float %i.es, ptr %i.eq, align 4, !tbaa !62
  br label %.lr.ph106.prol.loopexit

.lr.ph106.prol.loopexit:                          ; preds = %.lr.ph106.prol, %.lr.ph106.preheader180
  %indvars.iv127.unr = phi i64 [ %indvars.iv127.ph, %.lr.ph106.preheader180 ], [ %indvars.iv.next128.prol, %.lr.ph106.prol ]
  %i.et = icmp eq i64 %indvars.iv127.ph, %i.bd
  br i1 %i.et, label %._crit_edge, label %.lr.ph106

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.at ; 2 uses
  %scevgep140 = getelementptr i8, ptr %i.bg, i64 %i.av
  %bound0 = icmp ult ptr %i.bo, %scevgep140
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0142 = icmp ult ptr %i.bo, %scevgep141
  %bound1143 = icmp ult ptr %i.g, %scevgep
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx = or i1 %found.conflict, %found.conflict144
  br i1 %conflict.rdx, label %.lr.ph106.preheader180, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %wide.vec = load <8 x float>, ptr %i.eu, align 4, !tbaa !66, !alias.scope !163
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec145 = load <8 x float>, ptr %i.ew, align 4, !tbaa !66, !alias.scope !163
  %strided.vec146 = shufflevector <8 x float> %wide.vec145, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load = load <4 x float>, ptr %i.ex, align 4, !tbaa !62, !alias.scope !164
  %wide.load147 = load <4 x float>, ptr %i.ey, align 4, !tbaa !62, !alias.scope !164
  %i.ez = fmul nsz <4 x float> %strided.vec, %wide.load
  %i.fa = fmul nsz <4 x float> %strided.vec146, %wide.load147
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load148 = load <4 x float>, ptr %i.fb, align 4, !tbaa !62, !alias.scope !165, !noalias !166
  %wide.load149 = load <4 x float>, ptr %i.fc, align 4, !tbaa !62, !alias.scope !165, !noalias !166
  %i.fd = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> %broadcast.splat, <4 x float> %wide.load148)
  %i.fe = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %broadcast.splat, <4 x float> %wide.load149)
  store <4 x float> %i.fd, ptr %i.fb, align 4, !tbaa !62, !alias.scope !165, !noalias !166
  store <4 x float> %i.fe, ptr %i.fc, align 4, !tbaa !62, !alias.scope !165, !noalias !166
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %.lr.ph106.preheader180, label %vector.body, !llvm.loop !157

._crit_edge.critedge:                             ; preds = %.preheader95
  %i.fg = load ptr, ptr %i.al, align 8, !tbaa !162
  %i.fh = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %indvars.iv132
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !73
  call void %i.fg(ptr noundef %i.fj, ptr noundef %i.bg, ptr noundef %i.bj, i64 noundef 8) #11
  %i.fk = load i32, ptr %i.an, align 8, !tbaa !39
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.fl
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bo, ptr align 4 %i.fm, i64 %i.ap, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph106.prol.loopexit, %.lr.ph106, %._crit_edge.critedge, %.loopexit
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next133 to i32
  %exitcond135.not = icmp eq i32 %lftr.wideiv, %i.x
  br i1 %exitcond135.not, label %._crit_edge110, label %bb.b, !llvm.loop !158

.lr.ph106:                                        ; preds = %.lr.ph106.prol.loopexit, %.lr.ph106
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.1, %.lr.ph106 ], [ %indvars.iv127.unr, %.lr.ph106.prol.loopexit ] ; 5 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv127
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !66
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !62
  %i.fr = fmul nsz float %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv127 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !62
  %i.fu = call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.k, float %i.ft)
  store float %i.fu, ptr %i.fs, align 4, !tbaa !62
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next128
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !66
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next128
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !62
  %i.fz = fmul nsz float %i.fw, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next128 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !62
  %i.gc = call nsz float @llvm.fmuladd.f32(float %i.fz, float %i.k, float %i.gb)
  store float %i.gc, ptr %i.ga, align 4, !tbaa !62
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %exitcond131.not.1 = icmp eq i64 %indvars.iv.next128.1, %wide.trip.count130
  br i1 %exitcond131.not.1, label %._crit_edge, label %.lr.ph106, !llvm.loop !159
}

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @av_expr_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x double>, <4 x double> } @llvm.sincos.v4f64(<4 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sin.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p2 _ZTS11AVTXContext", !14, i64 0}
!21 = !{!"p2 _ZTS14AVComplexFloat", !14, i64 0}
!22 = !{!"p2 _ZTS6AVExpr", !14, i64 0}
!23 = !{!"float", !5, i64 0}
!24 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!25 = !{!"p1 float", !9, i64 0}
!26 = !{!"AFFTFiltContext", !10, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !20, i64 32, !20, i64 40, !9, i64 48, !9, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !22, i64 104, !22, i64 112, !6, i64 120, !23, i64 124, !24, i64 128, !24, i64 136, !6, i64 144, !25, i64 152}
!27 = !{!26, !6, i64 92}
!28 = !{!26, !20, i64 40}
!29 = !{!26, !20, i64 32}
!30 = !{!26, !21, i64 64}
!31 = !{!26, !21, i64 72}
!32 = !{!26, !21, i64 80}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!26, !6, i64 88}
!35 = !{!26, !22, i64 104}
!36 = !{!"p1 _ZTS6AVExpr", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!26, !22, i64 112}
!39 = !{!26, !6, i64 120}
!40 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!41 = !{!"AVRational", !6, i64 0, !6, i64 4}
!42 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!43 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!44 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!45 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!46 = !{!"AVFilterFormatsConfig", !44, i64 0, !44, i64 8, !45, i64 16, !44, i64 24, !44, i64 32, !44, i64 40}
end_hunk_0
