Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vorbisenc?download=true
inline.NumInlined: 132
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@vorbis_encode_close:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.bd) #12
  %i.be = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.bf = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %indvars.iv96
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  tail call void @av_freep(ptr noundef nonnull %i.bg) #12
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.bh = load i32, ptr %i.ac, align 8, !tbaa !58
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next97, %i.bi
  br i1 %i.bj, label %.lr.ph87, label %.loopexit80, !llvm.loop !257

.loopexit80:                                      ; preds = %.loopexit78, %.preheader79, %.loopexit82
  tail call void @av_freep(ptr noundef nonnull %i.aa) #12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !77
  %.not72 = icmp eq ptr %i.bl, null
  br i1 %.not72, label %.loopexit76, label %.preheader75

.preheader75:                                     ; preds = %.loopexit80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 704 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !76
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph89, label %.loopexit76

.lr.ph89:                                         ; preds = %.preheader75, %.lr.ph89
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph89 ], [ 0, %.preheader75 ] ; 3 uses
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %indvars.iv99
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.br) #12
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %indvars.iv99
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.bu) #12
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !76
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next100, %i.bw
  br i1 %i.bx, label %.lr.ph89, label %.loopexit76, !llvm.loop !258

.loopexit76:                                      ; preds = %.lr.ph89, %.preheader75, %.loopexit80
  tail call void @av_freep(ptr noundef nonnull %i.bk) #12
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 728 ; 7 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81
  %.not73 = icmp eq ptr %i.bz, null
  br i1 %.not73, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !80
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph91, label %.loopexit

.lr.ph91:                                         ; preds = %.preheader, %.lr.ph91
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.lr.ph91 ], [ 0, %.preheader ] ; 6 uses
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.ce = getelementptr inbounds nuw [56 x i8], ptr %i.cd, i64 %indvars.iv102
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.cf) #12
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.cg, i64 %indvars.iv102
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.ci) #12
  %i.cj = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.ck = getelementptr inbounds nuw [56 x i8], ptr %i.cj, i64 %indvars.iv102
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.cl) #12
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.cm, i64 %indvars.iv102
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.co) #12
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.cq = getelementptr inbounds nuw [56 x i8], ptr %i.cp, i64 %indvars.iv102
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  tail call void @av_freep(ptr noundef nonnull %i.cr) #12
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.cs = load i32, ptr %i.ca, align 8, !tbaa !80
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next103, %i.ct
  br i1 %i.cu, label %.lr.ph91, label %.loopexit, !llvm.loop !259

.loopexit:                                        ; preds = %.lr.ph91, %.preheader, %.loopexit76
  tail call void @av_freep(ptr noundef nonnull %i.by) #12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 744
  tail call void @av_freep(ptr noundef nonnull %i.cv) #12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.cw) #12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  tail call void @av_freep(ptr noundef nonnull %i.cx) #12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.cy) #12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  tail call void @av_freep(ptr noundef nonnull %i.cz) #12
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.da) #12
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 760
  tail call void @av_freep(ptr noundef nonnull %i.db) #12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @av_tx_uninit(ptr noundef nonnull %i.dc) #12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @av_tx_uninit(ptr noundef nonnull %i.dd) #12
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  tail call void @ff_af_queue_close(ptr noundef nonnull %i.de) #12
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 666 ; 3 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !110 ; 2 uses
  %.not2.i = icmp eq i16 %i.dh, 0
  br i1 %.not2.i, label %ff_bufqueue_discard_all.exit, label %ff_bufqueue_get.exit.lr.ph.i

ff_bufqueue_get.exit.lr.ph.i:                     ; preds = %.loopexit
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 664 ; 2 uses
  br label %ff_bufqueue_get.exit.i

