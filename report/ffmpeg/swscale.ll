Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swscale?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ff_swscale:._crit_edge527
  %i.mo = shl nuw nsw i64 %index, 2
  %i.mp = getelementptr inbounds nuw i8, ptr %.02326.i, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.mp, align 1, !tbaa !48
  store <4 x i32> %broadcast.splat, ptr %i.mq, align 1, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mr = icmp eq i64 %index.next, %n.vec
  br i1 %i.mr, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i448, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i444, %middle.block
  %indvars.iv.i445.ph = phi i64 [ 0, %.preheader.i444 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i448:                                 ; preds = %scalar.ph, %middle.block
  %i.ms = getelementptr inbounds i8, ptr %.02326.i, i64 %i.mk
  %i.mt = add nuw nsw i32 %.02127.i, 1            ; 2 uses
  %exitcond30.not.i = icmp eq i32 %i.mt, %i.jy
  br i1 %exitcond30.not.i, label %fillPlane16.exit, label %.preheader.i444, !llvm.loop !113

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i445 = phi i64 [ %indvars.iv.next.i446, %scalar.ph ], [ %indvars.iv.i445.ph, %scalar.ph.preheader ] ; 2 uses
  %i.mu = shl nuw nsw i64 %indvars.iv.i445, 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.02326.i, i64 %i.mu
  store i32 %spec.select.i, ptr %i.mv, align 1, !tbaa !48
  %indvars.iv.next.i446 = add nuw nsw i64 %indvars.iv.i445, 1 ; 2 uses
  %exitcond.not.i447 = icmp eq i64 %indvars.iv.next.i446, %wide.trip.count.i443
  br i1 %exitcond.not.i447, label %._crit_edge.i448, label %scalar.ph, !llvm.loop !114

bb.bm:                                            ; preds = %is32BPS.exit
  %i.mw = icmp sgt i32 %i.jy, 0
  br i1 %i.mw, label %.lr.ph504, label %fillPlane16.exit

.lr.ph504:                                        ; preds = %bb.bm
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !43
  %i.mz = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !39 ; 2 uses
  %i.nb = mul nsw i32 %i.na, %i.jx
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds i8, ptr %i.my, i64 %i.nc ; 2 uses
  %i.ne = sext i32 %i.o to i64                    ; 9 uses
  %i.nf = sext i32 %i.na to i64                   ; 9 uses
  %xtraiter = and i32 %i.jy, 7                    ; 3 uses
  %i.ng = sub i32 %.0377, %.1378.lcssa
  %i.nh = icmp ugt i32 %i.ng, -8
  br i1 %i.nh, label %.epil.preheader, label %.lr.ph504.new

.lr.ph504.new:                                    ; preds = %.lr.ph504
  %unroll_iter = and i32 %i.jy, 2147483640
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph504.new
  %.0.i438502 = phi ptr [ %i.nd, %.lr.ph504.new ], [ %i.np, %bb.bn ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph504.new ], [ %niter.next.7, %bb.bn ]
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i438502, i8 -1, i64 %i.ne, i1 false)
  %i.ni = getelementptr inbounds i8, ptr %.0.i438502, i64 %i.nf ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ni, i8 -1, i64 %i.ne, i1 false)
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 %i.nf ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.nj, i8 -1, i64 %i.ne, i1 false)
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 %i.nf ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.nk, i8 -1, i64 %i.ne, i1 false)
  %i.nl = getelementptr inbounds i8, ptr %i.nk, i64 %i.nf ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.nl, i8 -1, i64 %i.ne, i1 false)
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 %i.nf ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.nm, i8 -1, i64 %i.ne, i1 false)
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 %i.nf ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.nn, i8 -1, i64 %i.ne, i1 false)
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.nf ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.no, i8 -1, i64 %i.ne, i1 false)
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 %i.nf ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %fillPlane16.exit.loopexit592.unr-lcssa, label %bb.bn, !llvm.loop !115

