Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbgdec?download=true
inline.NumInlined: 102
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sbg_read_header:bb.a
  %4 = alloca %struct.tm, align 8                 ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.AVBPrint, align 8           ; 9 uses
  %6 = alloca %struct.sbg_script, align 8         ; 36 uses
  %7 = alloca %struct.ws_intervals, align 8       ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !126
  %i.g = add i32 %i.f, 1
  call void @av_bprint_init(ptr noundef nonnull %5, i32 noundef 0, i32 noundef %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !126
  %i.k = sext i32 %i.j to i64
  %i.l = call i32 @avio_read_to_bprint(ptr noundef %i.i, ptr noundef nonnull %5, i64 noundef %i.k) #14 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %read_whole_file.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i = load i32, ptr %i.n, align 8, !tbaa !129 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.val9.i = load i32, ptr %i.o, align 4, !tbaa !130
  %.not.i = icmp ult i32 %.val.i, %.val9.i
  br i1 %.not.i, label %bb.c, label %read_whole_file.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !132
  %.not8.i = icmp eq i32 %i.q, 0
  br i1 %.not8.i, label %read_whole_file.exit.thread, label %read_whole_file.exit

read_whole_file.exit:                             ; preds = %bb.c
  %i.r = load ptr, ptr %5, align 8, !tbaa !133
  %i.s = call fastcc i32 @parse_script(ptr noundef nonnull %0, ptr noundef %i.r, i32 noundef %.val.i, ptr noundef %6) ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %read_whole_file.exit.thread, label %bb.d

bb.d:                                             ; preds = %read_whole_file.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !134  ; 3 uses
  %.not = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34   ; 2 uses
  store i32 %i.x, ptr %i.u, align 8, !tbaa !134
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.v, ptr %i.w, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = phi i32 [ %i.v, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !135
  %.not58 = icmp eq i32 %i.aa, 0
  br i1 %.not58, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp slt i32 %i.y, 10
  %i.ac = sdiv i32 %i.y, 10
  %i.ad = select i1 %i.ab, i32 1, i32 %i.ac
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !135
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136
  %.not59 = icmp eq ptr %i.af, null
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.35) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !137 ; 4 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !138
  %wide.trip.count.i.i = zext nneg i32 %i.ah to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 2 uses
  %.06991.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.aq, %bb.l ]
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %indvars.iv.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !139
  %i.ao = icmp eq i8 %i.an, 78
  %i.ap = zext i1 %i.ao to i32
  %i.aq = add nuw nsw i32 %.06991.i.i, %i.ap      ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.l, !llvm.loop !111

._crit_edge.i.i:                                  ; preds = %bb.l
  %i.ar = icmp eq i32 %i.aq, %i.ah
  br i1 %i.ar, label %bb.m, label %bb.o

._crit_edge.thread.i.i:                           ; preds = %bb.k
  %i.as = icmp eq i32 %i.ah, 0
  br i1 %i.as, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !40
  %.not81.i.i = icmp eq i64 %i.au, -9223372036854775808
  br i1 %.not81.i.i, label %.thread129.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.37) #14
  br label %.thread129.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.av = icmp ne i32 %i.aq, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ax = load i64, ptr %i.aw, align 8            ; 4 uses
  %.not.i.i = icmp eq i64 %i.ax, -9223372036854775808
  %or.cond183 = select i1 %i.av, i1 true, i1 %.not.i.i
  br i1 %or.cond183, label %bb.p, label %.thread129.i.i

.thread.i.i:                                      ; preds = %._crit_edge.thread.i.i
  %.old = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.old182 = load i64, ptr %.old, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.old = icmp eq i64 %.old182, -9223372036854775808
  br i1 %.not.i.i.old, label %.thread, label %.thread129.i.i

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !140
  %.not79.i.i = icmp eq i8 %i.az, 0
  br i1 %.not79.i.i, label %bb.r, label %bb.q

.thread:                                          ; preds = %.thread.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !140
  %.not79.i.i255 = icmp eq i8 %i.bb, 0
  br i1 %.not79.i.i255, label %bb.r, label %.thread257

bb.q:                                             ; preds = %bb.p
  %i.bc = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %i.bc, label %.thread257, label %.thread129.i.i

.thread257:                                       ; preds = %.thread, %bb.q
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !138
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  store i64 %i.bf, ptr %.phi.trans.insert.i.i, align 8, !tbaa !40
  br label %.thread129.i.i

