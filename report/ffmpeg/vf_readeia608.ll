Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_readeia608?download=true
inline.NumInlined: 12
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@uninit:bb.a

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load <2 x i32>, ptr %i.c, align 8, !tbaa !26
  %i.e = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #11 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.c, align 8, !tbaa !27
  %i.i = load i32, ptr %i.g, align 4, !tbaa !28
  %i.j = tail call fastcc i32 @config_filter(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef %i.i)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store <2 x i32> %i.d, ptr %i.c, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %spec.select = add nuw nsw i32 %i.o, 1
  %i.p = tail call i32 @ff_filter_get_nb_threads(ptr noundef %i.d) #12
  %spec.select37 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.p)
  %i.q = tail call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef nonnull @extract_lines, ptr noundef %1, ptr noundef null, i32 noundef %spec.select37) #11 ; 0 uses
  %i.r = load i32, ptr %i.j, align 4, !tbaa !28   ; 2 uses
  %i.s = load i32, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %.not38 = icmp slt i32 %i.r, %i.s
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.v = call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef %1) #11
  ret i32 %i.v

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.w = phi i32 [ %i.s, %.lr.ph ], [ %i.aq, %bb.d ]
  %i.x = phi i32 [ %i.r, %.lr.ph ], [ %i.ar, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.03139 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ] ; 4 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !44
  %.not35 = icmp eq i32 %i.ab, 0
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.3, i32 noundef %.03139) #11 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !45
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 25
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !45
  %i.ai = zext i8 %i.ah to i32
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.4, i32 noundef %i.af, i32 noundef %i.ai) #11 ; 0 uses
  %i.ak = call i32 @av_dict_set(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #11 ; 0 uses
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.5, i32 noundef %.03139) #11 ; 0 uses
  %i.am = load i32, ptr %i.z, align 8, !tbaa !46
  %i.an = sext i32 %i.am to i64
  %i.ao = call i32 @av_dict_set_int(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a, i64 noundef %i.an, i32 noundef 0) #11 ; 0 uses
  %i.ap = add nsw i32 %.03139, 1
  %.pre = load i32, ptr %i.j, align 4, !tbaa !28
  %.pre42 = load i32, ptr %i.l, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.aq = phi i32 [ %.pre42, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  %i.ar = phi i32 [ %.pre, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.ap, %bb.c ], [ %.03139, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.as = sub nsw i32 %i.ar, %i.aq
  %i.at = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.at
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !61
}

; Function Attrs: nounwind uwtable
define internal range(i32 -558323010, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #11 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !65   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.i, ptr %i.j, align 4, !tbaa !47
  %notmask = shl nsw i32 -1, %i.i
  %i.k = xor i32 %notmask, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.k, ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr @read_byte, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @read_word, ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !28
  %i.s = tail call fastcc i32 @config_filter(ptr noundef nonnull %i.b, i32 noundef %i.p, i32 noundef %i.r)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.s, %bb.b ], [ -558323010, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @extract_lines(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [19 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = sub nsw i32 %i.e, %i.g
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %i.j = mul nsw i32 %i.i, %2
  %i.k = sdiv i32 %i.j, %3                        ; 2 uses
  %i.l = add nsw i32 %2, 1
  %i.m = mul nsw i32 %i.i, %i.l
  %i.n = sdiv i32 %i.m, %3                        ; 2 uses
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.v = sext i32 %i.k to i64
  br label %bb.b

._crit_edge:                                      ; preds = %extract_line.exit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %extract_line.exit
  %indvars.iv = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next, %extract_line.exit ] ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.x = getelementptr inbounds [48 x i8], ptr %i.w, i64 %indvars.iv ; 10 uses
  %i.y = load i32, ptr %i.t, align 8, !tbaa !51   ; 8 uses
  %i.z = load i32, ptr %i.f, align 8, !tbaa !27
  %i.aa = trunc nsw i64 %indvars.iv to i32
  %i.ab = add nsw i32 %i.z, %i.aa                 ; 3 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !19  ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52 ; 99 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.a, i8 0, i64 19, i1 false)
  %i.af = add i32 %i.y, 25                        ; 7 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ag, 24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 25 ; 4 uses
  store i8 0, ptr %i.aj, align 1, !tbaa !45
  store i8 0, ptr %i.ai, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47
  %i.ao = icmp sgt i32 %i.an, 8
  %i.ap = zext i1 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !84
  tail call void %i.ar(ptr noundef %1, i32 noundef %i.ab, ptr noundef %i.ae, i32 noundef %i.at, i32 noundef %i.y) #11, !inline_history !66
  %i.au = getelementptr i8, ptr %i.ac, i64 32     ; 2 uses
  %.val.i = load i32, ptr %i.au, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.ax = add nsw i32 %.val.i, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.az, i1 false)
  %i.ba = icmp sgt i32 %i.y, 0                    ; 3 uses
  br i1 %i.ba, label %.lr.ph.i.i, label %build_histogram.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !53 ; 3 uses
  %i.bc = add nuw i32 %i.y, 24                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 25) ; 2 uses
  %i.bd = zext nneg i32 %smax.i.i to i64          ; 2 uses
  %xtraiter = and i64 %i.bd, 1
  %i.be = icmp slt i32 %i.bc, 26
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %i.bf = and i64 %i.bd, 2147483646
  %i.bg = add nsw i64 %i.bf, -26
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 25, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.c ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !55
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !86
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !55
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !86
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !86
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.bg
  br i1 %niter.ncmp.1, label %build_histogram.exit.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !67

