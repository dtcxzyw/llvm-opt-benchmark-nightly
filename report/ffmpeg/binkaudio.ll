Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/binkaudio?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decode_init:bb.a
  %i.ab = zext i1 %i.aa to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi i32 [ 0, %bb.c ], [ %i.ab, %bb.d ]  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !39
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = icmp eq i32 %i.ag, 86063                ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 3, ptr %i.ai, align 4, !tbaa !60
  %i.aj = udiv i32 2147483647, %i.n
  %i.ak = icmp sgt i32 %i.f, %i.aj
  br i1 %i.ak, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = mul nsw i32 %i.n, %i.f                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 1, ptr %i.am, align 8, !tbaa !40
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.h, label %vector.ph

bb.h:                                             ; preds = %bb.g
  %i.an = zext nneg i32 %i.n to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.0, %i.aq
  br label %vector.ph

bb.i:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 8, ptr %i.at, align 4, !tbaa !60
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.n, i32 2)
  br label %vector.ph

vector.ph:                                        ; preds = %bb.g, %bb.h, %bb.i
  %spec.select = phi i32 [ 1, %bb.g ], [ 1, %bb.h ], [ %i.au, %bb.i ]
  %.085 = phi i32 [ %i.al, %bb.g ], [ %i.al, %bb.h ], [ %i.f, %bb.i ]
  %.1 = phi i32 [ %.0, %bb.g ], [ %i.ar, %bb.h ], [ %.0, %bb.i ] ; 3 uses
  %i.av = shl nuw i32 1, %.1                      ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !41
  %i.ax = sdiv i32 %i.av, 16                      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !42
  %i.az = sub nsw i32 %i.av, %i.ax
  %i.ba = mul nsw i32 %spec.select, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !43
  %i.bc = sext i32 %.085 to i64
  %i.bd = add nsw i64 %i.bc, 1
  %i.be = sdiv i64 %i.bd, 2                       ; 2 uses
  %i.bf = trunc nsw i64 %i.be to i32
  %i.bg = sitofp nsz i32 %i.av to double          ; 2 uses
  %i.bh = tail call ninf nsz double @llvm.sqrt.f64(double %i.bg)
  %i.bi = fmul nsz double %i.bh, 3.276800e+04
  %.113 = select i1 %i.ah, double 2.000000e+00, double %i.bg
  %i.bj = fdiv nsz double %.113, %i.bi
  %i.bk = fptrunc double %i.bj to float           ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store float %i.bk, ptr %i.bl, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 6308
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bn = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.bo = fmul nnan nsz <4 x float> %i.bn, splat (float f0x3E1C8FA1)
  %i.bp = tail call nnan nsz <4 x float> @llvm.exp.v4f32(<4 x float> %i.bo)
  %i.bq = fmul nsz <4 x float> %i.bp, %broadcast.splat
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index
  store <4 x float> %i.bq, ptr %i.br, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bs = icmp eq i64 %index.next, 96
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %middle.block, %bb.k
  %indvars.iv99 = phi i64 [ 1, %middle.block ], [ %indvars.iv.next100, %bb.k ] ; 6 uses
  %i.bu = getelementptr [2 x i8], ptr @ff_wma_critical_freqs, i64 %indvars.iv99
  %i.bv = getelementptr i8, ptr %i.bu, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !62
  %i.bx = zext i16 %i.bw to i64
  %.not93 = icmp sgt i64 %i.be, %i.bx
  br i1 %.not93, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, 25
  br i1 %exitcond102.not, label %.thread, label %bb.j, !llvm.loop !55

