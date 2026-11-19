Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_geq?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@geq_uninit:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @geq_query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @geq_query_formats.yuv_pix_fmts, ptr @geq_query_formats.rgb_pix_fmts
  %i.f = tail call i32 @ff_set_pixel_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.e) #13
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal i32 @geq_filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %struct.ThreadData, align 8         ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  %i.d = tail call i32 @ff_filter_get_nb_threads(ptr noundef %i.c) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load i64, ptr %i.j, align 8, !tbaa !92
  %i.l = sitofp nsz i64 %i.k to double
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1152
  store double %i.l, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93   ; 2 uses
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = sitofp nsz i64 %i.o to double
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.s to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.s, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.t = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.u = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.v = fdiv nsz double %i.t, %i.u
  %i.w = fmul nsz double %i.v, %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = phi nsz double [ %i.w, %bb.b ], [ +qnan, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 1176
  store double %i.x, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 1088 ; 3 uses
  store ptr %1, ptr %i.z, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !95
  %i.ae = tail call ptr @ff_get_video_buffer(ptr noundef %i.i, i32 noundef %i.ab, i32 noundef %i.ad) #13 ; 5 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.a) #13
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.af = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.ae, ptr noundef nonnull %1) #13 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 1192 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !48
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 1184
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 1096
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 1104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 1112
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 1136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 1160
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1240
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 1208
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 1204
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %calculate_sums.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %calculate_sums.exit ] ; 9 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20
  %.not85 = icmp eq ptr %i.ax, null
  br i1 %.not85, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = trunc i64 %indvars.iv to i32
  %i.az = add i32 %i.ay, -1
  %or.cond = icmp ult i32 %i.az, 2
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = load <2 x i32>, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.bb = load <2 x i32>, ptr %i.ak, align 8, !tbaa !30
  %i.bc = sub nsw <2 x i32> zeroinitializer, %i.ba
  %i.bd = ashr <2 x i32> %i.bc, %i.bb
  %i.be = sub nsw <2 x i32> zeroinitializer, %i.bd
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bf = load <2 x i32>, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bg = phi <2 x i32> [ %i.bf, %bb.i ], [ %i.be, %bb.h ] ; 7 uses
  %i.bh = phi <2 x i32> [ %i.bf, %bb.i ], [ %i.ba, %bb.h ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !20 ; 3 uses
  store ptr %i.bk, ptr %i.am, align 8, !tbaa !49
  store ptr %i.bk, ptr %i.an, align 8, !tbaa !50
  store ptr %i.bk, ptr %i.ao, align 8, !tbaa !51
  %i.bl = sitofp nsz <2 x i32> %i.bg to <2 x double> ; 2 uses
  store <2 x double> %i.bl, ptr %i.ap, align 8, !tbaa !42
  %i.bm = sitofp nsz <2 x i32> %i.bh to <2 x double>
  %i.bn = fdiv nsz <2 x double> %i.bl, %i.bm
  store <2 x double> %i.bn, ptr %i.aq, align 8, !tbaa !42
  %i.bo = shufflevector <2 x i32> %i.bg, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bo, ptr %2, align 8, !tbaa !30
  %i.bp = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bp, ptr %i.ar, align 8, !tbaa !53
  store i32 %i.bj, ptr %i.as, align 4, !tbaa !54
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !30
  %.not86 = icmp eq i32 %i.br, 0
  br i1 %.not86, label %calculate_sums.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !30 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ca = extractelement <2 x i32> %i.bg, i64 0
  %i.cb = sext i32 %i.ca to i64
  %i.cc = extractelement <2 x i32> %i.bg, i64 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = call ptr @av_malloc_array(i64 noundef %i.cb, i64 noundef %i.ce) #13 ; 3 uses
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !56
  %.not97.i = icmp eq ptr %i.cf, null
  br i1 %.not97.i, label %calculate_sums.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %i.cg = phi ptr [ %i.cf, %bb.l ], [ %i.bz, %bb.k ] ; 19 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !26 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 32
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread.i
  %i.cj = sdiv i32 %i.bx, 4
  br label %bb.p

bb.n:                                             ; preds = %.thread.i
  %i.ck = add i32 %i.ch, -9
  %or.cond.i = icmp ult i32 %i.ck, 8
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = sdiv i32 %i.bx, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.086.i = phi i32 [ %i.cj, %bb.m ], [ %i.cl, %bb.o ], [ %i.bx, %bb.n ] ; 2 uses
  %i.cm = extractelement <2 x i32> %i.bg, i64 1   ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph120.i, label %calculate_sums.exit

.lr.ph120.i:                                      ; preds = %bb.p
  %i.co = add i32 %i.ch, -9
  %or.cond99.i = icmp ult i32 %i.co, 8
  %i.cp = extractelement <2 x i32> %i.bg, i64 0   ; 9 uses
  %i.cq = icmp sgt i32 %i.cp, 0                   ; 2 uses
  br i1 %or.cond99.i, label %.preheader101.us.preheader.i, label %.lr.ph120.split.i

.preheader101.us.preheader.i:                     ; preds = %.lr.ph120.i
  %i.cr = sext i32 %i.cp to i64                   ; 8 uses
  %i.cs = sext i32 %.086.i to i64
  %wide.trip.count199.i = zext nneg i32 %i.cm to i64 ; 3 uses
  %wide.trip.count189.i = zext i32 %i.cp to i64   ; 8 uses
  br i1 %i.cq, label %.preheader101.us.i.preheader, label %calculate_sums.exit

.preheader101.us.i.preheader:                     ; preds = %.preheader101.us.preheader.i
  %i.ct = shl nuw nsw i64 %wide.trip.count199.i, 3
  %3 = add nsw i64 %i.ct, -16
  %4 = mul i64 %3, %i.cr
  %i.cu = shl nuw nsw i64 %wide.trip.count189.i, 3 ; 2 uses
  %5 = getelementptr i8, ptr %i.cg, i64 %4
  %scevgep = getelementptr i8, ptr %5, i64 %i.cu
  %i.cv = mul nsw i64 %i.cr, -8
  %scevgep107 = getelementptr i8, ptr %i.cg, i64 %i.cv
  %6 = shl nuw nsw i64 %wide.trip.count199.i, 3
  %7 = add nsw i64 %6, -8
  %8 = mul i64 %7, %i.cr
  %i.cw = getelementptr i8, ptr %i.cg, i64 %8
  %scevgep108 = getelementptr i8, ptr %i.cw, i64 %i.cu
  %xtraiter138 = and i64 %wide.trip.count189.i, 3 ; 3 uses
  %i.cx = icmp ult i32 %i.cp, 4
  %unroll_iter142 = and i64 %wide.trip.count189.i, 2147483644
  %lcmp.mod140.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod141 = icmp ne i64 %xtraiter138, 0
  %min.iters.check = icmp ult i32 %i.cp, 4
  %bound0 = icmp ult ptr %i.cg, %scevgep
  %bound1 = icmp ult ptr %scevgep107, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count189.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count189.i
  %xtraiter144 = and i64 %wide.trip.count189.i, 1
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  %i.cy = add nsw i64 %wide.trip.count189.i, -1
  br label %.preheader101.us.i

.preheader101.us.i:                               ; preds = %.preheader101.us.i.preheader, %.loopexit.us.i
  %indvars.iv196.i = phi i64 [ %indvars.iv.next197.i, %.loopexit.us.i ], [ 0, %.preheader101.us.i.preheader ] ; 4 uses
  %i.cz = mul nsw i64 %indvars.iv196.i, %i.cs
  %i.da = mul nuw nsw i64 %indvars.iv196.i, %i.cr ; 5 uses
  %invariant.gep215.i = getelementptr [2 x i8], ptr %i.bu, i64 %i.cz ; 5 uses
  %invariant.gep217.i = getelementptr [8 x i8], ptr %i.cg, i64 %i.da ; 5 uses
  br i1 %i.cx, label %.epil.preheader137, label %.preheader101.us.i.new

.preheader101.us.i.new:                           ; preds = %.preheader101.us.i, %.preheader101.us.i.new
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i.3, %.preheader101.us.i.new ], [ 0, %.preheader101.us.i ] ; 6 uses
  %.085114.us.i = phi double [ %i.dm, %.preheader101.us.i.new ], [ 0.000000e+00, %.preheader101.us.i ]
  %niter143 = phi i64 [ %niter143.next.3, %.preheader101.us.i.new ], [ 0, %.preheader101.us.i ]
  %gep216.i = getelementptr [2 x i8], ptr %invariant.gep215.i, i64 %indvars.iv186.i
  %i.db = load i16, ptr %gep216.i, align 2, !tbaa !58
  %i.dc = uitofp i16 %i.db to double
  %i.dd = fadd nsz double %.085114.us.i, %i.dc    ; 2 uses
  %gep218.i = getelementptr [8 x i8], ptr %invariant.gep217.i, i64 %indvars.iv186.i
  store double %i.dd, ptr %gep218.i, align 8, !tbaa !42
  %indvars.iv.next187.i = or disjoint i64 %indvars.iv186.i, 1 ; 2 uses
  %gep216.i.1 = getelementptr [2 x i8], ptr %invariant.gep215.i, i64 %indvars.iv.next187.i
  %i.de = load i16, ptr %gep216.i.1, align 2, !tbaa !58
  %i.df = uitofp i16 %i.de to double
  %i.dg = fadd nsz double %i.dd, %i.df            ; 2 uses
  %gep218.i.1 = getelementptr [8 x i8], ptr %invariant.gep217.i, i64 %indvars.iv.next187.i
  store double %i.dg, ptr %gep218.i.1, align 8, !tbaa !42
  %indvars.iv.next187.i.1 = or disjoint i64 %indvars.iv186.i, 2 ; 2 uses
  %gep216.i.2 = getelementptr [2 x i8], ptr %invariant.gep215.i, i64 %indvars.iv.next187.i.1
  %i.dh = load i16, ptr %gep216.i.2, align 2, !tbaa !58
  %i.di = uitofp i16 %i.dh to double
  %i.dj = fadd nsz double %i.dg, %i.di            ; 2 uses
  %gep218.i.2 = getelementptr [8 x i8], ptr %invariant.gep217.i, i64 %indvars.iv.next187.i.1
  store double %i.dj, ptr %gep218.i.2, align 8, !tbaa !42
  %indvars.iv.next187.i.2 = or disjoint i64 %indvars.iv186.i, 3 ; 2 uses
  %gep216.i.3 = getelementptr [2 x i8], ptr %invariant.gep215.i, i64 %indvars.iv.next187.i.2
  %i.dk = load i16, ptr %gep216.i.3, align 2, !tbaa !58
  %i.dl = uitofp i16 %i.dk to double
  %i.dm = fadd nsz double %i.dj, %i.dl            ; 3 uses
  %gep218.i.3 = getelementptr [8 x i8], ptr %invariant.gep217.i, i64 %indvars.iv.next187.i.2
  store double %i.dm, ptr %gep218.i.3, align 8, !tbaa !42
  %indvars.iv.next187.i.3 = add nuw nsw i64 %indvars.iv186.i, 4 ; 2 uses
  %niter143.next.3 = add i64 %niter143, 4         ; 2 uses
  %niter143.ncmp.3 = icmp eq i64 %niter143.next.3, %unroll_iter142
  br i1 %niter143.ncmp.3, label %.loopexit102.us.i.unr-lcssa, label %.preheader101.us.i.new, !llvm.loop !72

