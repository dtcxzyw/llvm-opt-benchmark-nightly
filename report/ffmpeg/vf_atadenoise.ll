Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_atadenoise?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@config_input:bb.a
  %i.ct = zext nneg i32 %i.cn to i64              ; 2 uses
  %xtraiter = and i64 %i.ct, 1
  %i.cu = icmp eq i32 %i.cn, 1
  %unroll_iter = and i64 %i.ct, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod155 = trunc i32 %i.cn to i1
  br label %.lr.ph110

.lr.ph114.split.us:                               ; preds = %.lr.ph114
  %invariant.gep = getelementptr [4 x i8], ptr %i.cq, i64 %i.cr ; 5 uses
  %wide.trip.count137 = zext nneg i32 %i.av to i64 ; 2 uses
  %xtraiter157 = and i64 %wide.trip.count137, 3   ; 3 uses
  %i.cv = icmp ult i32 %i.av, 4
  br i1 %i.cv, label %.epil.preheader156, label %.lr.ph114.split.us.new

.lr.ph114.split.us.new:                           ; preds = %.lr.ph114.split.us
  %unroll_iter160 = and i64 %wide.trip.count137, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph114.split.us.new
  %indvars.iv134 = phi i64 [ 0, %.lr.ph114.split.us.new ], [ %indvars.iv.next135.3, %bb.f ] ; 5 uses
  %niter161 = phi i64 [ 0, %.lr.ph114.split.us.new ], [ %niter161.next.3, %bb.f ]
  %gep = getelementptr [516 x i8], ptr %invariant.gep, i64 %indvars.iv134
  store float 1.000000e+00, ptr %gep, align 4, !tbaa !57
  %i.cw = getelementptr [516 x i8], ptr %invariant.gep, i64 %indvars.iv134
  %gep.1 = getelementptr i8, ptr %i.cw, i64 516
  store float 1.000000e+00, ptr %gep.1, align 4, !tbaa !57
  %i.cx = getelementptr [516 x i8], ptr %invariant.gep, i64 %indvars.iv134
  %gep.2 = getelementptr i8, ptr %i.cx, i64 1032
  store float 1.000000e+00, ptr %gep.2, align 4, !tbaa !57
  %i.cy = getelementptr [516 x i8], ptr %invariant.gep, i64 %indvars.iv134
  %gep.3 = getelementptr i8, ptr %i.cy, i64 1548
  store float 1.000000e+00, ptr %gep.3, align 4, !tbaa !57
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %niter161.next.3 = add i64 %niter161, 4         ; 2 uses
  %niter161.ncmp.3 = icmp eq i64 %niter161.next.3, %unroll_iter160
  br i1 %niter161.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !74

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.da = load float, ptr %i.cz, align 4, !tbaa !57 ; 2 uses
  %i.db = fcmp nsz oeq float %i.da, 3.276700e+04
  br i1 %i.db, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.dc = load i32, ptr %i.az, align 8, !tbaa !85
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = select i1 %i.dd, ptr @filter_row16, ptr @filter_row16_serial
  br label %.sink.split148

bb.h:                                             ; preds = %.lr.ph.split
  %i.df = fcmp nsz olt float %i.da, 3.276700e+04
  br i1 %i.df, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dg = load i32, ptr %i.az, align 8, !tbaa !85
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = select i1 %i.dh, ptr @fweight_row16, ptr @fweight_row16_serial
  br label %.sink.split148

