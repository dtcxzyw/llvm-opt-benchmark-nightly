Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3?download=true
inline.NumInlined: 47
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @atrac3_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store float f0x38000000, ptr %i.a, align 4, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 8 uses
  %i.h = add i32 %i.g, -9
  %or.cond = icmp ult i32 %i.h, -8
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #8
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp eq i32 %i.j, 86098
  br i1 %i.k, label %.thread144.thread, label %bb.d

.thread144.thread:                                ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 2, ptr %i.l, align 8, !tbaa !33
  br label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  switch i32 %i.n, label %bb.i [
    i32 14, label %bb.e
    i32 12, label %bb.j
    i32 10, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = load i16, ptr %i.c, align 1, !tbaa !40
  %i.p = zext i16 %i.o to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %i.p) #8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i16, ptr %i.q, align 1, !tbaa !40
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store i32 %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.w = load i16, ptr %i.r, align 1, !tbaa !40
  %i.x = zext i16 %i.w to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.6, i32 noundef %i.x) #8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.z = load i16, ptr %i.v, align 1, !tbaa !40
  %i.aa = zext i16 %i.z to i32                    ; 4 uses
  %i.ab = load i16, ptr %i.y, align 1, !tbaa !40
  %i.ac = zext i16 %i.ab to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %i.ac) #8
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !33
  %.not = icmp eq i32 %i.ad, 0
  %i.ae = select i1 %.not, i32 2, i32 18          ; 4 uses
  store i32 %i.ae, ptr %i.u, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4616
  store i32 0, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42 ; 4 uses
  %i.ai = mul nuw nsw i32 %i.g, 96
  %i.aj = mul nuw nsw i32 %i.ai, %i.aa
  %.not112 = icmp eq i32 %i.ah, %i.aj
  br i1 %.not112, label %.thread144, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = mul nuw nsw i32 %i.g, 152
  %i.al = mul nuw nsw i32 %i.ak, %i.aa
  %.not113 = icmp eq i32 %i.ah, %i.al
  br i1 %.not113, label %.thread144, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = mul nuw nsw i32 %i.g, 192
  %i.an = mul nuw nsw i32 %i.am, %i.aa
  %.not114 = icmp eq i32 %i.ah, %i.an
  br i1 %.not114, label %.thread144, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.ah, i32 noundef %i.g, i32 noundef %i.aa) #8
  br label %bb.z

bb.i:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.n) #8
  br label %bb.z

bb.j:                                             ; preds = %bb.d, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ap = load i32, ptr %i.c, align 1, !tbaa !40  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.ar = load i16, ptr %i.ao, align 1, !tbaa !40
  %i.as = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = load i16, ptr %i.aq, align 1, !tbaa !40 ; 2 uses
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = load i16, ptr %i.au, align 1, !tbaa !40
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ay)
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 4616
  store i32 1, ptr %i.bc, align 8, !tbaa !41
  %.not115 = icmp eq i32 %i.ap, 67108864
  br i1 %.not115, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %i.bd) #8
  br label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.be = shl nuw nsw i32 %i.g, 10
  %.not116 = icmp eq i32 %i.be, %i.at
  br i1 %.not116, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %i.at) #8
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %.not117 = icmp eq i16 %i.av, -29176
  br i1 %.not117, label %.thread144, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %i.ax) #8
  br label %bb.z

.thread144:                                       ; preds = %bb.e, %bb.f, %bb.g, %bb.n
  %i.bf = phi i32 [ %i.ae, %bb.e ], [ %i.ae, %bb.f ], [ %i.ae, %bb.g ], [ %i.ba, %bb.n ] ; 2 uses
  %trunc = trunc nuw i32 %i.bf to i16
  switch i16 %trunc, label %bb.r [
    i16 2, label %bb.s
    i16 18, label %bb.p
  ]

bb.p:                                             ; preds = %.thread144
  %i.bg = and i32 %i.g, 1
  %.not118 = icmp eq i32 %i.bg, 0
  br i1 %.not118, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14) #8
  br label %bb.z

bb.r:                                             ; preds = %.thread144
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %i.bf) #8
  br label %bb.z

bb.s:                                             ; preds = %bb.p, %.thread144, %.thread144.thread
  %.str.15.sink = phi ptr [ @.str.13, %.thread144 ], [ @.str.13, %.thread144.thread ], [ @.str.15, %bb.p ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull %.str.15.sink) #8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42 ; 2 uses
  %i.bj = add i32 %i.bi, -4097
  %or.cond122 = icmp ult i32 %i.bj, -4096
  br i1 %or.cond122, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = add nuw nsw i32 %i.bi, 3
  %i.bl = and i32 %i.bk, 16380
  %i.bm = add nuw nsw i32 %i.bl, 64
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = tail call noalias ptr @av_mallocz(i64 noundef %i.bn) #8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !43
  %.not119 = icmp eq ptr %i.bo, null
  br i1 %.not119, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 8, ptr %i.bq, align 4, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 4824
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 4832
  %i.bt = call i32 @av_tx_init(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, i32 noundef 1, i32 noundef 1, i32 noundef 256, ptr noundef nonnull %i.a, i64 noundef 4) #8 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  br label %vector.ph

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %bb.z