.lr.ph117.us.i:                                   ; preds = %.lr.ph117.us.i, %.lr.ph117.us.i.preheader126.new
  %indvars.iv191.i = phi i64 [ %indvars.iv191.i.unr, %.lr.ph117.us.i.preheader126.new ], [ %indvars.iv.next192.i.1, %.lr.ph117.us.i ] ; 3 uses
  %i.dn = add nuw nsw i64 %indvars.iv191.i, %i.da ; 2 uses
  %i.do = sub nsw i64 %i.dn, %i.cr
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !42
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dn ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !42
  %i.dt = fadd nsz double %i.dq, %i.ds
  store double %i.dt, ptr %i.dr, align 8, !tbaa !42
  %.reass = add nuw nsw i64 %indvars.iv191.i, %invariant.op ; 2 uses
  %i.du = sub nsw i64 %.reass, %i.cr
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !42
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.reass ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !42
  %i.dz = fadd nsz double %i.dw, %i.dy
  store double %i.dz, ptr %i.dx, align 8, !tbaa !42
  %indvars.iv.next192.i.1 = add nuw nsw i64 %indvars.iv191.i, 2 ; 2 uses
  %exitcond195.not.i.1 = icmp eq i64 %indvars.iv.next192.i.1, %wide.trip.count189.i
  br i1 %exitcond195.not.i.1, label %.loopexit.us.i, label %.lr.ph117.us.i, !llvm.loop !73