build_histogram.exit.i.loopexit.unr-lcssa:        ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %build_histogram.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %build_histogram.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 25, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %build_histogram.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod41 = trunc i32 %smax.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i.i.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !55
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !86
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !86
  br label %build_histogram.exit.i

build_histogram.exit.i:                           ; preds = %.epil.preheader, %build_histogram.exit.i.loopexit.unr-lcssa, %bb.b
  %.val106.i = load i32, ptr %i.au, align 8, !tbaa !48 ; 3 uses
  %.not4.i.i = icmp slt i32 %.val106.i, 0
  br i1 %.not4.i.i, label %._crit_edge11.i.i, label %.lr.ph.i107.i

.lr.ph.i107.i:                                    ; preds = %build_histogram.exit.i
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !53 ; 2 uses
  %i.cb = add nuw i32 %.val106.i, 1
  %wide.trip.count.i108.i = zext i32 %i.cb to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i107.i
  %indvars.iv.i109.i = phi i64 [ 0, %.lr.ph.i107.i ], [ %indvars.iv.next.i111.i, %bb.e ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i109.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !86
  %.not52.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not52.i.i, label %bb.e, label %._crit_edge.split.loop.exit40.i.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i111.i = add nuw nsw i64 %indvars.iv.i109.i, 1 ; 2 uses
  %exitcond.not.i112.i = icmp eq i64 %indvars.iv.next.i111.i, %wide.trip.count.i108.i
  br i1 %exitcond.not.i112.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !68

._crit_edge.split.loop.exit40.i.i:                ; preds = %bb.d
  %i.ce = trunc nuw nsw i64 %indvars.iv.i109.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %._crit_edge.split.loop.exit40.i.i
  %.048.i.i = phi i32 [ %i.ce, %._crit_edge.split.loop.exit40.i.i ], [ 0, %bb.e ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.0408.i.i = phi i32 [ %.val106.i, %._crit_edge.i.i ], [ %i.ci, %bb.g ] ; 4 uses
  %i.cf = zext nneg i32 %.0408.i.i to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !86
  %.not53.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not53.i.i, label %bb.g, label %._crit_edge11.i.i

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %.0408.i.i, -1
  %i.cj = icmp sgt i32 %.0408.i.i, 0
  br i1 %i.cj, label %bb.f, label %._crit_edge11.i.i, !llvm.loop !69

._crit_edge11.i.i:                                ; preds = %bb.g, %bb.f, %build_histogram.exit.i
  %.04839.i.i = phi i32 [ 0, %build_histogram.exit.i ], [ %.048.i.i, %bb.f ], [ %.048.i.i, %bb.g ] ; 5 uses
  %.047.i.i = phi i32 [ 0, %build_histogram.exit.i ], [ 0, %bb.g ], [ %.0408.i.i, %bb.f ] ; 3 uses
  %i.ck = sub nsw i32 %.047.i.i, %.04839.i.i      ; 2 uses
  %i.cl = sdiv i32 %i.ck, 2
  %i.cm = add i32 %i.cl, %.04839.i.i              ; 4 uses
  %.not5415.i.i = icmp slt i32 %i.ck, -1
  br i1 %.not5415.i.i, label %.preheader.i.i, label %.lr.ph20.i.i

.lr.ph20.i.i:                                     ; preds = %._crit_edge11.i.i
  %i.cn = load ptr, ptr %i.av, align 8, !tbaa !53 ; 3 uses
  %i.co = zext i32 %.04839.i.i to i64             ; 3 uses
  %smax.i110.i = tail call i32 @llvm.smax.i32(i32 %.04839.i.i, i32 %i.cm)
  %i.cp = zext nneg i32 %smax.i110.i to i64
  %i.cq = add nuw nsw i64 %i.cp, 1
  %i.cr = sub nsw i64 %i.cq, %i.co                ; 3 uses
  %xtraiter43 = and i64 %i.cr, 1
  %.not78 = icmp slt i32 %.04839.i.i, %i.cm
  br i1 %.not78, label %.lr.ph20.i.i.new, label %.epil.preheader42

.lr.ph20.i.i.new:                                 ; preds = %.lr.ph20.i.i
  %unroll_iter47 = and i64 %i.cr, -2
  br label %bb.h

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %bb.h
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.preheader.i.i, label %.epil.preheader42

.epil.preheader42:                                ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph20.i.i
  %indvars.iv30.i.i.epil.init = phi i64 [ %i.co, %.lr.ph20.i.i ], [ %indvars.iv.next31.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.04217.i.i.epil.init = phi i64 [ 0, %.lr.ph20.i.i ], [ %spec.select561.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ]
  %.04516.i.i.epil.init = phi i32 [ 0, %.lr.ph20.i.i ], [ %spec.select.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i64 %i.cr to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv30.i.i.epil.init
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !86
  %sext.i.i.epil = shl i64 %.04217.i.i.epil.init, 32
  %i.cu = ashr exact i64 %sext.i.i.epil, 32
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv30.i.i.epil.init to i32
  %spec.select.i.i.epil = select i1 %i.cv, i32 %i.cw, i32 %.04516.i.i.epil.init
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.epil.preheader42, %.preheader.i.i.loopexit.unr-lcssa, %._crit_edge11.i.i
  %.045.lcssa.i.i = phi i32 [ 0, %._crit_edge11.i.i ], [ %spec.select.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader42 ] ; 3 uses
  %.not5522.i.i = icmp slt i32 %.047.i.i, %i.cm
  br i1 %.not5522.i.i, label %find_black_and_white.exit.i, label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.preheader.i.i
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !53 ; 3 uses
  %i.cy = zext i32 %.047.i.i to i64               ; 4 uses
  %i.cz = sext i32 %i.cm to i64                   ; 2 uses
  %i.da = add nuw nsw i64 %i.cy, 1
  %i.db = sub nsw i64 %i.da, %i.cz                ; 3 uses
  %xtraiter50 = and i64 %i.db, 1
  %i.dc = icmp eq i64 %i.cy, %i.cz
  br i1 %i.dc, label %.epil.preheader49, label %.lr.ph26.i.i.new

.lr.ph26.i.i.new:                                 ; preds = %.lr.ph26.i.i
  %unroll_iter54 = and i64 %i.db, -2
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph20.i.i.new
  %indvars.iv30.i.i = phi i64 [ %i.co, %.lr.ph20.i.i.new ], [ %indvars.iv.next31.i.i.1, %bb.h ] ; 4 uses
  %.04217.i.i = phi i64 [ 0, %.lr.ph20.i.i.new ], [ %spec.select561.i.i.1, %bb.h ]
  %.04516.i.i = phi i32 [ 0, %.lr.ph20.i.i.new ], [ %spec.select.i.i.1, %bb.h ]
  %niter48 = phi i64 [ 0, %.lr.ph20.i.i.new ], [ %niter48.next.1, %bb.h ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv30.i.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !86 ; 2 uses
  %sext.i.i = shl i64 %.04217.i.i, 32
  %i.df = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.dg = icmp ugt i64 %i.de, %i.df
  %i.dh = trunc nuw nsw i64 %indvars.iv30.i.i to i32
  %spec.select.i.i = select i1 %i.dg, i32 %i.dh, i32 %.04516.i.i
  %spec.select561.i.i = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.df)
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next31.i.i
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !86 ; 2 uses
  %sext.i.i.1 = shl i64 %spec.select561.i.i, 32
  %i.dk = ashr exact i64 %sext.i.i.1, 32          ; 2 uses
  %i.dl = icmp ugt i64 %i.dj, %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv.next31.i.i to i32
  %spec.select.i.i.1 = select i1 %i.dl, i32 %i.dm, i32 %spec.select.i.i ; 3 uses
  %spec.select561.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dk) ; 2 uses
  %indvars.iv.next31.i.i.1 = add nuw nsw i64 %indvars.iv30.i.i, 2 ; 2 uses
  %niter48.next.1 = add i64 %niter48, 2           ; 2 uses
  %niter48.ncmp.1 = icmp eq i64 %niter48.next.1, %unroll_iter47
  br i1 %niter48.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !70

bb.i:                                             ; preds = %bb.i, %.lr.ph26.i.i.new
  %indvars.iv35.i.i = phi i64 [ %i.cy, %.lr.ph26.i.i.new ], [ %indvars.iv.next36.i.i.1, %bb.i ] ; 4 uses
  %.224.i.i = phi i64 [ 0, %.lr.ph26.i.i.new ], [ %spec.select582.i.i.1, %bb.i ]
  %.04323.i.i = phi i32 [ 0, %.lr.ph26.i.i.new ], [ %spec.select57.i.i.1, %bb.i ]
  %niter55 = phi i64 [ 0, %.lr.ph26.i.i.new ], [ %niter55.next.1, %bb.i ]
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %indvars.iv35.i.i
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !86 ; 2 uses
  %sext3.i.i = shl i64 %.224.i.i, 32
  %i.dp = ashr exact i64 %sext3.i.i, 32           ; 2 uses
  %i.dq = icmp ugt i64 %i.do, %i.dp
  %i.dr = trunc nsw i64 %indvars.iv35.i.i to i32
  %spec.select57.i.i = select i1 %i.dq, i32 %i.dr, i32 %.04323.i.i
  %spec.select582.i.i = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dp)
  %indvars.iv.next36.i.i = add nsw i64 %indvars.iv35.i.i, -1 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %indvars.iv.next36.i.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %sext3.i.i.1 = shl i64 %spec.select582.i.i, 32
  %i.du = ashr exact i64 %sext3.i.i.1, 32         ; 2 uses
  %i.dv = icmp ugt i64 %i.dt, %i.du
  %i.dw = trunc nsw i64 %indvars.iv.next36.i.i to i32
  %spec.select57.i.i.1 = select i1 %i.dv, i32 %i.dw, i32 %spec.select57.i.i ; 3 uses
  %spec.select582.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.du) ; 2 uses
  %indvars.iv.next36.i.i.1 = add nsw i64 %indvars.iv35.i.i, -2 ; 2 uses
  %niter55.next.1 = add i64 %niter55, 2           ; 2 uses
  %niter55.ncmp.1.not = icmp eq i64 %niter55.next.1, %unroll_iter54
  br i1 %niter55.ncmp.1.not, label %find_black_and_white.exit.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !71

find_black_and_white.exit.i.loopexit.unr-lcssa:   ; preds = %bb.i
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %find_black_and_white.exit.i, label %.epil.preheader49

.epil.preheader49:                                ; preds = %find_black_and_white.exit.i.loopexit.unr-lcssa, %.lr.ph26.i.i
  %indvars.iv35.i.i.epil.init = phi i64 [ %i.cy, %.lr.ph26.i.i ], [ %indvars.iv.next36.i.i.1, %find_black_and_white.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.224.i.i.epil.init = phi i64 [ 0, %.lr.ph26.i.i ], [ %spec.select582.i.i.1, %find_black_and_white.exit.i.loopexit.unr-lcssa ]
  %.04323.i.i.epil.init = phi i32 [ 0, %.lr.ph26.i.i ], [ %spec.select57.i.i.1, %find_black_and_white.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod53 = trunc i64 %i.db to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %indvars.iv35.i.i.epil.init
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !86
  %sext3.i.i.epil = shl i64 %.224.i.i.epil.init, 32
  %i.dz = ashr exact i64 %sext3.i.i.epil, 32
  %i.ea = icmp ugt i64 %i.dy, %i.dz
  %i.eb = trunc nsw i64 %indvars.iv35.i.i.epil.init to i32
  %spec.select57.i.i.epil = select i1 %i.ea, i32 %i.eb, i32 %.04323.i.i.epil.init
  br label %find_black_and_white.exit.i

find_black_and_white.exit.i:                      ; preds = %.epil.preheader49, %find_black_and_white.exit.i.loopexit.unr-lcssa, %.preheader.i.i
  %.043.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %spec.select57.i.i.1, %find_black_and_white.exit.i.loopexit.unr-lcssa ], [ %spec.select57.i.i.epil, %.epil.preheader49 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %.045.lcssa.i.i, ptr %i.ec, align 4, !tbaa !87
  %i.ed = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %.043.lcssa.i.i, ptr %i.ed, align 8, !tbaa !88
  %i.ee = sub nsw i32 %.043.lcssa.i.i, %.045.lcssa.i.i
  %i.ef = icmp slt i32 %i.ee, 5
  br i1 %i.ef, label %extract_line.exit, label %bb.j

bb.j:                                             ; preds = %find_black_and_white.exit.i
  br i1 %i.ba, label %.lr.ph.preheader.i.i, label %.preheader.i113.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %smax.i116.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 26)
  %wide.trip.count.i117.i = zext nneg i32 %smax.i116.i to i64 ; 2 uses
  %min.iters.check = icmp slt i32 %i.af, 30
  br i1 %min.iters.check, label %.lr.ph.i118.i.preheader, label %vector.ph

.lr.ph.i118.i.preheader:                          ; preds = %vector.body, %.lr.ph.preheader.i.i
  %indvars.iv.i119.i.ph = phi i64 [ 25, %.lr.ph.preheader.i.i ], [ %i.ej, %vector.body ]
  br label %.lr.ph.i118.i

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %4 = add nsw i64 %wide.trip.count.i117.i, -25   ; 2 uses
  %i.eg = and i64 %4, 3                           ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  %i.ei = select i1 %i.eh, i64 4, i64 %i.eg
  %n.vec = sub nsw i64 %4, %i.ei                  ; 2 uses
  %i.ej = add nsw i64 %n.vec, 25
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %index ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 600
  %i.em = getelementptr [24 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 624
  %i.eo = getelementptr [24 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 648
  %i.eq = getelementptr [24 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 672
  %i.es = load i32, ptr %i.el, align 4, !tbaa !55
  %i.et = load i32, ptr %i.en, align 4, !tbaa !55
  %i.eu = load i32, ptr %i.ep, align 4, !tbaa !55
  %i.ev = load i32, ptr %i.er, align 4, !tbaa !55
  %i.ew = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %i.ex = insertelement <4 x i32> %i.ew, i32 %i.et, i64 1
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 2
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 3
  %i.fa = sitofp nsz <4 x i32> %i.ez to <4 x float>
  %i.fb = fdiv nsz <4 x float> %i.fa, splat (float 2.550000e+02) ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ek, i64 608
  %i.fd = getelementptr i8, ptr %i.em, i64 632
  %i.fe = getelementptr i8, ptr %i.eo, i64 656
  %i.ff = getelementptr i8, ptr %i.eq, i64 680
  %i.fg = extractelement <4 x float> %i.fb, i64 0 ; 2 uses
  store float %i.fg, ptr %i.fc, align 4, !tbaa !89
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ek, i64 612
  store float %i.fg, ptr %i.fh, align 4, !tbaa !90
  %i.fi = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  store <2 x float> %i.fi, ptr %i.fd, align 4, !tbaa !91
  %i.fj = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  store <2 x float> %i.fj, ptr %i.fe, align 4, !tbaa !91
  %i.fk = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  store <2 x float> %i.fk, ptr %i.ff, align 4, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %.lr.ph.i118.i.preheader, label %vector.body, !llvm.loop !72

.preheader.i113.i:                                ; preds = %.lr.ph.i118.i, %bb.j
  %i.fm = sitofp nsz i32 %i.y to float            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !94
  %i.fp = fmul nsz float %i.fo, %i.fm
  %i.fq = fptosi float %i.fp to i32               ; 4 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  %i.fs = sitofp nsz i32 %i.fq to float           ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fq to i64  ; 2 uses
  br i1 %i.fr, label %.lr.ph.preheader.i.us.i.i.preheader, label %.preheader.split.i.i

.lr.ph.preheader.i.us.i.i.preheader:              ; preds = %.preheader.i113.i
  %xtraiter56 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.ft = icmp ult i32 %i.fq, 4
  %unroll_iter60 = and i64 %wide.trip.count.i.i.i, 2147483644
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  %lcmp.mod59 = icmp ne i64 %xtraiter56, 0
  br label %.lr.ph.preheader.i.us.i.i

.lr.ph.preheader.i.us.i.i:                        ; preds = %.lr.ph.preheader.i.us.i.i.preheader, %meanf.exit106.loopexit.us.i.i
  %indvars.iv130.i.i = phi i64 [ %indvars.iv.next131.i.i, %meanf.exit106.loopexit.us.i.i ], [ 0, %.lr.ph.preheader.i.us.i.i.preheader ] ; 2 uses
  br i1 %i.ft, label %.lr.ph.i101.us.i.i.epil.preheader, label %.lr.ph.i101.us.i.i

.lr.ph.i101.us.i.i:                               ; preds = %.lr.ph.preheader.i.us.i.i, %.lr.ph.i101.us.i.i
  %indvars.iv.i102.us.i.i = phi i64 [ %indvars.iv.next.i104.us.i.i.3, %.lr.ph.i101.us.i.i ], [ 0, %.lr.ph.preheader.i.us.i.i ] ; 5 uses
  %.0810.i103.us.i.i = phi float [ %i.gj, %.lr.ph.i101.us.i.i ], [ 0.000000e+00, %.lr.ph.preheader.i.us.i.i ]
  %niter61 = phi i64 [ %niter61.next.3, %.lr.ph.i101.us.i.i ], [ 0, %.lr.ph.preheader.i.us.i.i ]
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !90
  %i.fx = fadd nsz float %.0810.i103.us.i.i, %i.fw
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 36
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !90
  %i.gb = fadd nsz float %i.fx, %i.ga
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 60
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !90
  %i.gf = fadd nsz float %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 84
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !90
  %i.gj = fadd nsz float %i.gf, %i.gi             ; 3 uses
  %indvars.iv.next.i104.us.i.i.3 = add nuw nsw i64 %indvars.iv.i102.us.i.i, 4 ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %meanf.exit106.loopexit.us.i.i.unr-lcssa, label %.lr.ph.i101.us.i.i, !llvm.loop !73

meanf.exit106.loopexit.us.i.i.unr-lcssa:          ; preds = %.lr.ph.i101.us.i.i
  br i1 %lcmp.mod57.not, label %meanf.exit106.loopexit.us.i.i, label %.lr.ph.i101.us.i.i.epil.preheader

.lr.ph.i101.us.i.i.epil.preheader:                ; preds = %meanf.exit106.loopexit.us.i.i.unr-lcssa, %.lr.ph.preheader.i.us.i.i
  %indvars.iv.i102.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i.i ], [ %indvars.iv.next.i104.us.i.i.3, %meanf.exit106.loopexit.us.i.i.unr-lcssa ]
  %.0810.i103.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.us.i.i ], [ %i.gj, %meanf.exit106.loopexit.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %.lr.ph.i101.us.i.i.epil

.lr.ph.i101.us.i.i.epil:                          ; preds = %.lr.ph.i101.us.i.i.epil, %.lr.ph.i101.us.i.i.epil.preheader
  %indvars.iv.i102.us.i.i.epil = phi i64 [ %indvars.iv.i102.us.i.i.epil.init, %.lr.ph.i101.us.i.i.epil.preheader ], [ %indvars.iv.next.i104.us.i.i.epil, %.lr.ph.i101.us.i.i.epil ] ; 2 uses
  %.0810.i103.us.i.i.epil = phi float [ %.0810.i103.us.i.i.epil.init, %.lr.ph.i101.us.i.i.epil.preheader ], [ %i.gn, %.lr.ph.i101.us.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i101.us.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i101.us.i.i.epil ]
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i.epil
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !90
  %i.gn = fadd nsz float %.0810.i103.us.i.i.epil, %i.gm ; 2 uses
  %indvars.iv.next.i104.us.i.i.epil = add nuw nsw i64 %indvars.iv.i102.us.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter56
  br i1 %epil.iter.cmp.not, label %meanf.exit106.loopexit.us.i.i, label %.lr.ph.i101.us.i.i.epil, !llvm.loop !74

meanf.exit106.loopexit.us.i.i:                    ; preds = %.lr.ph.i101.us.i.i.epil, %meanf.exit106.loopexit.us.i.i.unr-lcssa
  %.lcssa = phi float [ %i.gj, %meanf.exit106.loopexit.us.i.i.unr-lcssa ], [ %i.gn, %.lr.ph.i101.us.i.i.epil ]
  %i.go = fdiv nsz float %.lcssa, %i.fs           ; 2 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv130.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store float %i.go, ptr %i.gq, align 4, !tbaa !89
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store float %i.go, ptr %i.gr, align 4, !tbaa !90
  %indvars.iv.next131.i.i = add nuw nsw i64 %indvars.iv130.i.i, 1 ; 2 uses
  %exitcond133.not.i.i = icmp eq i64 %indvars.iv.next131.i.i, 25
  br i1 %exitcond133.not.i.i, label %.lr.ph.i.preheader.loopexit.i.i, label %.lr.ph.preheader.i.us.i.i, !llvm.loop !75

.preheader.split.i.i:                             ; preds = %.preheader.i113.i
  %i.gs = fdiv nsz float 0.000000e+00, %i.fs      ; 75 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %i.gs, ptr %i.gt, align 4, !tbaa !89
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store float %i.gs, ptr %i.gu, align 4, !tbaa !90
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store float %i.gs, ptr %i.gv, align 4, !tbaa !89
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  store float %i.gs, ptr %i.gw, align 4, !tbaa !90
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store float %i.gs, ptr %i.gx, align 4, !tbaa !89
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  store float %i.gs, ptr %i.gy, align 4, !tbaa !90
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store float %i.gs, ptr %i.gz, align 4, !tbaa !89
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ae, i64 84
  store float %i.gs, ptr %i.ha, align 4, !tbaa !90
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store float %i.gs, ptr %i.hb, align 4, !tbaa !89
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ae, i64 108
  store float %i.gs, ptr %i.hc, align 4, !tbaa !90
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store float %i.gs, ptr %i.hd, align 4, !tbaa !89
  %i.he = getelementptr inbounds nuw i8, ptr %i.ae, i64 132
  store float %i.gs, ptr %i.he, align 4, !tbaa !90
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  store float %i.gs, ptr %i.hf, align 4, !tbaa !89
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ae, i64 156
  store float %i.gs, ptr %i.hg, align 4, !tbaa !90
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  store float %i.gs, ptr %i.hh, align 4, !tbaa !89
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ae, i64 180
  store float %i.gs, ptr %i.hi, align 4, !tbaa !90
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  store float %i.gs, ptr %i.hj, align 4, !tbaa !89
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ae, i64 204
  store float %i.gs, ptr %i.hk, align 4, !tbaa !90
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  store float %i.gs, ptr %i.hl, align 4, !tbaa !89
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ae, i64 228
  store float %i.gs, ptr %i.hm, align 4, !tbaa !90
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  store float %i.gs, ptr %i.hn, align 4, !tbaa !89
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ae, i64 252
  store float %i.gs, ptr %i.ho, align 4, !tbaa !90
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  store float %i.gs, ptr %i.hp, align 4, !tbaa !89
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ae, i64 276
  store float %i.gs, ptr %i.hq, align 4, !tbaa !90
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  store float %i.gs, ptr %i.hr, align 4, !tbaa !89
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ae, i64 300
  store float %i.gs, ptr %i.hs, align 4, !tbaa !90
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ae, i64 320
  store float %i.gs, ptr %i.ht, align 4, !tbaa !89
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ae, i64 324
  store float %i.gs, ptr %i.hu, align 4, !tbaa !90
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ae, i64 344
  store float %i.gs, ptr %i.hv, align 4, !tbaa !89
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ae, i64 348
  store float %i.gs, ptr %i.hw, align 4, !tbaa !90
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ae, i64 368
  store float %i.gs, ptr %i.hx, align 4, !tbaa !89
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ae, i64 372
  store float %i.gs, ptr %i.hy, align 4, !tbaa !90
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ae, i64 392
  store float %i.gs, ptr %i.hz, align 4, !tbaa !89
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ae, i64 396
  store float %i.gs, ptr %i.ia, align 4, !tbaa !90
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  store float %i.gs, ptr %i.ib, align 4, !tbaa !89
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ae, i64 420
end_hunk_0