bb.r:                                             ; preds = %.thread, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.38) #14
  %i.bg = call i64 @time(ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.bh = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #14 ; 4 uses
  %.not80.i.i = icmp eq ptr %i.bh, null
  br i1 %.not80.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !142
  %i.bk = mul nsw i32 %i.bj, 3600
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !143
  %i.bn = mul nsw i32 %i.bm, 60
  %i.bo = add nsw i32 %i.bn, %i.bk
  %i.bp = load i32, ptr %i.bh, align 8, !tbaa !144
  %i.bq = add nsw i32 %i.bo, %i.bp
  %i.br = sext i32 %i.bq to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !42
  %i.bt = srem i64 %i.bs, 86400
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bu = phi i64 [ %i.br, %bb.s ], [ %i.bt, %bb.t ] ; 2 uses
  %.lhs.trunc.i.i = trunc nsw i64 %i.bu to i32    ; 2 uses
  %i.bv = insertelement <2 x i32> poison, i32 %.lhs.trunc.i.i, i64 0
  %i.bw = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bx = sdiv <2 x i32> %i.bw, <i32 3600, i32 60> ; 2 uses
  %8 = extractelement <2 x i32> %i.bx, i64 1
  %9 = srem i32 %8, 60
  %10 = srem i32 %.lhs.trunc.i.i, 60
  %i.by = extractelement <2 x i32> %i.bx, i64 0
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %i.by, i32 noundef %9, i32 noundef %10) #14
  %i.bz = mul nsw i64 %i.bu, 1000000              ; 2 uses
  %i.ca = load i32, ptr %i.ag, align 4, !tbaa !137 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph95.i.i, label %._crit_edge96.i.i

.lr.ph95.i.i:                                     ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !138
  %wide.trip.count109.i.i = zext nneg i32 %i.ca to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph95.i.i
  %indvars.iv106.i.i = phi i64 [ 0, %.lr.ph95.i.i ], [ %indvars.iv.next107.i.i, %bb.x ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %indvars.iv106.i.i ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !139
  %i.ch = icmp eq i8 %i.cg, 78
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !41
  %i.cj = add nsw i64 %i.ci, %i.bz
  store i64 %i.cj, ptr %i.ce, align 8, !tbaa !41
  store i8 84, ptr %i.cf, align 8, !tbaa !139
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next107.i.i = add nuw nsw i64 %indvars.iv106.i.i, 1 ; 2 uses
  %exitcond110.not.i.i = icmp eq i64 %indvars.iv.next107.i.i, %wide.trip.count109.i.i
  br i1 %exitcond110.not.i.i, label %._crit_edge96.i.i, label %bb.v, !llvm.loop !112

._crit_edge96.i.i:                                ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread129.i.i

.thread129.i.i:                                   ; preds = %bb.o, %._crit_edge96.i.i, %.thread257, %bb.q, %.thread.i.i, %bb.n, %bb.m
  %.068.i.i = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.bz, %._crit_edge96.i.i ], [ %i.bf, %.thread257 ], [ %i.ax, %bb.q ], [ %.old182, %.thread.i.i ], [ %i.ax, %bb.o ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !40 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -9223372036854775808
  br i1 %i.cm, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.thread129.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !140
  %.not82.i.i = icmp eq i8 %i.co, 0
  br i1 %.not82.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !138 ; 2 uses
  %.not83.i.i = icmp eq ptr %i.cq, null
  br i1 %.not83.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cs = phi i64 [ %i.cr, %bb.aa ], [ %.068.i.i, %bb.z ], [ %.068.i.i, %bb.y ] ; 2 uses
  store i64 %i.cs, ptr %i.ck, align 8, !tbaa !40
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread129.i.i
  %i.ct = phi i64 [ %i.cs, %bb.ab ], [ %i.cl, %.thread129.i.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !145 ; 3 uses
  %i.cw = sub nsw i64 9223372036854775807, %i.cv
  %i.cx = icmp sgt i64 %i.ct, %i.cw
  br i1 %i.cx, label %expand_script.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not84.i.i = icmp eq i64 %i.cv, 0
  %i.cy = add nsw i64 %i.cv, %i.ct
  %spec.select.i.i = select i1 %.not84.i.i, i64 -9223372036854775808, i64 %i.cy
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  store i64 %spec.select.i.i, ptr %i.cz, align 8, !tbaa !146
  %i.da = load i32, ptr %i.ag, align 4, !tbaa !137 ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph101.i.i, label %._crit_edge.i

.lr.ph101.i.i:                                    ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !138
  %wide.trip.count114.i.i = zext nneg i32 %i.da to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph101.i.i
  %indvars.iv111.i.i = phi i64 [ 0, %.lr.ph101.i.i ], [ %indvars.iv.next112.i.i, %bb.af ] ; 2 uses
  %.099.i.i = phi i64 [ 0, %.lr.ph101.i.i ], [ %spec.select86.i.i, %bb.af ] ; 4 uses
  %.06798.i.i = phi i64 [ %.068.i.i, %.lr.ph101.i.i ], [ %i.dp, %bb.af ]
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %indvars.iv111.i.i ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !41 ; 3 uses
  %i.dg = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.df, i64 %.099.i.i) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0       ; 2 uses
  %i.dj = icmp slt i64 %i.di, 0
  %i.dk = select i1 %i.dj, i64 9223372036854775807, i64 -9223372036854775808
  %i.dl = select i1 %i.dh, i64 %i.dk, i64 %i.di   ; 2 uses
  %i.dm = add i64 %i.df, %.099.i.i
  %.not85.i.i = icmp eq i64 %i.dl, %i.dm
  br i1 %.not85.i.i, label %bb.af, label %expand_script.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.dn = icmp slt i64 %i.dl, %.06798.i.i
  %i.do = add nsw i64 %.099.i.i, 86400000000
  %spec.select86.i.i = select i1 %i.dn, i64 %i.do, i64 %.099.i.i ; 2 uses
  %i.dp = add nsw i64 %spec.select86.i.i, %i.df   ; 2 uses
  store i64 %i.dp, ptr %i.de, align 8, !tbaa !41
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %exitcond115.not.i.i = icmp eq i64 %indvars.iv.next112.i.i, %wide.trip.count114.i.i
  br i1 %exitcond115.not.i.i, label %expand_timestamps.exit.i, label %bb.ae, !llvm.loop !113

bb.ag:                                            ; preds = %expand_timestamps.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dq = load i32, ptr %i.ag, align 4, !tbaa !137
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next.i, %i.dr
  br i1 %i.ds, label %expand_timestamps.exit.i, label %._crit_edge.i, !llvm.loop !114

expand_timestamps.exit.i:                         ; preds = %bb.af, %bb.ag
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.dt = load ptr, ptr %i.dc, align 8, !tbaa !138
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %indvars.iv.i
  %i.dv = call fastcc i32 @expand_tseq(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %i.b, i64 noundef 0, ptr noundef %i.du) ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %expand_script.exit.thread, label %bb.ag

._crit_edge.i:                                    ; preds = %bb.ag, %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !147 ; 2 uses
  %.not.i66 = icmp eq i32 %i.dy, 0
  br i1 %.not.i66, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.36) #14
  br label %expand_script.exit.thread