.thread:                                          ; preds = %bb.k
  store i32 25, ptr %i.bt, align 4, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 2 uses
  store i32 2, ptr %i.by, align 4, !tbaa !50
  br label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.j
  %i.bz = trunc nuw nsw i64 %indvars.iv99 to i32
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 3 uses
  store i32 2, ptr %i.ca, align 4, !tbaa !50
  %i.cb = icmp samesign ugt i64 %indvars.iv99, 1
  br i1 %i.cb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread, %bb.l
  %i.cc = phi ptr [ %i.by, %.thread ], [ %i.ca, %bb.l ]
  %i.cd = phi i64 [ 25, %.thread ], [ %indvars.iv99, %bb.l ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv103 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next104, %.lr.ph ] ; 3 uses
  %i.cf = getelementptr [2 x i8], ptr @ff_wma_critical_freqs, i64 %indvars.iv103
  %i.cg = getelementptr i8, ptr %i.cf, i64 -2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !62
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl i32 %i.ci, %.1
  %i.ck = sdiv i32 %i.cj, %i.bf
  %i.cl = and i32 %i.ck, -2
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv103
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !50
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.cn = icmp samesign ult i64 %indvars.iv.next104, %i.cd
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %i.co = phi ptr [ %i.ca, %bb.l ], [ %i.cc, %.lr.ph ]
  %.pre-phi = phi i64 [ %indvars.iv99, %bb.l ], [ %i.cd, %.lr.ph ]
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.pre-phi
  store i32 %i.av, ptr %i.cp, align 4, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 1, ptr %i.cq, align 4, !tbaa !51
  %i.cr = load i32, ptr %i.af, align 4, !tbaa !32
  %i.cs = icmp eq i32 %i.cr, 86063
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store float 5.000000e-01, ptr %i.a, align 4, !tbaa !45
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 6704
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 6712
  %i.cv = call i32 @av_tx_init(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu, i32 noundef 6, i32 noundef 1, i32 noundef %i.av, ptr noundef nonnull %i.a, i64 noundef 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.cw = sitofp nsz i32 %i.av to double
  %i.cx = fdiv nsz double 1.000000e+00, %i.cw
  %i.cy = fptrunc nsz double %i.cx to float
  store float %i.cy, ptr %i.b, align 4, !tbaa !45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 6704
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 6712
  %i.db = add nsw i32 %.1, -1
  %i.dc = shl nuw i32 1, %i.db
  %i.dd = call i32 @av_tx_init(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.da, i32 noundef 9, i32 noundef 1, i32 noundef %i.dc, ptr noundef nonnull %i.b, i64 noundef 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.082 = phi i32 [ %i.cv, %bb.m ], [ %i.dd, %bb.n ] ; 2 uses
  %i.de = icmp slt i32 %.082, 0
  br i1 %i.de, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !69
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 6696
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !52
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.f, %bb.p, %bb.b
  %.086 = phi i32 [ -1094995529, %bb.b ], [ 0, %bb.p ], [ -1094995529, %bb.f ], [ %.082, %bb.o ]
  ret i32 %.086
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @binkaudio_receive_frame(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [25 x float], align 16            ; 7 uses
  %i.b = alloca [4098 x float], align 16          ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6696 ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 12       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = getelementptr i8, ptr %i.d, i64 8        ; 23 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 6308
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 6712
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 6704
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 164 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ao, %bb.a
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !52  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83
  %.not = icmp eq ptr %i.ac, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ad = call i32 @ff_decode_get_packet(ptr noundef %0, ptr noundef nonnull %i.aa) #8 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 4, !tbaa !53
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !52  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !84 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 4
  br i1 %i.ai, label %.loopexit66.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83 ; 2 uses
  %i.al = icmp samesign ugt i32 %i.ah, 268435455
  %i.am = shl nuw nsw i32 %i.ah, 3
  %i.an = select i1 %i.al, i32 -8, i32 %i.am      ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.an, 2147483135   ; 2 uses
  %i.ao = icmp ne ptr %i.ak, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.ao      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.ak, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.an, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.d, align 8, !tbaa !85
  store i32 %.013.i.i, ptr %i.f, align 4, !tbaa !86
  %i.ap = add nuw nsw i32 %.013.i.i, 8            ; 2 uses
  store i32 %i.ap, ptr %i.g, align 8, !tbaa !87
  store i32 0, ptr %i.h, align 8, !tbaa !88
  br i1 %or.cond3.i.i, label %bb.g, label %.loopexit66

bb.g:                                             ; preds = %bb.f
  %i.aq = call i32 @llvm.umin.i32(i32 %i.ap, i32 32)
  store i32 %i.aq, ptr %i.h, align 8, !tbaa !88
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !53
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.j, align 8, !tbaa !41
  store i32 %i.at, ptr %i.k, align 8, !tbaa !93
  %i.au = call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.loopexit66, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 -9223372036854775808, ptr %i.l, align 8, !tbaa !94
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !95  ; 5 uses
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.not65 = icmp eq i32 %i.az, 86064              ; 3 uses
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !40
  %i.bb = load i32, ptr %i.i, align 4, !tbaa !53  ; 3 uses
  %i.bc = sub i32 %i.ba, %i.bb                    ; 3 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %i.bc, i32 2) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  br i1 %.not65, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !88
  %i.be = load i32, ptr %i.g, align 8, !tbaa !87
  %i.bf = add i32 %i.bd, 2
  %i.bg = call i32 @llvm.umin.i32(i32 %i.be, i32 %i.bf)
  store i32 %i.bg, ptr %i.h, align 8, !tbaa !88
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = icmp sgt i32 %i.bc, 0
  br i1 %i.bh, label %.lr.ph220.i, label %.loopexit

.lr.ph220.i:                                      ; preds = %bb.n
  %i.bi = sext i32 %i.bb to i64                   ; 7 uses
  %wide.trip.count245.i = zext nneg i32 %spec.select to i64
  %invariant.gep.sink.i = getelementptr [8 x i8], ptr %i.aw, i64 %i.bi
  br label %bb.o

bb.o:                                             ; preds = %bb.ak, %.lr.ph220.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph220.i ], [ %indvars.iv.next243.i, %bb.ak ] ; 2 uses
  %i.bj = load i32, ptr %i.p, align 8, !tbaa !39
  %.not164.i = icmp eq i32 %i.bj, 0               ; 2 uses
  %.val170.i = load i32, ptr %i.h, align 8, !tbaa !88 ; 7 uses
  %.val171.i = load i32, ptr %i.f, align 4, !tbaa !86 ; 2 uses
  %i.bk = sub nsw i32 %.val171.i, %.val170.i      ; 2 uses
  br i1 %.not164.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp slt i32 %i.bk, 64
  br i1 %i.bl, label %bb.al, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.g, align 8, !tbaa !87  ; 5 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !85  ; 5 uses
  %i.bo = lshr i32 %.val170.i, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !34
  %i.bs = and i32 %.val170.i, 7
  %i.bt = lshr i32 %i.br, %i.bs
  %i.bu = and i32 %i.bt, 65535
  %i.bv = add nsw i32 %.val170.i, 16
  %i.bw = call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bv) ; 4 uses
  store i32 %i.bw, ptr %i.h, align 8, !tbaa !88
  %i.bx = lshr i32 %i.bw, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !34
  %i.cb = and i32 %i.bw, 7
  %i.cc = lshr i32 %i.ca, %i.cb
  %i.cd = add i32 %i.bw, 16
  %i.ce = call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.cd) ; 4 uses
  store i32 %i.ce, ptr %i.h, align 8, !tbaa !88
  %i.cf = shl i32 %i.cc, 16
  %i.cg = or disjoint i32 %i.cf, %i.bu
  %i.ch = bitcast i32 %i.cg to float
  %i.ci = load float, ptr %i.q, align 8, !tbaa !44 ; 2 uses
  %i.cj = fmul nsz float %i.ci, %i.ch             ; 2 uses
  store float %i.cj, ptr %i.b, align 16, !tbaa !45
  %i.ck = lshr i32 %i.ce, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !34
  %i.co = and i32 %i.ce, 7
  %i.cp = lshr i32 %i.cn, %i.co
  %i.cq = and i32 %i.cp, 65535
  %i.cr = add i32 %i.ce, 16
  %i.cs = call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.cr) ; 4 uses
  store i32 %i.cs, ptr %i.h, align 8, !tbaa !88
  %i.ct = lshr i32 %i.cs, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !34
  %i.cx = and i32 %i.cs, 7
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = add i32 %i.cs, 16
  %i.da = call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.cz) ; 2 uses
  store i32 %i.da, ptr %i.h, align 8, !tbaa !88
  %i.db = shl i32 %i.cy, 16
  %i.dc = or disjoint i32 %i.db, %i.cq
  %i.dd = bitcast i32 %i.dc to float
  %i.de = fmul nsz float %i.ci, %i.dd
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.df = icmp slt i32 %i.bk, 58
  br i1 %i.df, label %bb.al, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = load i32, ptr %i.g, align 8, !tbaa !87  ; 7 uses
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !85  ; 7 uses
  %i.di = lshr i32 %.val170.i, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !34
  %i.dm = and i32 %.val170.i, 7
  %i.dn = lshr i32 %i.dl, %i.dm
  %i.do = and i32 %i.dn, 31
  %i.dp = add nsw i32 %.val170.i, 5
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.dp) ; 4 uses
  store i32 %i.dq, ptr %i.h, align 8, !tbaa !88
  %i.dr = lshr i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 1, !tbaa !34
  %i.dv = and i32 %i.dq, 7
  %i.dw = lshr i32 %i.du, %i.dv
  %i.dx = and i32 %i.dw, 8388607
  %i.dy = add i32 %i.dq, 23
  %i.dz = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.dy) ; 5 uses
  store i32 %i.dz, ptr %i.h, align 8, !tbaa !88
  %i.ea = uitofp nsz nneg i32 %i.dx to float
  %i.eb = add nsw i32 %i.do, -23
  %i.ec = call nsz float @ldexpf(float noundef %i.ea, i32 noundef %i.eb) #9 ; 2 uses
  %i.ed = lshr i32 %i.dz, 3
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !34
  %i.eh = icmp slt i32 %i.dz, %i.dg
  %i.ei = zext i1 %i.eh to i32
  %spec.select.i.i.i = add i32 %i.dz, %i.ei       ; 4 uses
  %i.ej = zext i8 %i.eg to i32
  %i.ek = and i32 %i.dz, 7
  store i32 %spec.select.i.i.i, ptr %i.h, align 8, !tbaa !88
  %i.el = shl nuw nsw i32 1, %i.ek
  %i.em = and i32 %i.el, %i.ej
  %.not.i.i = icmp eq i32 %i.em, 0
  %i.en = fneg nsz float %i.ec
  %.0.i.i60 = select nsz i1 %.not.i.i, float %i.ec, float %i.en
  %i.eo = load float, ptr %i.q, align 8, !tbaa !44 ; 2 uses
  %i.ep = fmul nsz float %i.eo, %.0.i.i60         ; 2 uses
  store float %i.ep, ptr %i.b, align 16, !tbaa !45
  %i.eq = lshr i32 %spec.select.i.i.i, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.er
  %i.et = load i32, ptr %i.es, align 1, !tbaa !34
  %i.eu = and i32 %spec.select.i.i.i, 7
  %i.ev = lshr i32 %i.et, %i.eu
  %i.ew = and i32 %i.ev, 31
  %i.ex = add i32 %spec.select.i.i.i, 5
  %i.ey = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.ex) ; 4 uses
  store i32 %i.ey, ptr %i.h, align 8, !tbaa !88
  %i.ez = lshr i32 %i.ey, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 1, !tbaa !34
  %i.fd = and i32 %i.ey, 7
  %i.fe = lshr i32 %i.fc, %i.fd
  %i.ff = and i32 %i.fe, 8388607
  %i.fg = add i32 %i.ey, 23
  %i.fh = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.fg) ; 5 uses
  store i32 %i.fh, ptr %i.h, align 8, !tbaa !88
  %i.fi = uitofp nsz nneg i32 %i.ff to float
  %i.fj = add nsw i32 %i.ew, -23
  %i.fk = call nsz float @ldexpf(float noundef %i.fi, i32 noundef %i.fj) #9 ; 2 uses
  %i.fl = lshr i32 %i.fh, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !34
  %i.fp = icmp slt i32 %i.fh, %i.dg
  %i.fq = zext i1 %i.fp to i32
  %spec.select.i.i174.i = add i32 %i.fh, %i.fq    ; 2 uses
  %i.fr = zext i8 %i.fo to i32
  %i.fs = and i32 %i.fh, 7
  store i32 %spec.select.i.i174.i, ptr %i.h, align 8, !tbaa !88
  %i.ft = shl nuw nsw i32 1, %i.fs
  %i.fu = and i32 %i.ft, %i.fr
  %.not.i175.i = icmp eq i32 %i.fu, 0
  %i.fv = fneg nsz float %i.fk
  %.0.i176.i = select nsz i1 %.not.i175.i, float %i.fk, float %i.fv
  %i.fw = fmul nsz float %i.eo, %.0.i176.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.fx = phi float [ %i.cj, %bb.q ], [ %i.ep, %bb.s ]
  %storemerge.i = phi float [ %i.de, %bb.q ], [ %i.fw, %bb.s ] ; 2 uses
  %i.fy = phi ptr [ %i.bn, %bb.q ], [ %i.dh, %bb.s ] ; 6 uses
  %i.fz = phi i32 [ %i.bm, %bb.q ], [ %i.dg, %bb.s ] ; 6 uses
  %.promoted.i = phi i32 [ %i.da, %bb.q ], [ %spec.select.i.i174.i, %bb.s ] ; 3 uses
  store float %storemerge.i, ptr %i.r, align 4, !tbaa !45
  %i.ga = sub nsw i32 %.val171.i, %.promoted.i
  %i.gb = load i32, ptr %i.s, align 4, !tbaa !49  ; 3 uses
  %i.gc = shl nsw i32 %i.gb, 3
  %i.gd = icmp slt i32 %i.ga, %i.gc
  br i1 %i.gd, label %bb.al, label %.preheader183.i