.sink.split148:                                   ; preds = %bb.g, %bb.i
  %.sink149 = phi ptr [ %i.di, %bb.i ], [ %i.de, %bb.g ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  store ptr %.sink149, ptr %i.dj, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %.sink.split148, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count122
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !73

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %._crit_edge111
  %indvars.iv129 = phi i64 [ 0, %.lr.ph110.preheader ], [ %indvars.iv.next130, %._crit_edge111 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv129
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !57
  %i.dm = fmul nsz float %i.dl, %i.co             ; 2 uses
  %i.dn = getelementptr inbounds nuw [516 x i8], ptr %i.cq, i64 %indvars.iv129 ; 5 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cr
  store float 1.000000e+00, ptr %i.do, align 4, !tbaa !57
  %i.dp = fmul nsz float %i.dm, %i.dm
  %i.dq = fpext nsz float %i.dp to double         ; 3 uses
  %invariant.gep145 = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cs ; 3 uses
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph110.new

._crit_edge111.unr-lcssa:                         ; preds = %.lr.ph110.new
  br i1 %lcmp.mod.not, label %._crit_edge111, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge111.unr-lcssa, %.lr.ph110
  %indvars.iv124.epil.init = phi i64 [ 1, %.lr.ph110 ], [ %indvars.iv.next125.1, %._crit_edge111.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.dr = trunc i64 %indvars.iv124.epil.init to i32
  %i.ds = add i32 %i.dr, 1
  %i.dt = uitofp nsz nneg i32 %i.ds to double     ; 2 uses
  %i.du = fmul nnan nsz double %i.dt, -5.000000e-01
  %i.dv = fmul nsz double %i.du, %i.dt
  %i.dw = fdiv nsz double %i.dv, %i.dq
  %i.dx = fptrunc nsz double %i.dw to float
  %i.dy = tail call nsz float @llvm.exp.f32(float %i.dx) ; 2 uses
  %i.dz = sub nuw nsw i64 %i.cs, %indvars.iv124.epil.init
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dz
  store float %i.dy, ptr %i.ea, align 4, !tbaa !57
  %gep146.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep145, i64 %indvars.iv124.epil.init
  store float %i.dy, ptr %gep146.epil, align 4, !tbaa !57
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.unr-lcssa, %.epil.preheader
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.loopexit, label %.lr.ph110, !llvm.loop !74

.lr.ph110.new:                                    ; preds = %.lr.ph110, %.lr.ph110.new
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.1, %.lr.ph110.new ], [ 1, %.lr.ph110 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph110.new ], [ 0, %.lr.ph110 ]
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 3 uses
  %i.eb = trunc nuw i64 %indvars.iv.next125 to i32
  %i.ec = uitofp nsz nneg i32 %i.eb to double     ; 2 uses
  %i.ed = fmul nnan nsz double %i.ec, -5.000000e-01
  %i.ee = fmul nsz double %i.ed, %i.ec
  %i.ef = fdiv nsz double %i.ee, %i.dq
  %i.eg = fptrunc nsz double %i.ef to float
  %i.eh = tail call nsz float @llvm.exp.f32(float %i.eg) ; 2 uses
  %i.ei = sub nuw nsw i64 %i.cs, %indvars.iv124
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ei
  store float %i.eh, ptr %i.ej, align 4, !tbaa !57
  %gep146 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep145, i64 %indvars.iv124
  store float %i.eh, ptr %gep146, align 4, !tbaa !57
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 3 uses
  %i.ek = trunc nuw i64 %indvars.iv.next125.1 to i32
  %i.el = uitofp nsz nneg i32 %i.ek to double     ; 2 uses
  %i.em = fmul nnan nsz double %i.el, -5.000000e-01
  %i.en = fmul nsz double %i.em, %i.el
  %i.eo = fdiv nsz double %i.en, %i.dq
  %i.ep = fptrunc nsz double %i.eo to float
  %i.eq = tail call nsz float @llvm.exp.f32(float %i.ep) ; 2 uses
  %i.er = sub nuw nsw i64 %i.cs, %indvars.iv.next125
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.er
  store float %i.eq, ptr %i.es, align 4, !tbaa !57
  %gep146.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep145, i64 %indvars.iv.next125
  store float %i.eq, ptr %gep146.1, align 4, !tbaa !57
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge111.unr-lcssa, label %.lr.ph110.new, !llvm.loop !75

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.loopexit, label %.epil.preheader156

.epil.preheader156:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph114.split.us
  %indvars.iv134.epil.init = phi i64 [ 0, %.lr.ph114.split.us ], [ %indvars.iv.next135.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter157, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader156
  %indvars.iv134.epil = phi i64 [ %indvars.iv.next135.epil, %bb.k ], [ %indvars.iv134.epil.init, %.epil.preheader156 ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.k ], [ 0, %.epil.preheader156 ]
  %gep.epil = getelementptr [516 x i8], ptr %invariant.gep, i64 %indvars.iv134.epil
  store float 1.000000e+00, ptr %gep.epil, align 4, !tbaa !57
  %indvars.iv.next135.epil = add nuw nsw i64 %indvars.iv134.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter157
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.k, !llvm.loop !76

.loopexit:                                        ; preds = %._crit_edge111, %.loopexit.loopexit.unr-lcssa, %bb.k, %._crit_edge, %bb.a
  %.0102 = phi i32 [ %i.at, %bb.a ], [ 0, %._crit_edge ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %bb.k ], [ 0, %._crit_edge111 ]
  ret i32 %.0102
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [129 x ptr], align 16             ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 14 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 9448
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24
  %.fr100 = freeze i32 %i.h                       ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9452
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph99, label %._crit_edge

.lr.ph99:                                         ; preds = %bb.a
  %4 = ptrtoaddr ptr %i.c to i64
  %5 = ptrtoaddr ptr %i.a to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 7384
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.q = sext i32 %2 to i64
  %i.r = sext i32 %3 to i64                       ; 2 uses
  %i.s = add nsw i32 %2, 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1192
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 5320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.ab = icmp sgt i32 %.fr100, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 9472 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %wide.trip.count = zext i32 %.fr100 to i64      ; 7 uses
  %wide.trip.count107 = zext nneg i32 %.fr100 to i64
  %6 = add i64 %5, -1192
  %7 = sub i64 %6, %4
  %min.iters.check122 = icmp ult i32 %.fr100, 4
  %invariant.op = add i64 %7, -1
  %n.vec124 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n135 = icmp eq i64 %n.vec124, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %8 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %.fr100, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %.loopexit
  %indvars.iv110 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next111, %.loopexit ] ; 17 uses
  %9 = mul nsw i64 %indvars.iv110, -1032
  %i.ae = getelementptr inbounds nuw [516 x i8], ptr %i.n, i64 %indvars.iv110 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv110
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv110
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !50 ; 2 uses
  %i.aj = sext i32 %i.ag to i64                   ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.q
  %i.al = sdiv i64 %i.ak, %i.r
  %i.am = trunc i64 %i.al to i32                  ; 11 uses
  %i.an = mul nsw i64 %i.aj, %i.t
  %i.ao = sdiv i64 %i.an, %i.r
  %i.ap = trunc i64 %i.ao to i32                  ; 5 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv110
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv110 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !50 ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.am
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv110
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv110 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !50 ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.am
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv110
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !50 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv110
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50 ; 2 uses
  %i.bi = getelementptr inbounds nuw [1032 x i8], ptr %i.y, i64 %indvars.iv110 ; 4 uses
  %i.bj = getelementptr inbounds nuw [516 x i8], ptr %i.z, i64 %indvars.iv110 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bk = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = load i32, ptr %i.aa, align 4, !tbaa !92
  %i.bn = and i32 %i.bm, %i.bl
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.c, label %.preheader90

.preheader90:                                     ; preds = %bb.b
  br i1 %i.ab, label %.lr.ph.preheader, label %.preheader.thread

.lr.ph.preheader:                                 ; preds = %.preheader90
  %.reass = add i64 %9, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond = select i1 %min.iters.check122, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader137.a, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph.preheader
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next133, %vector.body125 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index126 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load127 = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !48
  %wide.load128 = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index126 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %wide.load129 = load <2 x i32>, ptr %i.bq, align 4, !tbaa !50
  %wide.load130 = load <2 x i32>, ptr %i.br, align 4, !tbaa !50
  %i.bs = mul nsw <2 x i32> %wide.load129, %broadcast.splat
  %i.bt = mul nsw <2 x i32> %wide.load130, %broadcast.splat
  %i.bu = sext <2 x i32> %i.bs to <2 x i64>
  %i.bv = sext <2 x i32> %i.bt to <2 x i64>
  %wide.gep131 = getelementptr inbounds i8, <2 x ptr> %wide.load127, <2 x i64> %i.bu
  %wide.gep132 = getelementptr inbounds i8, <2 x ptr> %wide.load128, <2 x i64> %i.bv
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index126 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x ptr> %wide.gep131, ptr %i.bw, align 16, !tbaa !48
  store <2 x ptr> %wide.gep132, ptr %i.bx, align 16, !tbaa !48
  %index.next133 = add nuw i64 %index126, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next133, %n.vec124
  br i1 %i.by, label %middle.block134, label %vector.body125, !llvm.loop !86

middle.block134:                                  ; preds = %vector.body125
  br i1 %cmp.n135, label %.preheader, label %.lr.ph.preheader137.a

.lr.ph.preheader137.a:                            ; preds = %.lr.ph.preheader, %middle.block134
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec124, %middle.block134 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader137.a
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.ph
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.ph
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = mul nsw i32 %13, %i.am
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.ph
  store ptr %16, ptr %17, align 16, !tbaa !48
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader137.a
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader137.a ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %18 = icmp eq i64 %indvars.iv.ph, %8
  br i1 %18, label %.preheader, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv110
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !50
  %i.cb = sub nsw i32 %i.ap, %i.am
  call void @av_image_copy_plane(ptr noundef %i.bd, i32 noundef %i.ba, ptr noundef %i.aw, i32 noundef %i.at, i32 noundef %i.ca, i32 noundef %i.cb) #10
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block134
  %i.cc = icmp slt i32 %i.am, %i.ap
  br i1 %i.cc, label %.lr.ph97, label %.loopexit

.preheader.thread:                                ; preds = %.preheader90
  %i.cd = icmp slt i32 %i.am, %i.ap
  br i1 %i.cd, label %.lr.ph97.thread, label %.loopexit

.lr.ph97.thread:                                  ; preds = %.preheader.thread
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv110
  br label %.lr.ph97.split

.lr.ph97:                                         ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv110
  br label %.lr.ph93.us

.lr.ph93.us:                                      ; preds = %.lr.ph97, %._crit_edge.us
  %.096.us = phi ptr [ %i.cx, %._crit_edge.us ], [ %i.bd, %.lr.ph97 ] ; 2 uses
  %.08595.us = phi ptr [ %i.cz, %._crit_edge.us ], [ %i.aw, %.lr.ph97 ] ; 2 uses
  %.08794.us = phi i32 [ %i.da, %._crit_edge.us ], [ %i.am, %.lr.ph97 ]
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !49
  call void %i.cg(ptr noundef %.08595.us, ptr noundef %.096.us, ptr noundef nonnull %i.a, i32 noundef %i.ai, i32 noundef %i.j, i32 noundef %.fr100, i32 noundef %i.bf, i32 noundef %i.bh, ptr noundef nonnull %i.ae) #10
  %i.ch = load i32, ptr %i.az, align 4, !tbaa !50
  %i.ci = load i32, ptr %i.as, align 4, !tbaa !50
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph93.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph93.us ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %wide.load = load <2 x i32>, ptr %i.cj, align 4, !tbaa !50
  %wide.load117 = load <2 x i32>, ptr %i.ck, align 4, !tbaa !50
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load118 = load <2 x ptr>, ptr %i.cl, align 16, !tbaa !48
  %wide.load119 = load <2 x ptr>, ptr %i.cm, align 16, !tbaa !48
  %i.cn = sext <2 x i32> %wide.load to <2 x i64>
  %i.co = sext <2 x i32> %wide.load117 to <2 x i64>
  %wide.gep = getelementptr inbounds i8, <2 x ptr> %wide.load118, <2 x i64> %i.cn
  %wide.gep120 = getelementptr inbounds i8, <2 x ptr> %wide.load119, <2 x i64> %i.co
  store <2 x ptr> %wide.gep, ptr %i.cl, align 16, !tbaa !48
  store <2 x ptr> %wide.gep120, ptr %i.cm, align 16, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph93.us, %middle.block
  %indvars.iv104.ph = phi i64 [ 0, %.lr.ph93.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv104
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !50
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv104 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !48
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %i.cu
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !48
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !88

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.cw = sext i32 %i.ch to i64
  %i.cx = getelementptr inbounds i8, ptr %.096.us, i64 %i.cw
  %i.cy = sext i32 %i.ci to i64
  %i.cz = getelementptr inbounds i8, ptr %.08595.us, i64 %i.cy
  %i.da = add nsw i32 %.08794.us, 1               ; 2 uses
  %exitcond109.not = icmp eq i32 %i.da, %i.ap
  br i1 %exitcond109.not, label %.loopexit, label %.lr.ph93.us, !llvm.loop !89

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = mul nsw i32 %22, %i.am
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %20, i64 %24
  %26 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %25, ptr %26, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !48
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !50
  %i.df = mul nsw i32 %i.de, %i.am
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %i.dc, i64 %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader, label %.lr.ph, !llvm.loop !90

.lr.ph97.split:                                   ; preds = %.lr.ph97.thread, %.lr.ph97.split
  %.096 = phi ptr [ %i.dm, %.lr.ph97.split ], [ %i.bd, %.lr.ph97.thread ] ; 2 uses
  %.08595 = phi ptr [ %i.dp, %.lr.ph97.split ], [ %i.aw, %.lr.ph97.thread ] ; 2 uses
  %.08794 = phi i32 [ %i.dq, %.lr.ph97.split ], [ %i.am, %.lr.ph97.thread ]
  %i.dj = load ptr, ptr %i.ce, align 8, !tbaa !49
  call void %i.dj(ptr noundef %.08595, ptr noundef %.096, ptr noundef nonnull %i.a, i32 noundef %i.ai, i32 noundef %i.j, i32 noundef %.fr100, i32 noundef %i.bf, i32 noundef %i.bh, ptr noundef nonnull %i.ae) #10
  %i.dk = load i32, ptr %i.az, align 4, !tbaa !50
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %.096, i64 %i.dl
  %i.dn = load i32, ptr %i.as, align 4, !tbaa !50
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %.08595, i64 %i.do
  %i.dq = add i32 %.08794, 1                      ; 2 uses
  %exitcond103.not = icmp eq i32 %i.dq, %i.ap
  br i1 %exitcond103.not, label %.loopexit, label %.lr.ph97.split, !llvm.loop !89

.loopexit:                                        ; preds = %.lr.ph97.split, %._crit_edge.us, %.preheader.thread, %.preheader, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.dr = load i32, ptr %i.k, align 8, !tbaa !55
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next111, %i.ds
  br i1 %i.dt, label %bb.b, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0
}

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_row8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree readnone captures(none) %8) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %bb.a
  %.075 = add nuw nsw i32 %4, 1
  %i.d = icmp sgt i32 %4, 0
  %i.e = icmp slt i32 %.075, %5
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph96
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  %i.g = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.g, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph96.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check120 = icmp ult i32 %3, 32
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !61
  %wide.load121 = load <16 x i8>, ptr %i.j, align 1, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <16 x i8> %wide.load, ptr %i.k, align 1, !tbaa !61
  store <16 x i8> %wide.load121, ptr %i.l, align 1, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph96.split.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index123
  %wide.load124 = load <4 x i8>, ptr %i.n, align 1, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index123
  store <4 x i8> %wide.load124, ptr %i.o, align 1, !tbaa !61
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.p = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !94

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %n.vec122, %wide.trip.count
  br i1 %cmp.n126, label %._crit_edge97, label %.lr.ph96.split.preheader

.lr.ph96.split.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol

.lr.ph96.split.prol:                              ; preds = %.lr.ph96.split.preheader, %.lr.ph96.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph96.split.prol ], [ %indvars.iv.ph, %.lr.ph96.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.split.prol ], [ 0, %.lr.ph96.split.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.r = load i8, ptr %i.q, align 1, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.r, ptr %i.s, align 1, !tbaa !61
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol, !llvm.loop !95

.lr.ph96.split.prol.loopexit:                     ; preds = %.lr.ph96.split.prol, %.lr.ph96.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph96.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph96.split.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge97, label %.lr.ph96.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph96
  %i.v = zext nneg i32 %4 to i64                  ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %wide.trip.count110 = zext nneg i32 %3 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv107 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next108, %._crit_edge.us ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv107
  %i.y = load i8, ptr %i.x, align 1, !tbaa !61
  %i.z = zext i8 %i.y to i32                      ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv102 = phi i64 [ %i.w, %.lr.ph.us ], [ %indvars.iv.next103, %bb.d ] ; 2 uses
  %indvars.iv100 = phi i64 [ %i.v, %.lr.ph.us ], [ %indvars.iv.next101, %bb.d ] ; 2 uses
  %.05981.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ak, %bb.d ] ; 4 uses
  %.06179.us = phi i32 [ %i.z, %.lr.ph.us ], [ %i.aw, %bb.d ] ; 2 uses
  %.06378.us = phi i32 [ 0, %.lr.ph.us ], [ %i.at, %bb.d ]
  %.06477.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ah, %bb.d ]
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next101
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv107
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !61
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = sub nsw i32 %i.z, %i.ae
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true) ; 2 uses
  %i.ah = add i32 %i.ag, %.06477.us               ; 2 uses
  %i.ai = icmp ugt i32 %i.ag, %6
  %i.aj = icmp ugt i32 %i.ah, %7
  %or.cond.us = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond.us, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = add nuw nsw i32 %.05981.us, 1           ; 4 uses
  %i.al = add i32 %.06179.us, %i.ae               ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv102
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv107
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !61
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = sub nsw i32 %i.z, %i.aq
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true) ; 2 uses
  %i.at = add i32 %i.as, %.06378.us               ; 2 uses
  %i.au = icmp ugt i32 %i.as, %6
  %i.av = icmp ugt i32 %i.at, %7
  %or.cond74.us = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond74.us, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = add i32 %i.al, %i.aq                    ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.ax = icmp sgt i64 %indvars.iv100, 1
  %i.ay = trunc nuw i64 %indvars.iv.next103 to i32
  %i.az = icmp sgt i32 %5, %i.ay
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.b, label %._crit_edge.us, !llvm.loop !96