.loopexit.us.i:                                   ; preds = %.lr.ph117.us.i.prol.loopexit, %.lr.ph117.us.i, %middle.block, %.loopexit102.us.i
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %indvars.iv.next197.i, %wide.trip.count199.i
  br i1 %exitcond200.not.i, label %calculate_sums.exit, label %.preheader101.us.i, !llvm.loop !74

.loopexit102.us.i.unr-lcssa:                      ; preds = %.preheader101.us.i.new
  br i1 %lcmp.mod140.not, label %.loopexit102.us.i, label %.epil.preheader137

.epil.preheader137:                               ; preds = %.loopexit102.us.i.unr-lcssa, %.preheader101.us.i
  %indvars.iv186.i.epil.init = phi i64 [ 0, %.preheader101.us.i ], [ %indvars.iv.next187.i.3, %.loopexit102.us.i.unr-lcssa ]
  %.085114.us.i.epil.init = phi double [ 0.000000e+00, %.preheader101.us.i ], [ %i.dm, %.loopexit102.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod141)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader137
  %indvars.iv186.i.epil = phi i64 [ %indvars.iv186.i.epil.init, %.epil.preheader137 ], [ %indvars.iv.next187.i.epil, %bb.q ] ; 3 uses
  %.085114.us.i.epil = phi double [ %.085114.us.i.epil.init, %.epil.preheader137 ], [ %i.ec, %bb.q ]
  %epil.iter139 = phi i64 [ 0, %.epil.preheader137 ], [ %epil.iter139.next, %bb.q ]
  %gep216.i.epil = getelementptr [2 x i8], ptr %invariant.gep215.i, i64 %indvars.iv186.i.epil
  %i.ea = load i16, ptr %gep216.i.epil, align 2, !tbaa !58
  %i.eb = uitofp i16 %i.ea to double
  %i.ec = fadd nsz double %.085114.us.i.epil, %i.eb ; 2 uses
  %gep218.i.epil = getelementptr [8 x i8], ptr %invariant.gep217.i, i64 %indvars.iv186.i.epil
  store double %i.ec, ptr %gep218.i.epil, align 8, !tbaa !42
  %indvars.iv.next187.i.epil = add nuw nsw i64 %indvars.iv186.i.epil, 1
  %epil.iter139.next = add i64 %epil.iter139, 1   ; 2 uses
  %epil.iter139.cmp.not = icmp eq i64 %epil.iter139.next, %xtraiter138
  br i1 %epil.iter139.cmp.not, label %.loopexit102.us.i, label %bb.q, !llvm.loop !75