.preheader183.i:                                  ; preds = %bb.t
  %i.ge = icmp sgt i32 %i.gb, 0
  br i1 %i.ge, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader183.i
  %wide.trip.count.i = zext nneg i32 %i.gb to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.gf = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.go, %bb.u ] ; 3 uses
  %i.gg = lshr i32 %i.gf, 3
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 1, !tbaa !34
  %i.gk = and i32 %i.gf, 7
  %i.gl = lshr i32 %i.gj, %i.gk
  %i.gm = and i32 %i.gl, 255
  %i.gn = add i32 %i.gf, 8
  %i.go = call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.gn) ; 3 uses
  store i32 %i.go, ptr %i.h, align 8, !tbaa !88
  %i.gp = call i32 @llvm.umin.i32(i32 %i.gm, i32 95)
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !45
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store float %i.gs, ptr %i.gt, align 4, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@binkaudio_receive_frame:bb.a
bb.z:                                             ; preds = %bb.y, %bb.x
  %.promoted192213.i = phi i32 [ %i.hq, %bb.y ], [ %spec.select.i.i, %bb.x ]
  %.pn.i = phi i32 [ %i.hv, %bb.y ], [ 8, %bb.x ]
  %.0149.i = add nsw i32 %.pn.i, %.1152202.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.promoted192214.i = phi i32 [ %.promoted192210.i, %bb.w ], [ %.promoted192213.i, %bb.z ] ; 3 uses
  %.1150.i = phi i32 [ %i.gx, %bb.w ], [ %.0149.i, %bb.z ]
  %..1150.i = call i32 @llvm.smin.i32(i32 %.1150.i, i32 %i.gu) ; 8 uses
  %i.hw = lshr i32 %.promoted192214.i, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 1, !tbaa !34
  %i.ia = and i32 %.promoted192214.i, 7
  %i.ib = lshr i32 %i.hz, %i.ia
  %i.ic = and i32 %i.ib, 15                       ; 3 uses
  %i.id = add i32 %.promoted192214.i, 4
  %i.ie = call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.id) ; 5 uses
  store i32 %i.ie, ptr %i.h, align 8, !tbaa !88
  %i.if = icmp eq i32 %i.ic, 0
  br i1 %i.if, label %bb.ab, label %.preheader180.i