._crit_edge.us:                                   ; preds = %bb.d, %bb.b, %bb.c
  %.059.lcssa.us = phi i32 [ %.05981.us, %bb.b ], [ %.05981.us, %bb.c ], [ %i.ak, %bb.d ]
  %.162.us = phi i32 [ %.06179.us, %bb.b ], [ %i.al, %bb.c ], [ %i.aw, %bb.d ]
  %.1.us = phi i32 [ %.05981.us, %bb.b ], [ %i.ak, %bb.c ], [ %i.ak, %bb.d ]
  %i.bb = add i32 %.059.lcssa.us, 1
  %i.bc = add i32 %i.bb, %.1.us                   ; 2 uses
  %i.bd = ashr i32 %i.bc, 1
  %i.be = add i32 %i.bd, %.162.us
  %i.bf = udiv i32 %i.be, %i.bc
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv107
end_hunk_0
begin_hunk_1_@av_image_copy_plane

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #7

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = tail call i32 @ff_request_frame(ptr noundef %i.f) #10 ; 2 uses
  %i.h = icmp eq i32 %i.g, -541478725
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 9460 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44   ; 3 uses
  %.not21 = icmp eq i32 %i.l, 0
  br i1 %.not21, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1186
  %i.n = load i16, ptr %i.m, align 2, !tbaa !27
  %i.o = zext i16 %i.n to i32
  %i.p = icmp ult i32 %i.l, %i.o
  br i1 %i.p, label %bb.e, label %ff_bufqueue_peek.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1184
  %i.s = load i16, ptr %i.r, align 8, !tbaa !28
  %i.t = zext i16 %i.s to i32
  %i.u = add nuw nsw i32 %i.l, %i.t
  %i.v = urem i32 %i.u, 129
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  br label %ff_bufqueue_peek.exit