.loopexit102.us.i:                                ; preds = %bb.q, %.loopexit102.us.i.unr-lcssa
  %.not98.us.i = icmp eq i64 %indvars.iv196.i, 0
  br i1 %.not98.us.i, label %.loopexit.us.i, label %.lr.ph117.us.i.preheader

.lr.ph117.us.i.preheader:                         ; preds = %.loopexit102.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph117.us.i.preheader126, label %vector.body

vector.body:                                      ; preds = %.lr.ph117.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph117.us.i.preheader ] ; 2 uses
  %i.ed = add nuw nsw i64 %index, %i.da           ; 2 uses
  %i.ee = sub nsw i64 %i.ed, %i.cr
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load = load <2 x double>, ptr %i.ef, align 8, !tbaa !42, !alias.scope !98
  %wide.load109 = load <2 x double>, ptr %i.eg, align 8, !tbaa !42, !alias.scope !98
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ed ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load110 = load <2 x double>, ptr %i.eh, align 8, !tbaa !42, !alias.scope !99, !noalias !98
  %wide.load111 = load <2 x double>, ptr %i.ei, align 8, !tbaa !42, !alias.scope !99, !noalias !98
  %i.ej = fadd nsz <2 x double> %wide.load, %wide.load110
  %i.ek = fadd nsz <2 x double> %wide.load109, %wide.load111
  store <2 x double> %i.ej, ptr %i.eh, align 8, !tbaa !42, !alias.scope !99, !noalias !98
  store <2 x double> %i.ek, ptr %i.ei, align 8, !tbaa !42, !alias.scope !99, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph117.us.i.preheader126