.preheader180.i:                                  ; preds = %bb.aa
  %i.ig = icmp slt i32 %.1152202.i, %..1150.i
  br i1 %i.ig, label %.lr.ph189.i, label %.loopexit179.i

.lr.ph189.i:                                      ; preds = %.preheader180.i
  %i.ih = sub nuw nsw i32 32, %i.ic
  %i.ii = lshr i32 -1, %i.ih
  %i.ij = sext i32 %.1152202.i to i64
  %wide.trip.count234.i = sext i32 %..1150.i to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ik = sext i32 %.1152202.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ik
  %i.im = sub nsw i32 %..1150.i, %.1152202.i
  %i.in = sext i32 %i.im to i64
  %i.io = shl nsw i64 %i.in, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.il, i8 0, i64 %i.io, i1 false)
  %i.ip = sext i32 %.0144203.i to i64             ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !50
  %i.is = icmp ult i32 %i.ir, %..1150.i
  br i1 %i.is, label %.lr.ph197.i, label %.loopexit179.i

.lr.ph197.i:                                      ; preds = %bb.ab, %.lr.ph197.i
  %indvars.iv236.i = phi i64 [ %indvars.iv.next237.i, %.lr.ph197.i ], [ %i.ip, %bb.ab ] ; 2 uses
  %indvars.iv.next237.i = add nsw i64 %indvars.iv236.i, 1 ; 3 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next237.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !50
  %i.iv = icmp ult i32 %i.iu, %..1150.i
  br i1 %i.iv, label %.lr.ph197.i, label %..loopexit179_crit_edge.i, !llvm.loop !71

bb.ac:                                            ; preds = %bb.ai, %.lr.ph189.i
  %indvars.iv231.i = phi i64 [ %i.ij, %.lr.ph189.i ], [ %indvars.iv.next232.i, %bb.ai ] ; 3 uses
  %spec.select.i177193.i = phi i32 [ %i.ie, %.lr.ph189.i ], [ %spec.select.i177194.i, %bb.ai ] ; 3 uses
  %.2188.i = phi float [ %.0143204.i, %.lr.ph189.i ], [ %.3.i, %bb.ai ]
  %.2146187.i = phi i32 [ %.0144203.i, %.lr.ph189.i ], [ %.3147.i, %bb.ai ] ; 3 uses
  %i.iw = sext i32 %.2146187.i to i64             ; 2 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !50
  %i.iz = trunc nsw i64 %indvars.iv231.i to i32
  %i.ja = icmp eq i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jb = add nsw i32 %.2146187.i, 1
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.iw
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3147.i = phi i32 [ %i.jb, %bb.ad ], [ %.2146187.i, %bb.ac ] ; 2 uses
  %.3.i = phi nsz float [ %i.jd, %bb.ad ], [ %.2188.i, %bb.ac ] ; 4 uses
  %i.je = lshr i32 %spec.select.i177193.i, 3
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 1, !tbaa !34
  %i.ji = and i32 %spec.select.i177193.i, 7
  %i.jj = lshr i32 %i.jh, %i.ji
  %i.jk = and i32 %i.jj, %i.ii                    ; 3 uses
  %i.jl = add i32 %spec.select.i177193.i, %i.ic
  %i.jm = call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.jl) ; 6 uses
  store i32 %i.jm, ptr %i.h, align 8, !tbaa !88
  %.not167.i = icmp eq i32 %i.jk, 0
  br i1 %.not167.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jn = lshr i32 %i.jm, 3
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !34
  %i.jr = icmp slt i32 %i.jm, %i.fz
  %i.js = zext i1 %i.jr to i32
  %spec.select.i177.i = add i32 %i.jm, %i.js      ; 3 uses
  %i.jt = zext i8 %i.jq to i32
  %i.ju = and i32 %i.jm, 7
  store i32 %spec.select.i177.i, ptr %i.h, align 8, !tbaa !88
  %i.jv = shl nuw nsw i32 1, %i.ju
  %i.jw = and i32 %i.jv, %i.jt
  %.not168.i = icmp eq i32 %i.jw, 0
  br i1 %.not168.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jx = fneg nsz float %.3.i
  %i.jy = uitofp nneg i32 %i.jk to float
  %i.jz = fmul nsz float %i.jx, %i.jy
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ka = uitofp nneg i32 %i.jk to float
  %i.kb = fmul nsz float %.3.i, %i.ka
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.sink.i = phi float [ %i.jz, %bb.ag ], [ %i.kb, %bb.ah ], [ 0.000000e+00, %bb.ae ]
  %spec.select.i177194.i = phi i32 [ %spec.select.i177.i, %bb.ag ], [ %spec.select.i177.i, %bb.ah ], [ %i.jm, %bb.ae ] ; 2 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv231.i
  store float %.sink.i, ptr %i.kc, align 4, !tbaa !45
  %indvars.iv.next232.i = add nsw i64 %indvars.iv231.i, 1 ; 2 uses
  %exitcond235.not.i = icmp eq i64 %indvars.iv.next232.i, %wide.trip.count234.i
  br i1 %exitcond235.not.i, label %.loopexit179.i, label %bb.ac, !llvm.loop !72

..loopexit179_crit_edge.i:                        ; preds = %.lr.ph197.i
  %i.kd = trunc nsw i64 %indvars.iv.next237.i to i32
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv236.i
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !45
  br label %.loopexit179.i

.loopexit179.i:                                   ; preds = %bb.ai, %..loopexit179_crit_edge.i, %bb.ab, %.preheader180.i
  %.promoted192211.i = phi i32 [ %i.ie, %bb.ab ], [ %i.ie, %..loopexit179_crit_edge.i ], [ %i.ie, %.preheader180.i ], [ %spec.select.i177194.i, %bb.ai ]
  %.3154.i = phi i32 [ %..1150.i, %bb.ab ], [ %..1150.i, %..loopexit179_crit_edge.i ], [ %.1152202.i, %.preheader180.i ], [ %..1150.i, %bb.ai ] ; 2 uses
  %.4148.i = phi i32 [ %.0144203.i, %bb.ab ], [ %i.kd, %..loopexit179_crit_edge.i ], [ %.0144203.i, %.preheader180.i ], [ %.3147.i, %bb.ai ]
  %.4.i = phi nsz float [ %.0143204.i, %bb.ab ], [ %i.kf, %..loopexit179_crit_edge.i ], [ %.0143204.i, %.preheader180.i ], [ %.3.i, %bb.ai ]
  %i.kg = icmp slt i32 %.3154.i, %i.gu
  br i1 %i.kg, label %bb.v, label %._crit_edge207.i, !llvm.loop !73