fillPlane16.exit.loopexit592.unr-lcssa:           ; preds = %bb.bn
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fillPlane16.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %fillPlane16.exit.loopexit592.unr-lcssa, %.lr.ph504
  %.0.i438502.epil.init = phi ptr [ %i.nd, %.lr.ph504 ], [ %i.np, %fillPlane16.exit.loopexit592.unr-lcssa ]
  %lcmp.mod597 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod597)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.epil.preheader
  %.0.i438502.epil = phi ptr [ %.0.i438502.epil.init, %.epil.preheader ], [ %i.nq, %bb.bo ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bo ]
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i438502.epil, i8 -1, i64 %i.ne, i1 false)
  %i.nq = getelementptr inbounds i8, ptr %.0.i438502.epil, i64 %i.nf
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %fillPlane16.exit, label %bb.bo, !llvm.loop !116

fillPlane16.exit:                                 ; preds = %fillPlane16.exit.loopexit592.unr-lcssa, %bb.bo, %._crit_edge.i448, %._crit_edge.i, %bb.bm, %bb.ax, %.preheader.lr.ph.i441, %isBE.exit, %.preheader.lr.ph.i, %isBE.exit436, %isPlanar.exit, %isALPHA.exit
  store i32 %.1378.lcssa, ptr %i.bi, align 16, !tbaa !38
  store i32 %.2376, ptr %i.bk, align 8, !tbaa !130
  store i32 %.2373, ptr %i.bm, align 4, !tbaa !131
  %i.nr = sub nsw i32 %.1378.lcssa, %.0377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.nr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ff_init_vscale_pfn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_init_slice_from_src(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare i32 @ff_rotate_slice(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_sws_init_output_funcs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define void @ff_sws_init_range_convert(ptr nofree noundef captures(none) initializes((53128, 53144)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 53128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 53136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 16, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = load i32, ptr %i.e, align 4, !tbaa !155
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.i = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.h) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %isAnyRGB.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 879) #14
  tail call void @abort() #15
  unreachable

isAnyRGB.exit:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !42
  %i.l = and i64 %i.k, 32
  %i.m = icmp eq i64 %i.l, 0
  %i.n = add i32 %i.h, -11
  %i.o = icmp ult i32 %i.n, -2
  %narrow.not = and i1 %i.o, %i.m
  br i1 %narrow.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %isAnyRGB.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = load i32, ptr %i.p, align 8, !tbaa !51   ; 4 uses
  %i.r = icmp slt i32 %i.q, 32
  br i1 %i.r, label %solve_range_convert.exit.i, label %bb.e

solve_range_convert.exit.i:                       ; preds = %bb.d
  %.not.i21 = icmp eq i32 %i.q, 0
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.q, i32 16)
  %i.s = select i1 %.not.i21, i32 8, i32 %spec.select.i ; 4 uses
  %i.t = add nsw i32 %i.s, -8                     ; 3 uses
  %i.u = shl nuw nsw i32 16, %i.t
  %i.v = trunc i32 %i.u to i16                    ; 2 uses
  %i.w = shl nuw nsw i32 235, %i.t
  %i.x = trunc i32 %i.w to i16                    ; 2 uses
  %i.y = shl nuw nsw i32 240, %i.t
  %i.z = trunc i32 %i.y to i16                    ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.s
  %i.aa = trunc i32 %notmask.i to i16
  %i.ab = xor i16 %i.aa, -1                       ; 4 uses
  %i.ac = load i32, ptr %i.c, align 16, !tbaa !154
  %.not45.i = icmp eq i32 %i.ac, 0                ; 10 uses
  %..i = select i1 %.not45.i, i16 %i.v, i16 0     ; 2 uses
  %.46.i = select i1 %.not45.i, i16 %i.x, i16 %i.ab ; 2 uses
  %.47.i = select i1 %.not45.i, i16 %i.z, i16 %i.ab ; 2 uses
  %.48.i = select i1 %.not45.i, i16 0, i16 %i.v   ; 2 uses
  %.49.i = select i1 %.not45.i, i16 %i.ab, i16 %i.x ; 2 uses
  %.50.i = select i1 %.not45.i, i16 %i.ab, i16 %i.z ; 2 uses
  %i.ad = icmp slt i32 %i.s, 15                   ; 2 uses
  %i.ae = select i1 %i.ad, i32 14, i32 18         ; 2 uses
  %1 = select i1 %i.ad, i32 15, i32 19
  %i.af = sub nsw i32 %1, %i.s                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 53144
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 53152
  %i.ai = add nsw i32 %i.af, %i.ae
  %i.aj = zext nneg i32 %i.ai to i64              ; 4 uses
  %i.ak = sub i16 %.49.i, %.48.i
  %i.al = zext i16 %i.ak to i64
  %i.am = shl i64 %i.al, %i.aj
  %i.an = sub i16 %.46.i, %..i
  %i.ao = zext i16 %i.an to i64
  %i.ap = udiv i64 %i.am, %i.ao
  %i.aq = sub i64 0, %i.ap
  %i.ar = zext nneg i32 %i.af to i64              ; 2 uses
  %i.as = lshr i64 %i.aq, %i.ar
  %i.at = sub i64 0, %i.as                        ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ag, align 8, !tbaa !39
  %i.av = zext i16 %.49.i to i64
  %i.aw = shl i64 %i.av, %i.aj
  %i.ax = zext i16 %.46.i to i64
  %i.ay = shl i64 %i.ax, %i.ar
  %i.az = and i64 %i.at, 4294967295
  %i.ba = mul nsw i64 %i.az, %i.ay
  %2 = add nsw i32 %i.ae, -1
  %i.bb = shl nuw nsw i32 1, %2
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = add i64 %i.aw, %i.bc
  %i.be = sub i64 %i.bd, %i.ba
  store i64 %i.be, ptr %i.ah, align 16, !tbaa !156
  %i.bf = sub i16 %.50.i, %.48.i
  %i.bg = zext i16 %i.bf to i64
  %i.bh = shl i64 %i.bg, %i.aj
  %i.bi = sub i16 %.47.i, %..i
  %i.bj = zext i16 %i.bi to i64
  %i.bk = udiv i64 %i.bh, %i.bj
  %i.bl = sub i64 0, %i.bk
  %i.bm = zext nneg i32 %i.af to i64              ; 2 uses
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = sub i64 0, %i.bn                        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 53160
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 53148
  %i.br = trunc i64 %i.bo to i32
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !39
  %i.bs = zext i16 %.50.i to i64
  %i.bt = shl i64 %i.bs, %i.aj
  %i.bu = zext i16 %.47.i to i64
  %i.bv = shl i64 %i.bu, %i.bm
  %i.bw = and i64 %i.bo, 4294967295
  %i.bx = mul nsw i64 %i.bw, %i.bv
  %i.by = add i64 %i.bt, %i.bc
  %i.bz = sub i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.bp, align 8, !tbaa !156
  %i.ca = icmp slt i32 %i.q, 15                   ; 2 uses
  %lumRangeToJpeg16_c.lumRangeFromJpeg16_c = select i1 %.not45.i, ptr @lumRangeToJpeg16_c, ptr @lumRangeFromJpeg16_c
  %chrRangeToJpeg16_c.chrRangeFromJpeg16_c = select i1 %.not45.i, ptr @chrRangeToJpeg16_c, ptr @chrRangeFromJpeg16_c
  %lumRangeToJpeg_c.lumRangeFromJpeg_c = select i1 %.not45.i, ptr @lumRangeToJpeg_c, ptr @lumRangeFromJpeg_c
  %chrRangeToJpeg_c.chrRangeFromJpeg_c = select i1 %.not45.i, ptr @chrRangeToJpeg_c, ptr @chrRangeFromJpeg_c
  %lumRangeToJpeg_c.sink = select i1 %i.ca, ptr %lumRangeToJpeg_c.lumRangeFromJpeg_c, ptr %lumRangeToJpeg16_c.lumRangeFromJpeg16_c
  %chrRangeToJpeg_c.sink = select i1 %i.ca, ptr %chrRangeToJpeg_c.chrRangeFromJpeg_c, ptr %chrRangeToJpeg16_c.chrRangeFromJpeg16_c
  store ptr %lumRangeToJpeg_c.sink, ptr %i.a, align 8, !tbaa !157
  store ptr %chrRangeToJpeg_c.sink, ptr %i.b, align 16, !tbaa !158
  br label %bb.e

bb.e:                                             ; preds = %solve_range_convert.exit.i, %bb.d, %isAnyRGB.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @lumRangeFromJpeg_c(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = trunc i64 %3 to i32                      ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = and i32 %2, 65535                        ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat13 = shufflevector <8 x i32> %broadcast.splatinsert12, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.d, align 2, !tbaa !53
  %i.e = sext <8 x i16> %wide.load to <8 x i32>
  %i.f = mul nsw <8 x i32> %broadcast.splat, %i.e
  %i.g = add nsw <8 x i32> %i.f, %broadcast.splat13
  %i.h = lshr <8 x i32> %i.g, splat (i32 14)
  %i.i = trunc <8 x i32> %i.h to <8 x i16>
  store <8 x i16> %i.i, ptr %i.d, align 2, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !53
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.c, %i.m
  %i.o = add nsw i32 %i.n, %i.a
  %i.p = lshr i32 %i.o, 14
  %i.q = trunc i32 %i.p to i16
  store i16 %i.q, ptr %i.k, align 2, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !160

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @chrRangeFromJpeg_c(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #5 {
bb.a:
  %i.a = trunc i64 %4 to i32                      ; 7 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = and i32 %3, 65535                        ; 7 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.d = shl nuw nsw i64 %wide.trip.count, 1      ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %0, %i.f
  %bound1 = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert19 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat20 = shufflevector <8 x i32> %broadcast.splatinsert19, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !53, !alias.scope !166, !noalias !167
  %i.h = sext <8 x i16> %wide.load to <8 x i32>
  %i.i = mul nsw <8 x i32> %broadcast.splat, %i.h
  %i.j = add nsw <8 x i32> %i.i, %broadcast.splat20
  %i.k = lshr <8 x i32> %i.j, splat (i32 14)
  %i.l = trunc <8 x i32> %i.k to <8 x i16>
  store <8 x i16> %i.l, ptr %i.g, align 2, !tbaa !53, !alias.scope !166, !noalias !167
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load21 = load <8 x i16>, ptr %i.m, align 2, !tbaa !53, !alias.scope !167
  %i.n = sext <8 x i16> %wide.load21 to <8 x i32>
  %i.o = mul nsw <8 x i32> %broadcast.splat, %i.n
  %i.p = add nsw <8 x i32> %i.o, %broadcast.splat20
  %i.q = lshr <8 x i32> %i.p, splat (i32 14)
  %i.r = trunc <8 x i32> %i.q to <8 x i16>
  store <8 x i16> %i.r, ptr %i.m, align 2, !tbaa !53, !alias.scope !167
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !53
  %i.v = sext i16 %i.u to i32
  %i.w = mul nsw i32 %i.c, %i.v
  %i.x = add nsw i32 %i.w, %i.a
  %i.y = lshr i32 %i.x, 14
  %i.z = trunc i32 %i.y to i16
  store i16 %i.z, ptr %i.t, align 2, !tbaa !53
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !53
  %i.ac = sext i16 %i.ab to i32
  %i.ad = mul nsw i32 %i.c, %i.ac
  %i.ae = add nsw i32 %i.ad, %i.a
  %i.af = lshr i32 %i.ae, 14
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %i.aa, align 2, !tbaa !53
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.ah
  br i1 %i.ai, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !53
  %i.al = sext i16 %i.ak to i32
  %i.am = mul nsw i32 %i.c, %i.al
  %i.an = add nsw i32 %i.am, %i.a
  %i.ao = lshr i32 %i.an, 14
  %i.ap = trunc i32 %i.ao to i16
end_hunk_0