.lr.ph117.us.i.preheader126:                      ; preds = %.lr.ph117.us.i.preheader, %middle.block
  %indvars.iv191.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph117.us.i.preheader ] ; 4 uses
  br i1 %lcmp.mod145.not, label %.lr.ph117.us.i.prol.loopexit, label %.lr.ph117.us.i.prol

.lr.ph117.us.i.prol:                              ; preds = %.lr.ph117.us.i.preheader126
  %i.em = add nuw nsw i64 %indvars.iv191.i.ph, %i.da ; 2 uses
  %i.en = sub nsw i64 %i.em, %i.cr
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !42
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.em ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !42
  %i.es = fadd nsz double %i.ep, %i.er
  store double %i.es, ptr %i.eq, align 8, !tbaa !42
  %indvars.iv.next192.i.prol = or disjoint i64 %indvars.iv191.i.ph, 1
  br label %.lr.ph117.us.i.prol.loopexit

.lr.ph117.us.i.prol.loopexit:                     ; preds = %.lr.ph117.us.i.prol, %.lr.ph117.us.i.preheader126
  %indvars.iv191.i.unr = phi i64 [ %indvars.iv191.i.ph, %.lr.ph117.us.i.preheader126 ], [ %indvars.iv.next192.i.prol, %.lr.ph117.us.i.prol ]
  %i.et = icmp eq i64 %indvars.iv191.i.ph, %i.cy
  br i1 %i.et, label %.loopexit.us.i, label %.lr.ph117.us.i.preheader126.new

.lr.ph117.us.i.preheader126.new:                  ; preds = %.lr.ph117.us.i.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.da
  br label %.lr.ph117.us.i

.lr.ph120.split.i:                                ; preds = %.lr.ph120.i
  br i1 %i.cq, label %.lr.ph120.split.split.us.preheader.i, label %calculate_sums.exit

.lr.ph120.split.split.us.preheader.i:             ; preds = %.lr.ph120.split.i
  %i.eu = zext nneg i32 %i.cp to i64              ; 12 uses
  %i.ev = sext i32 %.086.i to i64                 ; 2 uses
  %wide.trip.count184.i = zext nneg i32 %i.cm to i64
  %xtraiter = and i64 %i.eu, 3                    ; 3 uses
  %i.ew = icmp ult i32 %i.cp, 4
  %unroll_iter = and i64 %i.eu, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  %xtraiter131 = and i64 %i.eu, 3                 ; 3 uses
  %i.ex = icmp ult i32 %i.cp, 4
  %unroll_iter135 = and i64 %i.eu, 2147483644
  %lcmp.mod133.not = icmp eq i64 %xtraiter131, 0
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  %min.iters.check113 = icmp ult i32 %i.cp, 4
  %n.vec115 = and i64 %i.eu, 2147483644           ; 3 uses
  %cmp.n124 = icmp eq i64 %n.vec115, %i.eu
  br label %.lr.ph120.split.split.us.i

.lr.ph120.split.split.us.i:                       ; preds = %.loopexit.us127.i, %.lr.ph120.split.split.us.preheader.i
  %indvars.iv181.i = phi i64 [ 0, %.lr.ph120.split.split.us.preheader.i ], [ %indvars.iv.next182.i, %.loopexit.us127.i ] ; 7 uses
  switch i32 %i.ch, label %..loopexit106_crit_edge.us.i [
    i32 8, label %.lr.ph112.us.i
    i32 32, label %.preheader105.us.i
  ]

.preheader105.us.i:                               ; preds = %.lr.ph120.split.split.us.i
  %i.ey = mul nsw i64 %indvars.iv181.i, %i.ev
  %i.ez = mul nuw nsw i64 %indvars.iv181.i, %i.eu
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.bu, i64 %i.ey ; 5 uses
  %invariant.gep209.i = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ez ; 5 uses
  br i1 %i.ew, label %.epil.preheader, label %.preheader105.us.i.new

.preheader105.us.i.new:                           ; preds = %.preheader105.us.i, %.preheader105.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader105.us.i.new ], [ 0, %.preheader105.us.i ] ; 6 uses
  %.0109.us.i = phi double [ %i.fl, %.preheader105.us.i.new ], [ 0.000000e+00, %.preheader105.us.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader105.us.i.new ], [ 0, %.preheader105.us.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
end_hunk_0