._crit_edge207.i:                                 ; preds = %.loopexit179.i
  br i1 %.not65, label %._crit_edge207.i._crit_edge, label %.preheader182.i

._crit_edge207.i._crit_edge:                      ; preds = %._crit_edge207.i
  %.pre78 = load float, ptr %i.b, align 16, !tbaa !45
  br label %bb.aj

._crit_edge207.thread.i:                          ; preds = %._crit_edge.i
  br i1 %.not65, label %bb.aj, label %.preheader182.._crit_edge217_crit_edge.i

.preheader182.i:                                  ; preds = %._crit_edge207.i
  %i.kh = zext nneg i32 %i.gu to i64              ; 2 uses
  br label %.lr.ph216.i

.preheader182.._crit_edge217_crit_edge.i:         ; preds = %._crit_edge207.thread.i
  %.pre.i = sext i32 %i.gu to i64
  br label %._crit_edge217.i

bb.aj:                                            ; preds = %._crit_edge207.i._crit_edge, %._crit_edge207.thread.i
  %i.ki = phi float [ %.pre78, %._crit_edge207.i._crit_edge ], [ %i.fx, %._crit_edge207.thread.i ]
  %i.kj = fmul nsz float %i.ki, 2.000000e+00
  store float %i.kj, ptr %i.b, align 16, !tbaa !45
  br label %bb.ak

._crit_edge217.i.loopexit:                        ; preds = %.lr.ph216.i
  %.pre = load float, ptr %i.r, align 4, !tbaa !45
  br label %._crit_edge217.i

._crit_edge217.i:                                 ; preds = %._crit_edge217.i.loopexit, %.preheader182.._crit_edge217_crit_edge.i
  %i.kk = phi float [ %storemerge.i, %.preheader182.._crit_edge217_crit_edge.i ], [ %.pre, %._crit_edge217.i.loopexit ]
  %.pre-phi.i = phi i64 [ %.pre.i, %.preheader182.._crit_edge217_crit_edge.i ], [ %i.kh, %._crit_edge217.i.loopexit ]
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre-phi.i ; 2 uses
  store float %i.kk, ptr %i.kl, align 4, !tbaa !45
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !45
  %i.km = getelementptr i8, ptr %i.kl, i64 4
  store float 0.000000e+00, ptr %i.km, align 4, !tbaa !45
  br label %bb.ak