ff_bufqueue_get.exit.i:                           ; preds = %ff_bufqueue_get.exit.i, %ff_bufqueue_get.exit.lr.ph.i
  %i.dj = phi i16 [ %i.dh, %ff_bufqueue_get.exit.lr.ph.i ], [ %i.dr, %ff_bufqueue_get.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dk = load i16, ptr %i.di, align 8, !tbaa !111 ; 2 uses
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dl ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !113
  %i.do = add i16 %i.dj, -1
  store i16 %i.do, ptr %i.dg, align 2, !tbaa !110
  store ptr null, ptr %i.dm, align 8, !tbaa !113
  %i.dp = add i16 %i.dk, 1
  %i.dq = and i16 %i.dp, 63
  store i16 %i.dq, ptr %i.di, align 8, !tbaa !111
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !113
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dr = load i16, ptr %i.dg, align 2, !tbaa !110 ; 2 uses
  %.not.i = icmp eq i16 %i.dr, 0
  br i1 %.not.i, label %ff_bufqueue_discard_all.exit, label %ff_bufqueue_get.exit.i, !llvm.loop !260

ff_bufqueue_discard_all.exit:                     ; preds = %ff_bufqueue_get.exit.i, %.loopexit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_af_queue_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_vorbis_ready_floor1_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @ready_residue(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !100
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 217) #12
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !104
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias ptr @av_calloc(i64 noundef %i.e, i64 noundef 8) #12 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.g, align 8, !tbaa !118
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.preheader60

.preheader60:                                     ; preds = %bb.c
  %i.h = load i32, ptr %i.c, align 8, !tbaa !104  ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader59.lr.ph, label %.loopexit

.preheader59.lr.ph:                               ; preds = %.preheader60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 680
  %wide.trip.count76 = zext nneg i32 %i.h to i64  ; 3 uses
  br label %.preheader59

.preheader59:                                     ; preds = %.preheader59.lr.ph, %.loopexit58
  %indvars.iv73 = phi i64 [ 0, %.preheader59.lr.ph ], [ %indvars.iv.next74, %.loopexit58 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv73 ; 9 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !54
  %.not54 = icmp eq i8 %i.n, -1
  br i1 %.not54, label %bb.d, label %.thread

.lr.ph69.preheader:                               ; preds = %.loopexit58
  %wide.trip.count81 = zext nneg i32 %i.h to i64
  %min.iters.check = icmp eq i32 %i.h, 1
  br i1 %min.iters.check, label %.lr.ph69.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph69.preheader
  %n.vec = and i64 %wide.trip.count76, 2147483646 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.o, align 4, !tbaa !50 ; 2 uses
  %strided.vec = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec88 = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.p = fpext nsz <2 x float> %strided.vec to <2 x double>
  %i.q = fadd nsz <2 x double> %i.p, splat (double 8.000000e-01)
  %i.r = fptrunc nsz <2 x double> %i.q to <2 x float>
  %i.s = fpext nsz <2 x float> %strided.vec88 to <2 x double>
  %i.t = fadd nsz <2 x double> %i.s, splat (double 8.000000e-01)
  %i.u = fptrunc nsz <2 x double> %i.t to <2 x float>
  %interleaved.vec = shufflevector <2 x float> %i.r, <2 x float> %i.u, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.o, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count76
  br i1 %cmp.n, label %.loopexit, label %.lr.ph69.preheader89

.lr.ph69.preheader89:                             ; preds = %.lr.ph69.preheader, %middle.block
  %indvars.iv78.ph = phi i64 [ 0, %.lr.ph69.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph69

bb.d:                                             ; preds = %.preheader59
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !54
  %.not54.1 = icmp eq i8 %i.x, -1
  br i1 %.not54.1, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !54
  %.not54.2 = icmp eq i8 %i.z, -1
  br i1 %.not54.2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !54
  %.not54.3 = icmp eq i8 %i.ab, -1
  br i1 %.not54.3, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !54
  %.not54.4 = icmp eq i8 %i.ad, -1
  br i1 %.not54.4, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !54
  %.not54.5 = icmp eq i8 %i.af, -1
  br i1 %.not54.5, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !54
  %.not54.6 = icmp eq i8 %i.ah, -1
  br i1 %.not54.6, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !54
  %.not54.7 = icmp eq i8 %i.aj, -1
  br i1 %.not54.7, label %.loopexit58, label %.thread

.thread:                                          ; preds = %.preheader59, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.065.lcssa.wide = phi i64 [ 0, %.preheader59 ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ]
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !46
  %2 = getelementptr inbounds nuw i8, ptr %i.m, i64 %.065.lcssa.wide
  %3 = load i8, ptr %2, align 1, !tbaa !54
  %i.al = sext i8 %3 to i64
  %i.am = getelementptr inbounds [72 x i8], ptr %i.ak, i64 %i.al ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !48 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 230, ptr noundef nonnull @__PRETTY_FUNCTION__.ready_residue) #15
  unreachable

bb.l:                                             ; preds = %.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !51
  %.not55 = icmp eq i32 %i.ar, 0
  br i1 %.not55, label %bb.m, label %.preheader57

.preheader57:                                     ; preds = %bb.l
  %i.as = load i32, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv73 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = zext nneg i32 %i.ao to i64
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 231, ptr noundef nonnull @__PRETTY_FUNCTION__.ready_residue) #15
  unreachable

bb.n:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !54
  %.not56 = icmp eq i8 %i.bb, 0
  br i1 %.not56, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.bd = mul nuw nsw i64 %indvars.iv, %i.az
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !50
  %i.bg = tail call nsz float @llvm.fabs.f32(float %i.bf) ; 2 uses
  %i.bh = load float, ptr %i.ax, align 4, !tbaa !50
  %i.bi = fcmp nsz ogt float %i.bg, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store float %i.bg, ptr %i.ax, align 4, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bj = getelementptr i8, ptr %i.be, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !50
  %i.bl = tail call nsz float @llvm.fabs.f32(float %i.bk) ; 2 uses
  %i.bm = load float, ptr %i.ay, align 4, !tbaa !50
  %i.bn = fcmp nsz ogt float %i.bl, %i.bm
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store float %i.bl, ptr %i.ay, align 4, !tbaa !50
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.n, !llvm.loop !262

.loopexit58:                                      ; preds = %bb.s, %bb.j, %.preheader57
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %.lr.ph69.preheader, label %.preheader59, !llvm.loop !263

.lr.ph69:                                         ; preds = %.lr.ph69.preheader89, %.lr.ph69
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.lr.ph69 ], [ %indvars.iv78.ph, %.lr.ph69.preheader89 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv78 ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !50
  %i.bq = fpext <2 x float> %i.bp to <2 x double>
  %i.br = fadd nsz <2 x double> %i.bq, splat (double 8.000000e-01)
  %i.bs = fptrunc <2 x double> %i.br to <2 x float>
  store <2 x float> %i.bs, ptr %i.bo, align 4, !tbaa !50
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit, label %.lr.ph69, !llvm.loop !264

.loopexit:                                        ; preds = %.lr.ph69, %middle.block, %.preheader60, %bb.c
  %.051 = phi i32 [ -12, %bb.c ], [ 0, %.preheader60 ], [ 0, %middle.block ], [ 0, %.lr.ph69 ]
  ret i32 %.051
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @dsp_init(i32 %.64.val, ptr noundef initializes((760, 768)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !50
  %i.b = and i32 %.64.val, 8388608
  %i.c = tail call ptr @avpriv_float_dsp_alloc(i32 noundef %i.b) #12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.c, ptr %i.d, align 8, !tbaa !115
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr @ff_vorbis_vwin, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.k, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr @ff_vorbis_vwin, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.q, ptr %i.r, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = add nsw i32 %i.f, -1
  %i.v = shl nuw i32 1, %i.u
  %i.w = call i32 @av_tx_init(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, i32 noundef 1, i32 noundef 0, i32 noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 0) #12 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !44
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = call i32 @av_tx_init(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i32 noundef 1, i32 noundef 0, i32 noundef %i.ac, ptr noundef nonnull %i.a, i64 noundef 0) #12
  %. = call i32 @llvm.smin.i32(i32 %i.ad, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ %., %bb.c ], [ %i.w, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare i32 @ff_vorbis_nth_root(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_vorbis_len2vlc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @av_xiphlacing(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @ff_af_queue_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #3

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ff_af_queue_remove(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare i32 @av_frame_get_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_get_bytes_per_sample(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #5

end_hunk_0