bb.ai:                                            ; preds = %._crit_edge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 101
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !148
  %.not23.i = icmp eq i8 %i.ea, 0
  br i1 %.not23.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !149
  %i.ed = sext i32 %i.dy to i64
  %i.ee = getelementptr [48 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 -48
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !44
  store i64 %i.eg, ptr %i.cz, align 8, !tbaa !146
  br label %bb.ak

expand_script.exit.thread:                        ; preds = %bb.ae, %expand_timestamps.exit.i, %bb.ah, %bb.ac
  %.019.i.ph = phi i32 [ %i.dv, %expand_timestamps.exit.i ], [ -1094995529, %bb.ac ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %read_whole_file.exit.thread

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.eh = call i32 @av_bprint_finalize(ptr noundef nonnull %5, ptr noundef null) #14 ; 0 uses
  %i.ei = load i32, ptr %i.u, align 8, !tbaa !134
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !45
  %i.el = sdiv i64 %i.ek, 2                       ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !149 ; 7 uses
  %i.eo = load i32, ptr %i.dx, align 8, !tbaa !147 ; 7 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr [48 x i8], ptr %i.en, i64 %i.ep ; 8 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -48
  %i.es = load i64, ptr %i.er, align 8, !tbaa !44
  %i.et = load i64, ptr %i.en, align 8, !tbaa !44
  %i.eu = sub i64 %i.es, %i.et
  %.fr124.i = freeze i64 %i.eu                    ; 2 uses
  %i.ev = icmp slt i64 %.fr124.i, 0
  br i1 %i.ev, label %encode_intervals.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = add nuw i64 %.fr124.i, 86399999999      ; 2 uses
  %i.ex = urem i64 %i.ew, 86400000000
  %i.ey = sub nuw i64 %i.ew, %i.ex
  %i.ez = call i64 @llvm.smax.i64(i64 %i.ey, i64 86400000000) ; 6 uses
  %i.fa = icmp sgt i32 %i.eo, 0
  br i1 %i.fa, label %.lr.ph.i, label %._crit_edge.i67

.lr.ph.i:                                         ; preds = %bb.al
  %i.fb = xor i64 %i.ez, 9223372036854775807
  %i.fc = zext nneg i32 %i.eo to i64              ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.lr.ph.i
  %indvars.iv.i73 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i74, %bb.ap ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [48 x i8], ptr %i.en, i64 %indvars.iv.i73 ; 4 uses
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i73, 1 ; 3 uses
  %i.fe = icmp ne i64 %indvars.iv.next.i74, %i.fc ; 4 uses
  %i.ff = select i1 %i.fe, i64 %indvars.iv.next.i74, i64 0
  %i.fg = getelementptr inbounds nuw [48 x i8], ptr %i.en, i64 %i.ff ; 2 uses
end_hunk_0