ff_bufqueue_peek.exit:                            ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.y, %bb.e ], [ null, %bb.d ]
  %i.aa = tail call ptr @av_frame_clone(ptr noundef %i.z) #10 ; 2 uses
  %.not22.not = icmp eq ptr %i.aa, null
  br i1 %.not22.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %ff_bufqueue_peek.exit
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = tail call i32 @filter_frame(ptr noundef %i.ac, ptr noundef nonnull %i.aa)
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !44
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.k, align 4, !tbaa !44
  br label %.critedge

.critedge:                                        ; preds = %ff_bufqueue_peek.exit, %bb.a, %bb.b, %bb.c, %bb.f
  %.116 = phi i32 [ %i.ad, %bb.f ], [ -12, %ff_bufqueue_peek.exit ], [ -541478725, %bb.b ], [ -541478725, %bb.c ], [ %i.g, %bb.a ]
  ret i32 %.116
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }

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
!20 = !{!"short", !5, i64 0}
!21 = !{!"FFBufQueue", !5, i64 0, !20, i64 1032, !20, i64 1034}
!22 = !{!"ATADenoiseDSPContext", !5, i64 0}
!23 = !{!"ATADenoiseContext", !10, i64 0, !5, i64 8, !5, i64 24, !5, i64 40, !5, i64 56, !5, i64 72, !6, i64 88, !6, i64 92, !6, i64 96, !5, i64 100, !5, i64 116, !5, i64 132, !21, i64 152, !5, i64 1192, !5, i64 5320, !5, i64 7384, !6, i64 9448, !6, i64 9452, !6, i64 9456, !6, i64 9460, !9, i64 9464, !22, i64 9472}
!24 = !{!23, !6, i64 9448}
!25 = !{!23, !6, i64 9456}
!26 = !{!23, !6, i64 9452}
!27 = !{!21, !20, i64 1034}
!28 = !{!21, !20, i64 1032}
!29 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!18, !15, i64 32}
!33 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!36 = !{!"AVRational", !6, i64 0, !6, i64 4}
!37 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!38 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!39 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!40 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!41 = !{!"AVFilterFormatsConfig", !39, i64 0, !39, i64 8, !40, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!42 = !{!"AVFilterLink", !35, i64 0, !13, i64 8, !35, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !36, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !37, i64 72, !36, i64 96, !38, i64 104, !6, i64 112, !6, i64 116, !41, i64 120, !41, i64 168}
!43 = !{!42, !35, i64 16}
!44 = !{!23, !6, i64 9460}
!45 = !{!18, !6, i64 104}
!46 = !{!42, !6, i64 40}
!47 = !{!42, !6, i64 44}
!48 = !{!12, !12, i64 0}
!49 = !{!9, !9, i64 0}
!50 = !{!6, !6, i64 0}
!51 = !{!"ThreadData", !29, i64 0, !29, i64 8}
!52 = !{!51, !29, i64 0}
!53 = !{!51, !29, i64 8}
!54 = !{!23, !9, i64 9464}
!55 = !{!23, !6, i64 96}
!56 = !{!"float", !5, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!5, !5, i64 0}
!62 = !{!"branch_weights", i32 4, i32 28}
!63 = !{!20, !20, i64 0}
!64 = !{!"branch_weights", i32 4, i32 12}
!65 = !{!"p1 short", !9, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"branch_weights", i32 8, i32 8}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31}
!71 = !{!18, !15, i64 56}
!72 = !{!23, !20, i64 1186}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !58}
!77 = !{!42, !6, i64 36}
!78 = !{!"long", !5, i64 0}
!79 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !78, i64 16, !5, i64 24, !12, i64 104}
!80 = !{!79, !5, i64 8}
!81 = !{!79, !5, i64 10}
!82 = !{!79, !5, i64 9}
!83 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!84 = !{!83, !6, i64 16}
!85 = !{!23, !6, i64 88}
!86 = distinct !{!86, !31, !59, !60}
!87 = distinct !{!87, !31, !59, !60}
!88 = distinct !{!88, !31, !60, !59}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !31, !59}
!91 = distinct !{!91, !31}
!92 = !{!23, !6, i64 92}
!93 = distinct !{!93, !31, !59, !60}
!94 = distinct !{!94, !31, !59, !60}
!95 = distinct !{!95, !58}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31, !59}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31, !59, !60}
!103 = distinct !{!103, !31, !59, !60}
!104 = distinct !{!104, !58}
!105 = distinct !{!105, !31, !59}
!106 = distinct !{!106, !31, !59, !60}
!107 = distinct !{!107, !31, !59, !60}
!108 = distinct !{!108, !58}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31, !59}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31, !59, !60}
!116 = distinct !{!116, !31, !59, !60}
!117 = distinct !{!117, !58}
!118 = distinct !{!118, !31, !59}
!119 = distinct !{!119, !31, !59, !60}
!120 = distinct !{!120, !31, !59, !60}
!121 = distinct !{!121, !58}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31, !59}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31, !59, !60}
!129 = distinct !{!129, !31, !59, !60}
!130 = distinct !{!130, !58}
!131 = distinct !{!131, !31, !59}
!132 = distinct !{!132, !31, !59, !60}
!133 = distinct !{!133, !58}
!134 = distinct !{!134, !31}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31, !59}
!137 = distinct !{!137, !31}
!138 = distinct !{!138, !31}
!139 = distinct !{!139, !31}
!140 = distinct !{!140, !31, !59, !60}
!141 = distinct !{!141, !58}
!142 = distinct !{!142, !31, !59}
!143 = !{!42, !35, i64 0}
end_hunk_1