vector.ph:                                        ; preds = %.preheader, %vector.ph
  %indvars.iv150 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next151, %vector.ph ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %indvars.iv150 ; 2 uses
  store <4 x i32> <i32 0, i32 7, i32 0, i32 7>, ptr %i.bz, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x i32> <i32 0, i32 7>, ptr %i.ca, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv150
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv150
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv150
  store <4 x i32> splat (i32 3), ptr %i.cb, align 4, !tbaa !45
  store <4 x i32> splat (i32 3), ptr %i.cc, align 4, !tbaa !45
  store <4 x i32> splat (i32 3), ptr %i.cd, align 4, !tbaa !45
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, 4
  br i1 %exitcond153.not, label %bb.w, label %vector.ph, !llvm.loop !46

bb.w:                                             ; preds = %vector.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 4620
  call void @ff_atrac_init_gain_compensation(ptr noundef nonnull %i.ce, i32 noundef 4, i32 noundef 3) #8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !48
  %i.ch = and i32 %i.cg, 8388608
  %i.ci = call ptr @avpriv_float_dsp_alloc(i32 noundef %i.ch) #8 ; 3 uses
  %.not120 = icmp eq ptr %i.ci, null
  br i1 %.not120, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 4840
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !51
  call void @av_free(ptr noundef nonnull %i.ci) #8
  %i.cl = zext nneg i32 %i.g to i64
  %i.cm = call noalias ptr @av_calloc(i64 noundef %i.cl, i64 noundef 15904) #8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !52
  %.not121 = icmp eq ptr %i.cm, null
  br i1 %.not121, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = call i32 @pthread_once(ptr noundef nonnull @atrac3_decode_init.init_static_once, ptr noundef nonnull @atrac3_init_static_data) #8 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.y, %bb.v, %bb.r, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.h, %bb.b
  %.0104 = phi i32 [ -22, %bb.b ], [ -1094995529, %bb.k ], [ -1094995529, %bb.m ], [ -1094995529, %bb.o ], [ -22, %bb.i ], [ %i.bt, %bb.v ], [ 0, %bb.y ], [ -12, %bb.w ], [ -12, %bb.t ], [ -22, %bb.s ], [ -1094995529, %bb.q ], [ -1094995529, %bb.r ], [ -1094995529, %bb.h ], [ -12, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0104
}

; Function Attrs: nounwind uwtable
define internal i32 @atrac3_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 6 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42
  %i.i = icmp slt i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.d) #8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 1024, ptr %i.j, align 8, !tbaa !56
  %i.k = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4616
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %decode_bytes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 8 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = load i32, ptr %i.g, align 4, !tbaa !42
  %i.s = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 3                          ; 4 uses
  %i.v = and i64 %i.s, 3                          ; 2 uses
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.b, i64 %i.w ; 6 uses
  %.not.i = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw nsw i32 %i.u, 3
  %i.z = tail call i32 @llvm.fshr.i32(i32 1400856835, i32 1400856835, i32 %i.y)
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i32 [ %i.aa, %bb.f ], [ 56721235, %bb.e ] ; 6 uses
  %i.ab = add nuw nsw i32 %i.u, 3
  %i.ac = add i32 %i.ab, %i.r                     ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 3
  br i1 %i.ad, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ae = lshr i32 %i.ac, 2
  %wide.trip.count.i = zext nneg i32 %i.ae to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ac, 32
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.af = add i64 %i.v, %i.q
  %i.ag = sub i64 %i.s, %i.af
  %diff.check = icmp ugt i64 %i.ag, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 536870904  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !45
  %wide.load107 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !45
  %i.aj = xor <4 x i32> %wide.load, %broadcast.splat
  %i.ak = xor <4 x i32> %wide.load107, %broadcast.splat
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %i.aj, ptr %i.al, align 4, !tbaa !45
  store <4 x i32> %i.ak, ptr %i.am, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.prol
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !45
  %i.aq = xor i32 %i.ap, %.0.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.prol
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !45
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !64

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.as = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !45
  %i.aw = xor i32 %i.av, %.0.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !45
  %i.ba = xor i32 %i.az, %.0.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !45
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.1
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45
  %i.be = xor i32 %i.bd, %.0.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.1
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !45
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.2
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !45
  %i.bi = xor i32 %i.bh, %.0.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.2
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !45
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !66

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.g
  br i1 %.not.i, label %decode_bytes.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef %i.u) #8
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !43
  br label %decode_bytes.exit

end_hunk_0