.lr.ph216.i:                                      ; preds = %.lr.ph216.i, %.preheader182.i
  %indvars.iv239.i = phi i64 [ 2, %.preheader182.i ], [ %indvars.iv.next240.i, %.lr.ph216.i ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv239.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !45
  %i.kq = fneg nsz float %i.kp
  store float %i.kq, ptr %i.ko, align 4, !tbaa !45
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 2 ; 2 uses
  %i.kr = icmp samesign ult i64 %indvars.iv.next240.i, %i.kh
  br i1 %i.kr, label %.lr.ph216.i, label %._crit_edge217.i.loopexit, !llvm.loop !74

bb.ak:                                            ; preds = %._crit_edge217.i, %bb.aj
  %.sink274.i = phi i64 [ 4, %bb.aj ], [ 8, %._crit_edge217.i ]
  %i.ks = load ptr, ptr %i.v, align 8, !tbaa !96
  %i.kt = load ptr, ptr %i.w, align 8, !tbaa !97
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.sink.i, i64 %indvars.iv242.i
  %i.ku = load ptr, ptr %gep.i, align 8, !tbaa !99
  call void %i.ks(ptr noundef %i.kt, ptr noundef %i.ku, ptr noundef nonnull %i.b, i64 noundef %.sink274.i) #8, !inline_history !75
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %exitcond246.not.i = icmp eq i64 %indvars.iv.next243.i, %wide.trip.count245.i
  br i1 %exitcond246.not.i, label %.preheader178.i, label %bb.o, !llvm.loop !76

.preheader178.i:                                  ; preds = %bb.ak
  %2 = shl nsw i64 %i.bi, 10                      ; 2 uses
  %i.kv = load i32, ptr %i.x, align 4, !tbaa !42  ; 6 uses
  %i.kw = mul nuw nsw i32 %i.kv, %spec.select     ; 5 uses
  %i.kx = load i32, ptr %i.y, align 4, !tbaa !51
  %.not163.i = icmp eq i32 %i.kx, 0
  %i.ky = icmp sgt i32 %i.kv, 0
  %or.cond.i = select i1 %.not163.i, i1 %i.ky, i1 false
  br i1 %or.cond.i, label %.lr.ph223.i, label %.preheader178.i..loopexit.i_crit_edge

.preheader178.i..loopexit.i_crit_edge:            ; preds = %.preheader178.i
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bi
  %.pre79 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !99
  br label %.loopexit.i

.lr.ph223.i:                                      ; preds = %.preheader178.i
  %i.kz = getelementptr inbounds [1024 x i8], ptr %i.z, i64 %i.bi ; 5 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bi
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !99 ; 9 uses
  %i.lc = sitofp nsz i32 %i.kw to float           ; 4 uses
  %wide.trip.count250.i = zext nneg i32 %i.kv to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.kv, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph223.i
  %i.ld = shl nuw nsw i64 %wide.trip.count250.i, 2 ; 2 uses
  %3 = getelementptr i8, ptr %i.lb, i64 %i.ld
  %4 = getelementptr i8, ptr %i.d, i64 %2
  %scevgep = getelementptr i8, ptr %4, i64 164
  %scevgep97 = getelementptr i8, ptr %scevgep, i64 %i.ld
  %bound0 = icmp ult ptr %i.lb, %scevgep97
  %bound1 = icmp ult ptr %i.kz, %3
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count250.i, 2147483644 ; 4 uses
  %i.le = trunc nuw nsw i64 %n.vec to i32
  %i.lf = mul nuw i32 %spec.select, %i.le
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.lc, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert98 = insertelement <4 x i32> poison, i32 %i.kw, i64 0
  %broadcast.splat99 = shufflevector <4 x i32> %broadcast.splatinsert98, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <4 x i32> poison, i32 %spec.select, i64 0
  %broadcast.splat103 = shufflevector <4 x i32> %broadcast.splatinsert102, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lg = mul nuw nsw <4 x i32> %broadcast.splat103, <i32 0, i32 1, i32 2, i32 3>
  %i.lh = shl nuw nsw i32 %spec.select, 2
  %broadcast.splatinsert104 = insertelement <4 x i32> poison, i32 %i.lh, i64 0
  %broadcast.splat105 = shufflevector <4 x i32> %broadcast.splatinsert104, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %i.lg, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index
  %wide.load = load <4 x float>, ptr %i.li, align 4, !tbaa !45, !alias.scope !100
  %i.lj = sub nsw <4 x i32> %broadcast.splat99, %vec.ind
  %i.lk = sitofp nsz <4 x i32> %i.lj to <4 x float>
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %index ; 2 uses
  %wide.load106 = load <4 x float>, ptr %i.ll, align 4, !tbaa !45, !alias.scope !101, !noalias !100
  %i.lm = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.ln = fmul nsz <4 x float> %wide.load106, %i.lm
  %i.lo = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.lk, <4 x float> %i.ln)
  %i.lp = fdiv nsz <4 x float> %i.lo, %broadcast.splat
  store <4 x float> %i.lp, ptr %i.ll, align 4, !tbaa !45, !alias.scope !101, !noalias !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat105
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count250.i
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph223.i, %middle.block
  %indvars.iv247.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph223.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.0222.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph223.i ], [ %i.lf, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count250.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv247.i.ph
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !45
  %i.lt = sub nsw i32 %i.kw, %.0222.i.ph
  %i.lu = sitofp nsz i32 %i.lt to float
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv247.i.ph ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !45
  %i.lx = uitofp nsz nneg i32 %.0222.i.ph to float
  %i.ly = fmul nsz float %i.lw, %i.lx
  %i.lz = call nsz float @llvm.fmuladd.f32(float %i.ls, float %i.lu, float %i.ly)
  %i.ma = fdiv nsz float %i.lz, %i.lc
  store float %i.ma, ptr %i.lv, align 4, !tbaa !45
  %indvars.iv.next248.i.prol = or disjoint i64 %indvars.iv247.i.ph, 1
  %i.mb = add nuw nsw i32 %.0222.i.ph, %spec.select
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv247.i.unr = phi i64 [ %indvars.iv247.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next248.i.prol, %scalar.ph.prol ]
  %.0222.i.unr = phi i32 [ %.0222.i.ph, %scalar.ph.preheader ], [ %i.mb, %scalar.ph.prol ]
  %i.mc = add nsw i64 %wide.trip.count250.i, -1
  %i.md = icmp eq i64 %indvars.iv247.i.ph, %i.mc
  br i1 %i.md, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv247.i = phi i64 [ %indvars.iv.next248.i.1, %scalar.ph ], [ %indvars.iv247.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.0222.i = phi i32 [ %i.mz, %scalar.ph ], [ %.0222.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv247.i
  %i.mf = load float, ptr %i.me, align 4, !tbaa !45
  %i.mg = sub nsw i32 %i.kw, %.0222.i
  %i.mh = sitofp nsz i32 %i.mg to float
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv247.i ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !45
  %i.mk = uitofp nsz nneg i32 %.0222.i to float
  %i.ml = fmul nsz float %i.mj, %i.mk
  %i.mm = call nsz float @llvm.fmuladd.f32(float %i.mf, float %i.mh, float %i.ml)
  %i.mn = fdiv nsz float %i.mm, %i.lc
  store float %i.mn, ptr %i.mi, align 4, !tbaa !45
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %i.mo = add nuw nsw i32 %.0222.i, %spec.select  ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next248.i
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !45
  %i.mr = sub nsw i32 %i.kw, %i.mo
  %i.ms = sitofp nsz i32 %i.mr to float
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next248.i ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !45
  %i.mv = uitofp nsz nneg i32 %i.mo to float
  %i.mw = fmul nsz float %i.mu, %i.mv
  %i.mx = call nsz float @llvm.fmuladd.f32(float %i.mq, float %i.ms, float %i.mw)
  %i.my = fdiv nsz float %i.mx, %i.lc
  store float %i.my, ptr %i.mt, align 4, !tbaa !45
  %indvars.iv.next248.i.1 = add nuw nsw i64 %indvars.iv247.i, 2 ; 2 uses
  %i.mz = add nuw nsw i32 %i.mo, %spec.select
  %exitcond251.not.i.1 = icmp eq i64 %indvars.iv.next248.i.1, %wide.trip.count250.i
  br i1 %exitcond251.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !81

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader178.i..loopexit.i_crit_edge
  %i.na = phi ptr [ %.pre79, %.preheader178.i..loopexit.i_crit_edge ], [ %i.lb, %middle.block ], [ %i.lb, %scalar.ph ], [ %i.lb, %scalar.ph.prol.loopexit ]
  %i.nb = getelementptr inbounds [1024 x i8], ptr %i.z, i64 %i.bi
  %i.nc = load i32, ptr %i.j, align 8, !tbaa !41
  %i.nd = sub nsw i32 %i.nc, %i.kv
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.ne
  %i.ng = sext i32 %i.kv to i64
  %i.nh = shl nsw i64 %i.ng, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nb, ptr align 4 %i.nf, i64 %i.nh, i1 false)
  %exitcond256.not.i = icmp eq i32 %i.bc, 1
  br i1 %exitcond256.not.i, label %.loopexit.loopexit, label %.preheader178.i.1

.preheader178.i.1:                                ; preds = %.loopexit.i
  %i.ni = load i32, ptr %i.x, align 4, !tbaa !42  ; 6 uses
  %i.nj = mul nuw nsw i32 %i.ni, %spec.select     ; 5 uses
  %i.nk = load i32, ptr %i.y, align 4, !tbaa !51
  %.not163.i.1 = icmp eq i32 %i.nk, 0
  %i.nl = icmp sgt i32 %i.ni, 0
  %or.cond.i.1 = select i1 %.not163.i.1, i1 %i.nl, i1 false
  %i.nm = add nsw i64 %i.bi, 1                    ; 4 uses
  br i1 %or.cond.i.1, label %.lr.ph223.i.1, label %.preheader178.i..loopexit.i_crit_edge.1

.preheader178.i..loopexit.i_crit_edge.1:          ; preds = %.preheader178.i.1
  %.phi.trans.insert.1 = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.nm
  %.pre79.1 = load ptr, ptr %.phi.trans.insert.1, align 8, !tbaa !99
  br label %.loopexit.i.1

.lr.ph223.i.1:                                    ; preds = %.preheader178.i.1
  %i.nn = getelementptr inbounds [1024 x i8], ptr %i.z, i64 %i.nm ; 5 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.nm
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !99 ; 9 uses
  %i.nq = sitofp nsz i32 %i.nj to float           ; 4 uses
  %wide.trip.count250.i.1 = zext nneg i32 %i.ni to i64 ; 6 uses
  %min.iters.check.1 = icmp ult i32 %i.ni, 4
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.memcheck.1

vector.memcheck.1:                                ; preds = %.lr.ph223.i.1
  %i.nr = shl nuw nsw i64 %wide.trip.count250.i.1, 2 ; 2 uses
  %5 = getelementptr i8, ptr %i.np, i64 %i.nr
  %6 = getelementptr i8, ptr %i.d, i64 %2
  %scevgep.1 = getelementptr i8, ptr %6, i64 1188
  %scevgep97.1 = getelementptr i8, ptr %scevgep.1, i64 %i.nr
  %bound0.1 = icmp ult ptr %i.np, %scevgep97.1
  %bound1.1 = icmp ult ptr %i.nn, %5
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  br i1 %found.conflict.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %vector.memcheck.1
  %n.vec.1 = and i64 %wide.trip.count250.i.1, 2147483644 ; 4 uses
  %i.ns = trunc nuw nsw i64 %n.vec.1 to i32
  %i.nt = mul nuw i32 %spec.select, %i.ns
  %i.nu = or disjoint i32 %i.nt, 1
  %broadcast.splatinsert.1 = insertelement <4 x float> poison, float %i.nq, i64 0
  %broadcast.splat.1 = shufflevector <4 x float> %broadcast.splatinsert.1, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert98.1 = insertelement <4 x i32> poison, i32 %i.nj, i64 0
  %broadcast.splat99.1 = shufflevector <4 x i32> %broadcast.splatinsert98.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert102.1 = insertelement <4 x i32> poison, i32 %spec.select, i64 0
  %broadcast.splat103.1 = shufflevector <4 x i32> %broadcast.splatinsert102.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.nv = mul nuw nsw <4 x i32> %broadcast.splat103.1, <i32 0, i32 1, i32 2, i32 3>
  %induction.1 = add nuw nsw <4 x i32> %i.nv, splat (i32 1)
  %i.nw = shl nuw nsw i32 %spec.select, 2
  %broadcast.splatinsert104.1 = insertelement <4 x i32> poison, i32 %i.nw, i64 0
  %broadcast.splat105.1 = shufflevector <4 x i32> %broadcast.splatinsert104.1, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %vec.ind.1 = phi <4 x i32> [ %induction.1, %vector.ph.1 ], [ %vec.ind.next.1, %vector.body.1 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %index.1
  %wide.load.1 = load <4 x float>, ptr %i.nx, align 4, !tbaa !45, !alias.scope !100
  %i.ny = sub nsw <4 x i32> %broadcast.splat99.1, %vec.ind.1
  %i.nz = sitofp nsz <4 x i32> %i.ny to <4 x float>
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %index.1 ; 2 uses
  %wide.load106.1 = load <4 x float>, ptr %i.oa, align 4, !tbaa !45, !alias.scope !101, !noalias !100
  %i.ob = uitofp nneg <4 x i32> %vec.ind.1 to <4 x float>
  %i.oc = fmul nsz <4 x float> %wide.load106.1, %i.ob
  %i.od = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load.1, <4 x float> %i.nz, <4 x float> %i.oc)
  %i.oe = fdiv nsz <4 x float> %i.od, %broadcast.splat.1
  store <4 x float> %i.oe, ptr %i.oa, align 4, !tbaa !45, !alias.scope !101, !noalias !100
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %vec.ind.next.1 = add nuw nsw <4 x i32> %vec.ind.1, %broadcast.splat105.1
  %i.of = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.of, label %middle.block.1, label %vector.body.1, !llvm.loop !80

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count250.i.1
  br i1 %cmp.n.1, label %.loopexit.i.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %vector.memcheck.1, %.lr.ph223.i.1
  %indvars.iv247.i.ph.1 = phi i64 [ 0, %vector.memcheck.1 ], [ 0, %.lr.ph223.i.1 ], [ %n.vec.1, %middle.block.1 ] ; 5 uses
  %.0222.i.ph.1 = phi i32 [ 1, %vector.memcheck.1 ], [ 1, %.lr.ph223.i.1 ], [ %i.nu, %middle.block.1 ] ; 4 uses
  %xtraiter.1 = and i64 %wide.trip.count250.i.1, 1
  %lcmp.mod.1.not = icmp eq i64 %xtraiter.1, 0
  br i1 %lcmp.mod.1.not, label %scalar.ph.prol.loopexit.1, label %scalar.ph.prol.1

scalar.ph.prol.1:                                 ; preds = %scalar.ph.preheader.1
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv247.i.ph.1
  %i.oh = load float, ptr %i.og, align 4, !tbaa !45
  %i.oi = sub nsw i32 %i.nj, %.0222.i.ph.1
  %i.oj = sitofp nsz i32 %i.oi to float
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv247.i.ph.1 ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !45
  %i.om = uitofp nsz nneg i32 %.0222.i.ph.1 to float
  %i.on = fmul nsz float %i.ol, %i.om
  %i.oo = call nsz float @llvm.fmuladd.f32(float %i.oh, float %i.oj, float %i.on)
  %i.op = fdiv nsz float %i.oo, %i.nq
  store float %i.op, ptr %i.ok, align 4, !tbaa !45
  %indvars.iv.next248.i.prol.1 = or disjoint i64 %indvars.iv247.i.ph.1, 1
  %i.oq = add nuw nsw i32 %.0222.i.ph.1, %spec.select
  br label %scalar.ph.prol.loopexit.1

scalar.ph.prol.loopexit.1:                        ; preds = %scalar.ph.prol.1, %scalar.ph.preheader.1
  %indvars.iv247.i.unr.1 = phi i64 [ %indvars.iv247.i.ph.1, %scalar.ph.preheader.1 ], [ %indvars.iv.next248.i.prol.1, %scalar.ph.prol.1 ]
  %.0222.i.unr.1 = phi i32 [ %.0222.i.ph.1, %scalar.ph.preheader.1 ], [ %i.oq, %scalar.ph.prol.1 ]
  %i.or = add nsw i64 %wide.trip.count250.i.1, -1
  %i.os = icmp eq i64 %indvars.iv247.i.ph.1, %i.or
  br i1 %i.os, label %.loopexit.i.1, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.prol.loopexit.1, %scalar.ph.1
  %indvars.iv247.i.1 = phi i64 [ %indvars.iv.next248.i.1.1, %scalar.ph.1 ], [ %indvars.iv247.i.unr.1, %scalar.ph.prol.loopexit.1 ] ; 4 uses
  %.0222.i.1 = phi i32 [ %i.po, %scalar.ph.1 ], [ %.0222.i.unr.1, %scalar.ph.prol.loopexit.1 ] ; 3 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv247.i.1
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !45
  %i.ov = sub nsw i32 %i.nj, %.0222.i.1
  %i.ow = sitofp nsz i32 %i.ov to float
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv247.i.1 ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !45
  %i.oz = uitofp nsz nneg i32 %.0222.i.1 to float
  %i.pa = fmul nsz float %i.oy, %i.oz
  %i.pb = call nsz float @llvm.fmuladd.f32(float %i.ou, float %i.ow, float %i.pa)
  %i.pc = fdiv nsz float %i.pb, %i.nq
  store float %i.pc, ptr %i.ox, align 4, !tbaa !45
  %indvars.iv.next248.i.1110 = add nuw nsw i64 %indvars.iv247.i.1, 1 ; 2 uses
  %i.pd = add nuw nsw i32 %.0222.i.1, %spec.select ; 3 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv.next248.i.1110
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !45
  %i.pg = sub nsw i32 %i.nj, %i.pd
  %i.ph = sitofp nsz i32 %i.pg to float
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.next248.i.1110 ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !45
  %i.pk = uitofp nsz nneg i32 %i.pd to float
  %i.pl = fmul nsz float %i.pj, %i.pk
  %i.pm = call nsz float @llvm.fmuladd.f32(float %i.pf, float %i.ph, float %i.pl)
  %i.pn = fdiv nsz float %i.pm, %i.nq
  store float %i.pn, ptr %i.pi, align 4, !tbaa !45
  %indvars.iv.next248.i.1.1 = add nuw nsw i64 %indvars.iv247.i.1, 2 ; 2 uses
  %i.po = add nuw nsw i32 %i.pd, %spec.select
  %exitcond251.not.i.1.1 = icmp eq i64 %indvars.iv.next248.i.1.1, %wide.trip.count250.i.1
  br i1 %exitcond251.not.i.1.1, label %.loopexit.i.1, label %scalar.ph.1, !llvm.loop !81

.loopexit.i.1:                                    ; preds = %scalar.ph.prol.loopexit.1, %scalar.ph.1, %middle.block.1, %.preheader178.i..loopexit.i_crit_edge.1
  %i.pp = phi ptr [ %.pre79.1, %.preheader178.i..loopexit.i_crit_edge.1 ], [ %i.np, %middle.block.1 ], [ %i.np, %scalar.ph.1 ], [ %i.np, %scalar.ph.prol.loopexit.1 ]
  %i.pq = getelementptr inbounds [1024 x i8], ptr %i.z, i64 %i.nm
  %i.pr = load i32, ptr %i.j, align 8, !tbaa !41
  %i.ps = sub nsw i32 %i.pr, %i.ni
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.pt
  %i.pv = sext i32 %i.ni to i64
  %i.pw = shl nsw i64 %i.pv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pq, ptr align 4 %i.pu, i64 %i.pw, i1 false)
  br label %.loopexit.loopexit

bb.al:                                            ; preds = %bb.p, %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit66.sink.split

.loopexit.loopexit:                               ; preds = %.loopexit.i.1, %.loopexit.i
  %.pre80 = load i32, ptr %i.i, align 4, !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %i.px = phi i32 [ %.pre80, %.loopexit.loopexit ], [ %i.bb, %bb.n ]
  store i32 0, ptr %i.y, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.py = add nsw i32 %i.px, 2                    ; 2 uses
  store i32 %i.py, ptr %i.i, align 4, !tbaa !53
  %.val.i = load i32, ptr %i.h, align 8, !tbaa !88 ; 3 uses
  %i.pz = sub nsw i32 0, %.val.i
  %i.qa = and i32 %i.pz, 31                       ; 2 uses
  %.not.i61 = icmp eq i32 %i.qa, 0
  br i1 %.not.i61, label %get_bits_align32.exit, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.qb = load i32, ptr %i.g, align 8, !tbaa !87
  %i.qc = add i32 %i.qa, %.val.i
  %i.qd = call i32 @llvm.umin.i32(i32 %i.qb, i32 %i.qc) ; 2 uses
  store i32 %i.qd, ptr %i.h, align 8, !tbaa !88
  br label %get_bits_align32.exit

get_bits_align32.exit:                            ; preds = %.loopexit, %bb.am
  %.val = phi i32 [ %.val.i, %.loopexit ], [ %i.qd, %bb.am ]
  %.val58 = load i32, ptr %i.f, align 4, !tbaa !86
  %.not55 = icmp eq i32 %.val58, %.val
  br i1 %.not55, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %get_bits_align32.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.qe = load ptr, ptr %i.e, align 8, !tbaa !52
  call void @av_packet_unref(ptr noundef %i.qe) #8
  %.pre82 = load i32, ptr %i.i, align 4, !tbaa !53
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %get_bits_align32.exit
  %i.qf = phi i32 [ %.pre82, %bb.an ], [ %i.py, %get_bits_align32.exit ]
  %i.qg = load i32, ptr %i.o, align 8, !tbaa !40
  %.not56 = icmp slt i32 %i.qf, %i.qg
  br i1 %.not56, label %bb.b, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.i, align 4, !tbaa !53
  %i.qh = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !43
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !33
  %spec.select57 = call i32 @llvm.smin.i32(i32 %i.qk, i32 2)
  %i.ql = sdiv i32 %i.qi, %spec.select57
  store i32 %i.ql, ptr %i.k, align 8, !tbaa !93
  br label %bb.aq

.loopexit66.sink.split:                           ; preds = %bb.e, %bb.al
  %.str.6.sink = phi ptr [ @.str.6, %bb.al ], [ @.str.5, %bb.e ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.6.sink) #8
  br label %.loopexit66

.loopexit66:                                      ; preds = %bb.i, %bb.f, %.loopexit66.sink.split
  %.0 = phi i32 [ -1094995529, %.loopexit66.sink.split ], [ -1094995529, %bb.f ], [ %i.au, %bb.i ]
  store i32 0, ptr %i.i, align 4, !tbaa !53
  %i.qm = load ptr, ptr %i.e, align 8, !tbaa !52
  call void @av_packet_unref(ptr noundef %i.qm) #8
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit66, %bb.ap, %bb.d
  %.047 = phi i32 [ %.0, %.loopexit66 ], [ 0, %bb.ap ], [ %i.ad, %bb.d ]
  ret i32 %.047
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6704
end_hunk_1
