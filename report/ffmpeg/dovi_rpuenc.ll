Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dovi_rpuenc?download=true
inline.NumInlined: 130
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@dovi_configure_ext:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !53
  %i.aw = icmp sgt i32 %5, %i.av
  br i1 %i.aw, label %bb.ag, label %.loopexit.loopexit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.ah, label %bb.ae, !llvm.loop !49

bb.ah:                                            ; preds = %bb.ag
  %i.ax = icmp sgt i32 %4, 0
  %i.ay = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  br i1 %i.ax, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ay, i32 noundef 16, ptr noundef nonnull @.str.12, i64 noundef %.0117, i32 noundef %5) #13
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ay, i32 noundef 24, ptr noundef nonnull @.str.13, i64 noundef %.0117, i32 noundef %5) #13
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.af
  %i.az = trunc i64 %indvars.iv to i8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aj
  %.1115 = phi i8 [ 13, %bb.aj ], [ %i.az, %.loopexit.loopexit ]
  %i.ba = call ptr @av_dovi_alloc(ptr noundef nonnull %i.a) #13 ; 13 uses
  %.not131 = icmp eq ptr %i.ba, null
  br i1 %.not131, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !27
  %i.bc = call ptr @av_packet_side_data_add(ptr noundef %12, ptr noundef %13, i32 noundef 29, ptr noundef nonnull %i.ba, i64 noundef %i.bb, i32 noundef 0) #13
  %.not132 = icmp eq ptr %i.bc, null
  br i1 %.not132, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @av_free(ptr noundef nonnull %i.ba) #13
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  store i8 1, ptr %i.ba, align 1, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 0, ptr %i.bd, align 1, !tbaa !55
  %i.be = trunc i32 %.0113 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  store i8 %.1115, ptr %i.bg, align 1, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i8 1, ptr %i.bh, align 1, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  store i8 0, ptr %i.bi, align 1, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  store i8 1, ptr %i.bj, align 1, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  store i8 %.0116177, ptr %i.bk, align 1, !tbaa !61
  %i.bl = trunc nuw i32 %3 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bn, ptr noundef nonnull align 1 dereferenceable(9) %i.ba, i64 9, i1 false), !tbaa.struct !63
  br label %bb.ao

bb.an:                                            ; preds = %.thread151, %bb.m, %bb.c, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bo, i8 0, i64 9, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %bb.d, %bb.an, %bb.am, %bb.al, %bb.ai, %bb.x, %bb.v, %bb.t, %bb.n
  %.0 = phi i32 [ -1163346256, %bb.n ], [ -22, %bb.t ], [ 0, %bb.an ], [ -22, %bb.v ], [ -22, %bb.x ], [ 0, %bb.am ], [ -12, %bb.al ], [ -22, %bb.d ], [ -22, %bb.ai ], [ -12, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -1163346256, 1) i32 @ff_dovi_configure(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.d = load i32, ptr %i.c, align 8, !tbaa !78
  %i.e = tail call ptr @av_frame_side_data_get_c(ptr noundef %i.b, i32 noundef %i.d, i32 noundef 24) #13 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.k = load i32, ptr %i.j, align 4, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load i32, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.t = load i32, ptr %i.s, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.x = load i32, ptr %i.w, align 4, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.aa = load i64, ptr %i.p, align 4
  %i.ab = tail call fastcc i32 @dovi_configure_ext(ptr noundef %0, i32 noundef %i.i, ptr noundef %.0, i32 noundef 0, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i64 %i.aa, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) #12
  ret i32 %i.ab
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_dovi_rpu_generate(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.PutBitContext, align 8      ; 151 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111   ; 2 uses
  %i.c = zext i8 %i.b to i32
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !112
  store i32 0, ptr %4, align 4, !tbaa !113
  br label %bb.aaj

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 92 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 43 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !116
  %.not481 = icmp eq i8 %i.m, 0
  br i1 %.not481, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 666) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = and i32 %2, 4
  %.not482 = icmp eq i32 %i.n, 0
  br i1 %.not482, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i8 %i.b, 2
  br i1 %i.o, label %bb.aaj, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %spec.select = phi i32 [ %i.c, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = load i8, ptr %i.e, align 2, !tbaa !117   ; 2 uses
  %.not483 = icmp eq i8 %i.p, 2
  br i1 %.not483, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = zext i8 %i.p to i32
  %i.r = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.r, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.q) #13
  br label %bb.aaj

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 5028 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !119
  %i.u = add i32 %i.t, -65536
  %or.cond.i = icmp ult i32 %i.u, -65535
  br i1 %or.cond.i, label %.loopexit817, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 5032 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !120
  %i.x = add i32 %i.w, -65536
  %or.cond112.i = icmp ult i32 %i.x, -65535
  br i1 %or.cond112.i, label %.loopexit817, label %.preheader168.i

.preheader168.i:                                  ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.z = getelementptr i8, ptr %i.e, i64 8        ; 26 uses
  %i.aa = load i8, ptr %i.y, align 8, !tbaa !122  ; 9 uses
  %i.ab = add i8 %i.aa, -10
  %or.cond113.i = icmp ult i8 %i.ab, -8
  br i1 %or.cond113.i, label %.loopexit817, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader168.i
  %i.ac = zext nneg i8 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !123
  %i.ag = getelementptr i8, ptr %i.h, i64 10
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !123
  %i.ai = icmp ult i16 %i.af, %i.ah
  br i1 %i.ai, label %.loopexit817, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i8 %i.aa, 2
  br i1 %exitcond.not.i, label %.preheader164.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 14
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !123
  %i.al = getelementptr i8, ptr %i.h, i64 12
  %i.am = load i16, ptr %i.al, align 4, !tbaa !123
  %i.an = icmp ult i16 %i.ak, %i.am
  br i1 %i.an, label %.loopexit817, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond.not.i.11357 = icmp eq i8 %i.aa, 3
  br i1 %exitcond.not.i.11357, label %.preheader164.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !123
  %i.aq = getelementptr i8, ptr %i.h, i64 14
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !123
  %i.as = icmp ult i16 %i.ap, %i.ar
  br i1 %i.as, label %.loopexit817, label %bb.o

bb.o:                                             ; preds = %bb.n
  %exitcond.not.i.21360 = icmp eq i8 %i.aa, 4
  br i1 %exitcond.not.i.21360, label %.preheader164.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.au = load i16, ptr %i.at, align 2, !tbaa !123
  %i.av = getelementptr i8, ptr %i.h, i64 16
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !123
  %i.ax = icmp ult i16 %i.au, %i.aw
  br i1 %i.ax, label %.loopexit817, label %bb.q

bb.q:                                             ; preds = %bb.p
  %exitcond.not.i.3 = icmp eq i8 %i.aa, 5
  br i1 %exitcond.not.i.3, label %.preheader164.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !123
  %i.ba = getelementptr i8, ptr %i.h, i64 18
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !123
  %i.bc = icmp ult i16 %i.az, %i.bb
  br i1 %i.bc, label %.loopexit817, label %bb.s

bb.s:                                             ; preds = %bb.r
  %exitcond.not.i.4 = icmp eq i8 %i.aa, 6
  br i1 %exitcond.not.i.4, label %.preheader164.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !123
  %i.bf = getelementptr i8, ptr %i.h, i64 20
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !123
  %i.bh = icmp ult i16 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit817, label %bb.u

bb.u:                                             ; preds = %bb.t
  %exitcond.not.i.5 = icmp eq i8 %i.aa, 7
  br i1 %exitcond.not.i.5, label %.preheader164.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !123
  %i.bk = getelementptr i8, ptr %i.h, i64 22
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !123
  %i.bm = icmp ult i16 %i.bj, %i.bl
  br i1 %i.bm, label %.loopexit817, label %bb.w

bb.w:                                             ; preds = %bb.v
  %exitcond.not.i.6 = icmp eq i8 %i.aa, 8
  br i1 %exitcond.not.i.6, label %.preheader164.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !123
  %i.bp = getelementptr i8, ptr %i.h, i64 24
  %i.bq = load i16, ptr %i.bp, align 8, !tbaa !123
  %i.br = icmp ult i16 %i.bo, %i.bq
  br i1 %i.br, label %.loopexit817, label %.preheader164.i

.preheader164.i:                                  ; preds = %bb.x, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 28 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %smax.i = add nsw i64 %i.ac, -1                 ; 2 uses
  %exitcond202.not.i825 = icmp eq i64 %smax.i, 0
  br i1 %exitcond202.not.i825, label %._crit_edge.a, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader164.i, %.thread142.i
  %indvars.iv198.i826 = phi i64 [ %indvars.iv.next199.i, %.thread142.i ], [ 0, %.preheader164.i ] ; 7 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv198.i826
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !113
  switch i32 %i.bz, label %.loopexit817 [
    i32 0, label %bb.y
    i32 1, label %bb.ab
  ]

bb.y:                                             ; preds = %.lr.ph.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv198.i826
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !28  ; 3 uses
  %i.cc = add i8 %i.cb, -3
  %or.cond114.i = icmp ult i8 %i.cc, -2
  br i1 %or.cond114.i, label %.loopexit817, label %.preheader160.i

.preheader160.i:                                  ; preds = %bb.y
  %.val117.i = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.cd = icmp ugt i8 %.val117.i, 62
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %indvars.iv198.i826 ; 3 uses
  %i.cf = zext nneg i8 %.val117.i to i64          ; 3 uses
  br i1 %i.cd, label %.loopexit817, label %validate_se_coef.exit.i

bb.z:                                             ; preds = %validate_se_coef.exit.i
  %exitcond197.not.i = icmp eq i8 %i.cb, 0
  br i1 %exitcond197.not.i, label %.thread142.i, label %validate_se_coef.exit.i.11382

validate_se_coef.exit.i.11382:                    ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !27
  %i.ci = ashr i64 %i.ch, %i.cf
  %i.cj = add i64 %i.ci, -32768
  %i.ck = icmp ult i64 %i.cj, -65535
  br i1 %i.ck, label %.loopexit817, label %bb.aa

bb.aa:                                            ; preds = %validate_se_coef.exit.i.11382
  %exitcond197.not.i.11384 = icmp eq i8 %i.cb, 1
  br i1 %exitcond197.not.i.11384, label %.thread142.i, label %validate_se_coef.exit.i.21386

validate_se_coef.exit.i.21386:                    ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !27
  %i.cn = ashr i64 %i.cm, %i.cf
  %i.co = add i64 %i.cn, -32768
  %i.cp = icmp ult i64 %i.co, -65535
  br i1 %i.cp, label %.loopexit817, label %.thread142.i

validate_se_coef.exit.i:                          ; preds = %.preheader160.i
  %i.cq = load i64, ptr %i.ce, align 8, !tbaa !27
  %i.cr = ashr i64 %i.cq, %i.cf
  %i.cs = add i64 %i.cr, -32768
  %i.ct = icmp ult i64 %i.cs, -65535
  br i1 %i.ct, label %.loopexit817, label %bb.z

bb.ab:                                            ; preds = %.lr.ph.a
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv198.i826
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28  ; 3 uses
  %i.cw = add i8 %i.cv, -4
  %or.cond115.i = icmp ult i8 %i.cw, -3
  br i1 %or.cond115.i, label %.loopexit817, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val116.i = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.cx = icmp ugt i8 %.val116.i, 62
  br i1 %i.cx, label %.loopexit817, label %validate_se_coef.exit122.i

validate_se_coef.exit122.i:                       ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv198.i826
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !27
  %i.da = zext nneg i8 %.val116.i to i64          ; 22 uses
  %i.db = ashr i64 %i.cz, %i.da
  %i.dc = add i64 %i.db, -32768
  %i.dd = icmp ult i64 %i.dc, -65535
  br i1 %i.dd, label %.loopexit817, label %.preheader158.lr.ph.i

.preheader158.lr.ph.i:                            ; preds = %validate_se_coef.exit122.i
  %i.de = getelementptr inbounds nuw [168 x i8], ptr %i.bv, i64 %indvars.iv198.i826 ; 21 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !27
  %i.dg = ashr i64 %i.df, %i.da
  %i.dh = add i64 %i.dg, -32768
  %i.di = icmp ult i64 %i.dh, -65535
  br i1 %i.di, label %.loopexit817, label %validate_se_coef.exit124.1.i

validate_se_coef.exit124.1.i:                     ; preds = %.preheader158.lr.ph.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !27
  %i.dl = ashr i64 %i.dk, %i.da
  %i.dm = add i64 %i.dl, -32768
  %i.dn = icmp ult i64 %i.dm, -65535
  br i1 %i.dn, label %.loopexit817, label %validate_se_coef.exit124.2.i

validate_se_coef.exit124.2.i:                     ; preds = %validate_se_coef.exit124.1.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !27
  %i.dq = ashr i64 %i.dp, %i.da
  %i.dr = add i64 %i.dq, -32768
  %i.ds = icmp ult i64 %i.dr, -65535
  br i1 %i.ds, label %.loopexit817, label %validate_se_coef.exit124.3.i

validate_se_coef.exit124.3.i:                     ; preds = %validate_se_coef.exit124.2.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !27
  %i.dv = ashr i64 %i.du, %i.da
  %i.dw = add i64 %i.dv, -32768
  %i.dx = icmp ult i64 %i.dw, -65535
  br i1 %i.dx, label %.loopexit817, label %validate_se_coef.exit124.4.i

validate_se_coef.exit124.4.i:                     ; preds = %validate_se_coef.exit124.3.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !27
  %i.ea = ashr i64 %i.dz, %i.da
  %i.eb = add i64 %i.ea, -32768
  %i.ec = icmp ult i64 %i.eb, -65535
  br i1 %i.ec, label %.loopexit817, label %validate_se_coef.exit124.5.i

validate_se_coef.exit124.5.i:                     ; preds = %validate_se_coef.exit124.4.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !27
  %i.ef = ashr i64 %i.ee, %i.da
  %i.eg = add i64 %i.ef, -32768
  %i.eh = icmp ult i64 %i.eg, -65535
  br i1 %i.eh, label %.loopexit817, label %validate_se_coef.exit124.6.i

validate_se_coef.exit124.6.i:                     ; preds = %validate_se_coef.exit124.5.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !27
  %i.ek = ashr i64 %i.ej, %i.da
  %i.el = add i64 %i.ek, -32768
  %i.em = icmp ult i64 %i.el, -65535
  br i1 %i.em, label %.loopexit817, label %bb.ad

bb.ad:                                            ; preds = %validate_se_coef.exit124.6.i
  %exitcond192.not.i = icmp eq i8 %i.cv, 1
  br i1 %exitcond192.not.i, label %.thread142.i, label %.preheader158.i.11362

.preheader158.i.11362:                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !27
  %i.ep = ashr i64 %i.eo, %i.da
  %i.eq = add i64 %i.ep, -32768
  %i.er = icmp ult i64 %i.eq, -65535
  br i1 %i.er, label %.loopexit817, label %validate_se_coef.exit124.1.i.11363

validate_se_coef.exit124.1.i.11363:               ; preds = %.preheader158.i.11362
  %i.es = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.et = load i64, ptr %i.es, align 8, !tbaa !27
  %i.eu = ashr i64 %i.et, %i.da
  %i.ev = add i64 %i.eu, -32768
  %i.ew = icmp ult i64 %i.ev, -65535
  br i1 %i.ew, label %.loopexit817, label %validate_se_coef.exit124.2.i.11364

validate_se_coef.exit124.2.i.11364:               ; preds = %validate_se_coef.exit124.1.i.11363
  %i.ex = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !27
  %i.ez = ashr i64 %i.ey, %i.da
  %i.fa = add i64 %i.ez, -32768
  %i.fb = icmp ult i64 %i.fa, -65535
  br i1 %i.fb, label %.loopexit817, label %validate_se_coef.exit124.3.i.11365

validate_se_coef.exit124.3.i.11365:               ; preds = %validate_se_coef.exit124.2.i.11364
  %i.fc = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !27
  %i.fe = ashr i64 %i.fd, %i.da
  %i.ff = add i64 %i.fe, -32768
  %i.fg = icmp ult i64 %i.ff, -65535
  br i1 %i.fg, label %.loopexit817, label %validate_se_coef.exit124.4.i.11366

validate_se_coef.exit124.4.i.11366:               ; preds = %validate_se_coef.exit124.3.i.11365
  %i.fh = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !27
  %i.fj = ashr i64 %i.fi, %i.da
  %i.fk = add i64 %i.fj, -32768
  %i.fl = icmp ult i64 %i.fk, -65535
  br i1 %i.fl, label %.loopexit817, label %validate_se_coef.exit124.5.i.11367

validate_se_coef.exit124.5.i.11367:               ; preds = %validate_se_coef.exit124.4.i.11366
  %i.fm = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !27
  %i.fo = ashr i64 %i.fn, %i.da
  %i.fp = add i64 %i.fo, -32768
  %i.fq = icmp ult i64 %i.fp, -65535
  br i1 %i.fq, label %.loopexit817, label %validate_se_coef.exit124.6.i.11368

validate_se_coef.exit124.6.i.11368:               ; preds = %validate_se_coef.exit124.5.i.11367
  %i.fr = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !27
  %i.ft = ashr i64 %i.fs, %i.da
  %i.fu = add i64 %i.ft, -32768
  %i.fv = icmp ult i64 %i.fu, -65535
  br i1 %i.fv, label %.loopexit817, label %bb.ae

bb.ae:                                            ; preds = %validate_se_coef.exit124.6.i.11368
  %exitcond192.not.i.11370 = icmp eq i8 %i.cv, 2
  br i1 %exitcond192.not.i.11370, label %.thread142.i, label %.preheader158.i.21372

.preheader158.i.21372:                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !27
  %i.fy = ashr i64 %i.fx, %i.da
  %i.fz = add i64 %i.fy, -32768
  %i.ga = icmp ult i64 %i.fz, -65535
  br i1 %i.ga, label %.loopexit817, label %validate_se_coef.exit124.1.i.21373

validate_se_coef.exit124.1.i.21373:               ; preds = %.preheader158.i.21372
  %i.gb = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !27
  %i.gd = ashr i64 %i.gc, %i.da
  %i.ge = add i64 %i.gd, -32768
  %i.gf = icmp ult i64 %i.ge, -65535
  br i1 %i.gf, label %.loopexit817, label %validate_se_coef.exit124.2.i.21374

validate_se_coef.exit124.2.i.21374:               ; preds = %validate_se_coef.exit124.1.i.21373
  %i.gg = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !27
  %i.gi = ashr i64 %i.gh, %i.da
  %i.gj = add i64 %i.gi, -32768
  %i.gk = icmp ult i64 %i.gj, -65535
  br i1 %i.gk, label %.loopexit817, label %validate_se_coef.exit124.3.i.21375

validate_se_coef.exit124.3.i.21375:               ; preds = %validate_se_coef.exit124.2.i.21374
  %i.gl = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !27
  %i.gn = ashr i64 %i.gm, %i.da
  %i.go = add i64 %i.gn, -32768
  %i.gp = icmp ult i64 %i.go, -65535
  br i1 %i.gp, label %.loopexit817, label %validate_se_coef.exit124.4.i.21376

validate_se_coef.exit124.4.i.21376:               ; preds = %validate_se_coef.exit124.3.i.21375
  %i.gq = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !27
  %i.gs = ashr i64 %i.gr, %i.da
  %i.gt = add i64 %i.gs, -32768
  %i.gu = icmp ult i64 %i.gt, -65535
  br i1 %i.gu, label %.loopexit817, label %validate_se_coef.exit124.5.i.21377

validate_se_coef.exit124.5.i.21377:               ; preds = %validate_se_coef.exit124.4.i.21376
  %i.gv = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !27
  %i.gx = ashr i64 %i.gw, %i.da
  %i.gy = add i64 %i.gx, -32768
  %i.gz = icmp ult i64 %i.gy, -65535
  br i1 %i.gz, label %.loopexit817, label %validate_se_coef.exit124.6.i.21378

validate_se_coef.exit124.6.i.21378:               ; preds = %validate_se_coef.exit124.5.i.21377
  %i.ha = getelementptr inbounds nuw i8, ptr %i.de, i64 160
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !27
  %i.hc = ashr i64 %i.hb, %i.da
  %i.hd = add i64 %i.hc, -32768
  %i.he = icmp ult i64 %i.hd, -65535
  br i1 %i.he, label %.loopexit817, label %.thread142.i

.thread142.i:                                     ; preds = %bb.ad, %bb.ae, %validate_se_coef.exit124.6.i.21378, %bb.z, %bb.aa, %validate_se_coef.exit.i.21386
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i826, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %indvars.iv.next199.i, %smax.i
  br i1 %exitcond202.not.i, label %._crit_edge.a, label %.lr.ph.a, !llvm.loop !90

._crit_edge.a:                                    ; preds = %.thread142.i, %.preheader164.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 1680 ; 5 uses
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !122 ; 9 uses
  %i.hh = add i8 %i.hg, -10
  %or.cond113.i.1 = icmp ult i8 %i.hh, -8
  br i1 %or.cond113.i.1, label %.loopexit817, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge.a
  %i.hi = zext nneg i8 %i.hg to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.h, i64 1682
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 1684
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !123
  %i.hm = getelementptr i8, ptr %i.h, i64 1682
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !123
  %i.ho = icmp ult i16 %i.hl, %i.hn
  br i1 %i.ho, label %.loopexit817, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.1
  %exitcond.not.i.1 = icmp eq i8 %i.hg, 2
  br i1 %exitcond.not.i.1, label %.preheader164.i.1, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hp = getelementptr inbounds nuw i8, ptr %i.h, i64 1686
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !123
  %i.hr = getelementptr i8, ptr %i.h, i64 1684
  %i.hs = load i16, ptr %i.hr, align 4, !tbaa !123
  %i.ht = icmp ult i16 %i.hq, %i.hs
  br i1 %i.ht, label %.loopexit817, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %exitcond.not.i.1.1 = icmp eq i8 %i.hg, 3
  br i1 %exitcond.not.i.1.1, label %.preheader164.i.1, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hu = getelementptr inbounds nuw i8, ptr %i.h, i64 1688
  %i.hv = load i16, ptr %i.hu, align 8, !tbaa !123
  %i.hw = getelementptr i8, ptr %i.h, i64 1686
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !123
  %i.hy = icmp ult i16 %i.hv, %i.hx
  br i1 %i.hy, label %.loopexit817, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %exitcond.not.i.1.2 = icmp eq i8 %i.hg, 4
  br i1 %exitcond.not.i.1.2, label %.preheader164.i.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 1690
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !123
  %i.ib = getelementptr i8, ptr %i.h, i64 1688
  %i.ic = load i16, ptr %i.ib, align 8, !tbaa !123
  %i.id = icmp ult i16 %i.ia, %i.ic
  br i1 %i.id, label %.loopexit817, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %exitcond.not.i.1.3 = icmp eq i8 %i.hg, 5
  br i1 %exitcond.not.i.1.3, label %.preheader164.i.1, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ie = getelementptr inbounds nuw i8, ptr %i.h, i64 1692
  %i.if = load i16, ptr %i.ie, align 4, !tbaa !123
  %i.ig = getelementptr i8, ptr %i.h, i64 1690
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !123
  %i.ii = icmp ult i16 %i.if, %i.ih
  br i1 %i.ii, label %.loopexit817, label %bb.an

bb.an:                                            ; preds = %bb.am
  %exitcond.not.i.1.4 = icmp eq i8 %i.hg, 6
  br i1 %exitcond.not.i.1.4, label %.preheader164.i.1, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ij = getelementptr inbounds nuw i8, ptr %i.h, i64 1694
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !123
  %i.il = getelementptr i8, ptr %i.h, i64 1692
  %i.im = load i16, ptr %i.il, align 4, !tbaa !123
  %i.in = icmp ult i16 %i.ik, %i.im
  br i1 %i.in, label %.loopexit817, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %exitcond.not.i.1.5 = icmp eq i8 %i.hg, 7
  br i1 %exitcond.not.i.1.5, label %.preheader164.i.1, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.io = getelementptr inbounds nuw i8, ptr %i.h, i64 1696
  %i.ip = load i16, ptr %i.io, align 8, !tbaa !123
  %i.iq = getelementptr i8, ptr %i.h, i64 1694
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !123
  %i.is = icmp ult i16 %i.ip, %i.ir
  br i1 %i.is, label %.loopexit817, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %exitcond.not.i.1.6 = icmp eq i8 %i.hg, 8
  br i1 %exitcond.not.i.1.6, label %.preheader164.i.1, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.it = getelementptr inbounds nuw i8, ptr %i.h, i64 1698
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !123
  %i.iv = getelementptr i8, ptr %i.h, i64 1696
  %i.iw = load i16, ptr %i.iv, align 8, !tbaa !123
  %i.ix = icmp ult i16 %i.iu, %i.iw
  br i1 %i.ix, label %.loopexit817, label %.preheader164.i.1

.preheader164.i.1:                                ; preds = %bb.as, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af
  %i.iy = getelementptr inbounds nuw i8, ptr %i.h, i64 1700 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.h, i64 1936
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 1944
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 2008
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 1732
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 1744
  %smax.i.1 = add nsw i64 %i.hi, -1               ; 2 uses
  %exitcond202.not.i825.1 = icmp eq i64 %smax.i.1, 0
  br i1 %exitcond202.not.i825.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader164.i.1, %.thread142.i.1
  %indvars.iv198.i826.1 = phi i64 [ %indvars.iv.next199.i.1, %.thread142.i.1 ], [ 0, %.preheader164.i.1 ] ; 7 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv198.i826.1
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !113
  switch i32 %i.jf, label %.loopexit817 [
    i32 0, label %bb.aw
    i32 1, label %bb.at
  ]

bb.at:                                            ; preds = %.lr.ph.1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 %indvars.iv198.i826.1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !28  ; 3 uses
  %i.ji = add i8 %i.jh, -4
  %or.cond115.i.1 = icmp ult i8 %i.ji, -3
  br i1 %or.cond115.i.1, label %.loopexit817, label %6

6:                                                ; preds = %bb.at
  %.val116.i.1 = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %7 = icmp ugt i8 %.val116.i.1, 62
  br i1 %7, label %.loopexit817, label %validate_se_coef.exit122.i.1

validate_se_coef.exit122.i.1:                     ; preds = %6
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv198.i826.1
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !27
  %8 = zext nneg i8 %.val116.i.1 to i64           ; 22 uses
  %i.jl = ashr i64 %i.jk, %8
  %i.jm = add i64 %i.jl, -32768
  %i.jn = icmp ult i64 %i.jm, -65535
  br i1 %i.jn, label %.loopexit817, label %.preheader158.lr.ph.i.1

.preheader158.lr.ph.i.1:                          ; preds = %validate_se_coef.exit122.i.1
  %i.jo = getelementptr inbounds nuw [168 x i8], ptr %i.jb, i64 %indvars.iv198.i826.1 ; 21 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !27
  %i.jq = ashr i64 %i.jp, %8
  %i.jr = add i64 %i.jq, -32768
  %i.js = icmp ult i64 %i.jr, -65535
  br i1 %i.js, label %.loopexit817, label %validate_se_coef.exit124.1.i.1

validate_se_coef.exit124.1.i.1:                   ; preds = %.preheader158.lr.ph.i.1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !27
  %i.jv = ashr i64 %i.ju, %8
  %i.jw = add i64 %i.jv, -32768
  %i.jx = icmp ult i64 %i.jw, -65535
  br i1 %i.jx, label %.loopexit817, label %validate_se_coef.exit124.2.i.1

validate_se_coef.exit124.2.i.1:                   ; preds = %validate_se_coef.exit124.1.i.1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !27
  %i.ka = ashr i64 %i.jz, %8
  %i.kb = add i64 %i.ka, -32768
  %i.kc = icmp ult i64 %i.kb, -65535
  br i1 %i.kc, label %.loopexit817, label %validate_se_coef.exit124.3.i.1

validate_se_coef.exit124.3.i.1:                   ; preds = %validate_se_coef.exit124.2.i.1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !27
  %i.kf = ashr i64 %i.ke, %8
  %i.kg = add i64 %i.kf, -32768
  %i.kh = icmp ult i64 %i.kg, -65535
  br i1 %i.kh, label %.loopexit817, label %validate_se_coef.exit124.4.i.1

validate_se_coef.exit124.4.i.1:                   ; preds = %validate_se_coef.exit124.3.i.1
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !27
  %i.kk = ashr i64 %i.kj, %8
  %i.kl = add i64 %i.kk, -32768
  %i.km = icmp ult i64 %i.kl, -65535
  br i1 %i.km, label %.loopexit817, label %validate_se_coef.exit124.5.i.1

validate_se_coef.exit124.5.i.1:                   ; preds = %validate_se_coef.exit124.4.i.1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !27
  %i.kp = ashr i64 %i.ko, %8
  %i.kq = add i64 %i.kp, -32768
  %i.kr = icmp ult i64 %i.kq, -65535
  br i1 %i.kr, label %.loopexit817, label %validate_se_coef.exit124.6.i.1

validate_se_coef.exit124.6.i.1:                   ; preds = %validate_se_coef.exit124.5.i.1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !27
  %i.ku = ashr i64 %i.kt, %8
  %i.kv = add i64 %i.ku, -32768
  %i.kw = icmp ult i64 %i.kv, -65535
  br i1 %i.kw, label %.loopexit817, label %bb.au

bb.au:                                            ; preds = %validate_se_coef.exit124.6.i.1
  %exitcond192.not.i.1 = icmp eq i8 %i.jh, 1
  br i1 %exitcond192.not.i.1, label %.thread142.i.1, label %.preheader158.i.1.1

.preheader158.i.1.1:                              ; preds = %bb.au
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !27
  %i.kz = ashr i64 %i.ky, %8
  %i.la = add i64 %i.kz, -32768
  %i.lb = icmp ult i64 %i.la, -65535
  br i1 %i.lb, label %.loopexit817, label %validate_se_coef.exit124.1.i.1.1

validate_se_coef.exit124.1.i.1.1:                 ; preds = %.preheader158.i.1.1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jo, i64 64
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !27
  %i.le = ashr i64 %i.ld, %8
  %i.lf = add i64 %i.le, -32768
  %i.lg = icmp ult i64 %i.lf, -65535
  br i1 %i.lg, label %.loopexit817, label %validate_se_coef.exit124.2.i.1.1

validate_se_coef.exit124.2.i.1.1:                 ; preds = %validate_se_coef.exit124.1.i.1.1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jo, i64 72
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !27
  %i.lj = ashr i64 %i.li, %8
  %i.lk = add i64 %i.lj, -32768
  %i.ll = icmp ult i64 %i.lk, -65535
  br i1 %i.ll, label %.loopexit817, label %validate_se_coef.exit124.3.i.1.1

validate_se_coef.exit124.3.i.1.1:                 ; preds = %validate_se_coef.exit124.2.i.1.1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jo, i64 80
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !27
  %i.lo = ashr i64 %i.ln, %8
  %i.lp = add i64 %i.lo, -32768
  %i.lq = icmp ult i64 %i.lp, -65535
  br i1 %i.lq, label %.loopexit817, label %validate_se_coef.exit124.4.i.1.1

validate_se_coef.exit124.4.i.1.1:                 ; preds = %validate_se_coef.exit124.3.i.1.1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jo, i64 88
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !27
  %i.lt = ashr i64 %i.ls, %8
  %i.lu = add i64 %i.lt, -32768
  %i.lv = icmp ult i64 %i.lu, -65535
  br i1 %i.lv, label %.loopexit817, label %validate_se_coef.exit124.5.i.1.1

validate_se_coef.exit124.5.i.1.1:                 ; preds = %validate_se_coef.exit124.4.i.1.1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jo, i64 96
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !27
  %i.ly = ashr i64 %i.lx, %8
  %i.lz = add i64 %i.ly, -32768
  %i.ma = icmp ult i64 %i.lz, -65535
  br i1 %i.ma, label %.loopexit817, label %validate_se_coef.exit124.6.i.1.1

validate_se_coef.exit124.6.i.1.1:                 ; preds = %validate_se_coef.exit124.5.i.1.1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jo, i64 104
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !27
  %i.md = ashr i64 %i.mc, %8
  %i.me = add i64 %i.md, -32768
  %i.mf = icmp ult i64 %i.me, -65535
  br i1 %i.mf, label %.loopexit817, label %bb.av

bb.av:                                            ; preds = %validate_se_coef.exit124.6.i.1.1
  %exitcond192.not.i.1.1 = icmp eq i8 %i.jh, 2
  br i1 %exitcond192.not.i.1.1, label %.thread142.i.1, label %.preheader158.i.1.2

.preheader158.i.1.2:                              ; preds = %bb.av
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jo, i64 112
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !27
  %i.mi = ashr i64 %i.mh, %8
  %i.mj = add i64 %i.mi, -32768
  %i.mk = icmp ult i64 %i.mj, -65535
  br i1 %i.mk, label %.loopexit817, label %validate_se_coef.exit124.1.i.1.2

validate_se_coef.exit124.1.i.1.2:                 ; preds = %.preheader158.i.1.2
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jo, i64 120
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !27
  %i.mn = ashr i64 %i.mm, %8
  %i.mo = add i64 %i.mn, -32768
  %i.mp = icmp ult i64 %i.mo, -65535
  br i1 %i.mp, label %.loopexit817, label %validate_se_coef.exit124.2.i.1.2

validate_se_coef.exit124.2.i.1.2:                 ; preds = %validate_se_coef.exit124.1.i.1.2
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jo, i64 128
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !27
  %i.ms = ashr i64 %i.mr, %8
  %i.mt = add i64 %i.ms, -32768
  %i.mu = icmp ult i64 %i.mt, -65535
  br i1 %i.mu, label %.loopexit817, label %validate_se_coef.exit124.3.i.1.2

validate_se_coef.exit124.3.i.1.2:                 ; preds = %validate_se_coef.exit124.2.i.1.2
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jo, i64 136
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !27
  %i.mx = ashr i64 %i.mw, %8
  %i.my = add i64 %i.mx, -32768
  %i.mz = icmp ult i64 %i.my, -65535
  br i1 %i.mz, label %.loopexit817, label %validate_se_coef.exit124.4.i.1.2

validate_se_coef.exit124.4.i.1.2:                 ; preds = %validate_se_coef.exit124.3.i.1.2
  %i.na = getelementptr inbounds nuw i8, ptr %i.jo, i64 144
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !27
  %i.nc = ashr i64 %i.nb, %8
  %i.nd = add i64 %i.nc, -32768
  %i.ne = icmp ult i64 %i.nd, -65535
  br i1 %i.ne, label %.loopexit817, label %validate_se_coef.exit124.5.i.1.2

validate_se_coef.exit124.5.i.1.2:                 ; preds = %validate_se_coef.exit124.4.i.1.2
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jo, i64 152
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !27
  %i.nh = ashr i64 %i.ng, %8
  %i.ni = add i64 %i.nh, -32768
  %i.nj = icmp ult i64 %i.ni, -65535
  br i1 %i.nj, label %.loopexit817, label %validate_se_coef.exit124.6.i.1.2

validate_se_coef.exit124.6.i.1.2:                 ; preds = %validate_se_coef.exit124.5.i.1.2
  %i.nk = getelementptr inbounds nuw i8, ptr %i.jo, i64 160
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !27
  %i.nm = ashr i64 %i.nl, %8
  %i.nn = add i64 %i.nm, -32768
  %i.no = icmp ult i64 %i.nn, -65535
  br i1 %i.no, label %.loopexit817, label %.thread142.i.1

bb.aw:                                            ; preds = %.lr.ph.1
  %i.np = getelementptr inbounds nuw i8, ptr %i.jc, i64 %indvars.iv198.i826.1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !28  ; 3 uses
  %i.nr = add i8 %i.nq, -3
  %or.cond114.i.1 = icmp ult i8 %i.nr, -2
  br i1 %or.cond114.i.1, label %.loopexit817, label %.preheader160.i.1

.preheader160.i.1:                                ; preds = %bb.aw
  %.val117.i.1 = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %9 = icmp ugt i8 %.val117.i.1, 62
  %10 = getelementptr inbounds nuw [24 x i8], ptr %i.jd, i64 %indvars.iv198.i826.1 ; 3 uses
  %11 = zext nneg i8 %.val117.i.1 to i64          ; 3 uses
  br i1 %9, label %.loopexit817, label %validate_se_coef.exit.i.1

validate_se_coef.exit.i.1:                        ; preds = %.preheader160.i.1
  %i.ns = load i64, ptr %10, align 8, !tbaa !27
  %i.nt = ashr i64 %i.ns, %11
  %i.nu = add i64 %i.nt, -32768
  %i.nv = icmp ult i64 %i.nu, -65535
  br i1 %i.nv, label %.loopexit817, label %bb.ax

bb.ax:                                            ; preds = %validate_se_coef.exit.i.1
  %exitcond197.not.i.1 = icmp eq i8 %i.nq, 0
  br i1 %exitcond197.not.i.1, label %.thread142.i.1, label %validate_se_coef.exit.i.1.1

validate_se_coef.exit.i.1.1:                      ; preds = %bb.ax
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !27
  %i.ny = ashr i64 %i.nx, %11
  %i.nz = add i64 %i.ny, -32768
  %i.oa = icmp ult i64 %i.nz, -65535
  br i1 %i.oa, label %.loopexit817, label %bb.ay

bb.ay:                                            ; preds = %validate_se_coef.exit.i.1.1
  %exitcond197.not.i.1.1 = icmp eq i8 %i.nq, 1
  br i1 %exitcond197.not.i.1.1, label %.thread142.i.1, label %validate_se_coef.exit.i.1.2

validate_se_coef.exit.i.1.2:                      ; preds = %bb.ay
  %i.ob = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !27
  %i.od = ashr i64 %i.oc, %11
  %i.oe = add i64 %i.od, -32768
  %i.of = icmp ult i64 %i.oe, -65535
  br i1 %i.of, label %.loopexit817, label %.thread142.i.1

.thread142.i.1:                                   ; preds = %bb.au, %bb.av, %validate_se_coef.exit124.6.i.1.2, %bb.ax, %bb.ay, %validate_se_coef.exit.i.1.2
  %indvars.iv.next199.i.1 = add nuw nsw i64 %indvars.iv198.i826.1, 1 ; 2 uses
  %exitcond202.not.i.1 = icmp eq i64 %indvars.iv.next199.i.1, %smax.i.1
  br i1 %exitcond202.not.i.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !90

._crit_edge.1:                                    ; preds = %.thread142.i.1, %.preheader164.i.1
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 3352 ; 5 uses
  %i.oh = load i8, ptr %i.og, align 8, !tbaa !122 ; 9 uses
  %i.oi = add i8 %i.oh, -10
  %or.cond113.i.2 = icmp ult i8 %i.oi, -8
  br i1 %or.cond113.i.2, label %.loopexit817, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %._crit_edge.1
  %i.oj = zext nneg i8 %i.oh to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.h, i64 3354
  %i.ol = getelementptr inbounds nuw i8, ptr %i.h, i64 3356
  %i.om = load i16, ptr %i.ol, align 4, !tbaa !123
  %i.on = getelementptr i8, ptr %i.h, i64 3354
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !123
  %i.op = icmp ult i16 %i.om, %i.oo
  br i1 %i.op, label %.loopexit817, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.2
  %exitcond.not.i.2 = icmp eq i8 %i.oh, 2
  br i1 %exitcond.not.i.2, label %.preheader164.i.2, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oq = getelementptr inbounds nuw i8, ptr %i.h, i64 3358
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !123
  %i.os = getelementptr i8, ptr %i.h, i64 3356
  %i.ot = load i16, ptr %i.os, align 4, !tbaa !123
  %i.ou = icmp ult i16 %i.or, %i.ot
  br i1 %i.ou, label %.loopexit817, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %exitcond.not.i.2.1 = icmp eq i8 %i.oh, 3
  br i1 %exitcond.not.i.2.1, label %.preheader164.i.2, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 3360
  %i.ow = load i16, ptr %i.ov, align 8, !tbaa !123
  %i.ox = getelementptr i8, ptr %i.h, i64 3358
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !123
  %i.oz = icmp ult i16 %i.ow, %i.oy
  br i1 %i.oz, label %.loopexit817, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %exitcond.not.i.2.2 = icmp eq i8 %i.oh, 4
  br i1 %exitcond.not.i.2.2, label %.preheader164.i.2, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pa = getelementptr inbounds nuw i8, ptr %i.h, i64 3362
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !123
  %i.pc = getelementptr i8, ptr %i.h, i64 3360
  %i.pd = load i16, ptr %i.pc, align 8, !tbaa !123
  %i.pe = icmp ult i16 %i.pb, %i.pd
  br i1 %i.pe, label %.loopexit817, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %exitcond.not.i.2.3 = icmp eq i8 %i.oh, 5
  br i1 %exitcond.not.i.2.3, label %.preheader164.i.2, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pf = getelementptr inbounds nuw i8, ptr %i.h, i64 3364
  %i.pg = load i16, ptr %i.pf, align 4, !tbaa !123
  %i.ph = getelementptr i8, ptr %i.h, i64 3362
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !123
  %i.pj = icmp ult i16 %i.pg, %i.pi
  br i1 %i.pj, label %.loopexit817, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond.not.i.2.4 = icmp eq i8 %i.oh, 6
  br i1 %exitcond.not.i.2.4, label %.preheader164.i.2, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pk = getelementptr inbounds nuw i8, ptr %i.h, i64 3366
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !123
  %i.pm = getelementptr i8, ptr %i.h, i64 3364
  %i.pn = load i16, ptr %i.pm, align 4, !tbaa !123
  %i.po = icmp ult i16 %i.pl, %i.pn
  br i1 %i.po, label %.loopexit817, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %exitcond.not.i.2.5 = icmp eq i8 %i.oh, 7
  br i1 %exitcond.not.i.2.5, label %.preheader164.i.2, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pp = getelementptr inbounds nuw i8, ptr %i.h, i64 3368
  %i.pq = load i16, ptr %i.pp, align 8, !tbaa !123
  %i.pr = getelementptr i8, ptr %i.h, i64 3366
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !123
  %i.pt = icmp ult i16 %i.pq, %i.ps
  br i1 %i.pt, label %.loopexit817, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %exitcond.not.i.2.6 = icmp eq i8 %i.oh, 8
  br i1 %exitcond.not.i.2.6, label %.preheader164.i.2, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pu = getelementptr inbounds nuw i8, ptr %i.h, i64 3370
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !123
  %i.pw = getelementptr i8, ptr %i.h, i64 3368
  %i.px = load i16, ptr %i.pw, align 8, !tbaa !123
  %i.py = icmp ult i16 %i.pv, %i.px
  br i1 %i.py, label %.loopexit817, label %.preheader164.i.2

.preheader164.i.2:                                ; preds = %bb.bm, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az
  %i.pz = getelementptr inbounds nuw i8, ptr %i.h, i64 3372 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.h, i64 3608
  %i.qb = getelementptr inbounds nuw i8, ptr %i.h, i64 3616
  %i.qc = getelementptr inbounds nuw i8, ptr %i.h, i64 3680
  %i.qd = getelementptr inbounds nuw i8, ptr %i.h, i64 3404
  %i.qe = getelementptr inbounds nuw i8, ptr %i.h, i64 3416
  %smax.i.2 = add nsw i64 %i.oj, -1               ; 2 uses
  %exitcond202.not.i825.2 = icmp eq i64 %smax.i.2, 0
  br i1 %exitcond202.not.i825.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader164.i.2, %.thread142.i.2
  %indvars.iv198.i826.2 = phi i64 [ %indvars.iv.next199.i.2, %.thread142.i.2 ], [ 0, %.preheader164.i.2 ] ; 7 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv198.i826.2
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !113
  switch i32 %i.qg, label %.loopexit817 [
    i32 0, label %bb.bq
    i32 1, label %bb.bn
  ]

bb.bn:                                            ; preds = %.lr.ph.2
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv198.i826.2
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !28  ; 3 uses
  %i.qj = add i8 %i.qi, -4
  %or.cond115.i.2 = icmp ult i8 %i.qj, -3
  br i1 %or.cond115.i.2, label %.loopexit817, label %12

12:                                               ; preds = %bb.bn
  %.val116.i.2 = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %13 = icmp ugt i8 %.val116.i.2, 62
  br i1 %13, label %.loopexit817, label %validate_se_coef.exit122.i.2

validate_se_coef.exit122.i.2:                     ; preds = %12
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %indvars.iv198.i826.2
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !27
  %14 = zext nneg i8 %.val116.i.2 to i64          ; 22 uses
  %i.qm = ashr i64 %i.ql, %14
  %i.qn = add i64 %i.qm, -32768
  %i.qo = icmp ult i64 %i.qn, -65535
  br i1 %i.qo, label %.loopexit817, label %.preheader158.lr.ph.i.2

.preheader158.lr.ph.i.2:                          ; preds = %validate_se_coef.exit122.i.2
  %i.qp = getelementptr inbounds nuw [168 x i8], ptr %i.qc, i64 %indvars.iv198.i826.2 ; 21 uses
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !27
  %i.qr = ashr i64 %i.qq, %14
  %i.qs = add i64 %i.qr, -32768
  %i.qt = icmp ult i64 %i.qs, -65535
  br i1 %i.qt, label %.loopexit817, label %validate_se_coef.exit124.1.i.2

validate_se_coef.exit124.1.i.2:                   ; preds = %.preheader158.lr.ph.i.2
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !27
  %i.qw = ashr i64 %i.qv, %14
  %i.qx = add i64 %i.qw, -32768
  %i.qy = icmp ult i64 %i.qx, -65535
  br i1 %i.qy, label %.loopexit817, label %validate_se_coef.exit124.2.i.2

validate_se_coef.exit124.2.i.2:                   ; preds = %validate_se_coef.exit124.1.i.2
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !27
  %i.rb = ashr i64 %i.ra, %14
  %i.rc = add i64 %i.rb, -32768
  %i.rd = icmp ult i64 %i.rc, -65535
  br i1 %i.rd, label %.loopexit817, label %validate_se_coef.exit124.3.i.2

validate_se_coef.exit124.3.i.2:                   ; preds = %validate_se_coef.exit124.2.i.2
  %i.re = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !27
  %i.rg = ashr i64 %i.rf, %14
  %i.rh = add i64 %i.rg, -32768
  %i.ri = icmp ult i64 %i.rh, -65535
  br i1 %i.ri, label %.loopexit817, label %validate_se_coef.exit124.4.i.2

validate_se_coef.exit124.4.i.2:                   ; preds = %validate_se_coef.exit124.3.i.2
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !27
  %i.rl = ashr i64 %i.rk, %14
  %i.rm = add i64 %i.rl, -32768
  %i.rn = icmp ult i64 %i.rm, -65535
  br i1 %i.rn, label %.loopexit817, label %validate_se_coef.exit124.5.i.2

validate_se_coef.exit124.5.i.2:                   ; preds = %validate_se_coef.exit124.4.i.2
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !27
  %i.rq = ashr i64 %i.rp, %14
  %i.rr = add i64 %i.rq, -32768
  %i.rs = icmp ult i64 %i.rr, -65535
  br i1 %i.rs, label %.loopexit817, label %validate_se_coef.exit124.6.i.2

validate_se_coef.exit124.6.i.2:                   ; preds = %validate_se_coef.exit124.5.i.2
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qp, i64 48
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !27
  %i.rv = ashr i64 %i.ru, %14
  %i.rw = add i64 %i.rv, -32768
  %i.rx = icmp ult i64 %i.rw, -65535
  br i1 %i.rx, label %.loopexit817, label %bb.bo

bb.bo:                                            ; preds = %validate_se_coef.exit124.6.i.2
  %exitcond192.not.i.2 = icmp eq i8 %i.qi, 1
  br i1 %exitcond192.not.i.2, label %.thread142.i.2, label %.preheader158.i.2.1

.preheader158.i.2.1:                              ; preds = %bb.bo
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qp, i64 56
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !27
  %i.sa = ashr i64 %i.rz, %14
  %i.sb = add i64 %i.sa, -32768
  %i.sc = icmp ult i64 %i.sb, -65535
  br i1 %i.sc, label %.loopexit817, label %validate_se_coef.exit124.1.i.2.1

validate_se_coef.exit124.1.i.2.1:                 ; preds = %.preheader158.i.2.1
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qp, i64 64
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !27
  %i.sf = ashr i64 %i.se, %14
  %i.sg = add i64 %i.sf, -32768
  %i.sh = icmp ult i64 %i.sg, -65535
  br i1 %i.sh, label %.loopexit817, label %validate_se_coef.exit124.2.i.2.1

validate_se_coef.exit124.2.i.2.1:                 ; preds = %validate_se_coef.exit124.1.i.2.1
  %i.si = getelementptr inbounds nuw i8, ptr %i.qp, i64 72
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !27
  %i.sk = ashr i64 %i.sj, %14
  %i.sl = add i64 %i.sk, -32768
  %i.sm = icmp ult i64 %i.sl, -65535
  br i1 %i.sm, label %.loopexit817, label %validate_se_coef.exit124.3.i.2.1

validate_se_coef.exit124.3.i.2.1:                 ; preds = %validate_se_coef.exit124.2.i.2.1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qp, i64 80
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !27
  %i.sp = ashr i64 %i.so, %14
  %i.sq = add i64 %i.sp, -32768
  %i.sr = icmp ult i64 %i.sq, -65535
  br i1 %i.sr, label %.loopexit817, label %validate_se_coef.exit124.4.i.2.1

validate_se_coef.exit124.4.i.2.1:                 ; preds = %validate_se_coef.exit124.3.i.2.1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qp, i64 88
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !27
  %i.su = ashr i64 %i.st, %14
  %i.sv = add i64 %i.su, -32768
  %i.sw = icmp ult i64 %i.sv, -65535
  br i1 %i.sw, label %.loopexit817, label %validate_se_coef.exit124.5.i.2.1

validate_se_coef.exit124.5.i.2.1:                 ; preds = %validate_se_coef.exit124.4.i.2.1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qp, i64 96
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !27
  %i.sz = ashr i64 %i.sy, %14
  %i.ta = add i64 %i.sz, -32768
  %i.tb = icmp ult i64 %i.ta, -65535
  br i1 %i.tb, label %.loopexit817, label %validate_se_coef.exit124.6.i.2.1

validate_se_coef.exit124.6.i.2.1:                 ; preds = %validate_se_coef.exit124.5.i.2.1
  %i.tc = getelementptr inbounds nuw i8, ptr %i.qp, i64 104
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !27
  %i.te = ashr i64 %i.td, %14
  %i.tf = add i64 %i.te, -32768
  %i.tg = icmp ult i64 %i.tf, -65535
  br i1 %i.tg, label %.loopexit817, label %bb.bp

bb.bp:                                            ; preds = %validate_se_coef.exit124.6.i.2.1
  %exitcond192.not.i.2.1 = icmp eq i8 %i.qi, 2
  br i1 %exitcond192.not.i.2.1, label %.thread142.i.2, label %.preheader158.i.2.2

.preheader158.i.2.2:                              ; preds = %bb.bp
  %i.th = getelementptr inbounds nuw i8, ptr %i.qp, i64 112
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !27
  %i.tj = ashr i64 %i.ti, %14
  %i.tk = add i64 %i.tj, -32768
  %i.tl = icmp ult i64 %i.tk, -65535
  br i1 %i.tl, label %.loopexit817, label %validate_se_coef.exit124.1.i.2.2

validate_se_coef.exit124.1.i.2.2:                 ; preds = %.preheader158.i.2.2
  %i.tm = getelementptr inbounds nuw i8, ptr %i.qp, i64 120
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !27
  %i.to = ashr i64 %i.tn, %14
  %i.tp = add i64 %i.to, -32768
  %i.tq = icmp ult i64 %i.tp, -65535
  br i1 %i.tq, label %.loopexit817, label %validate_se_coef.exit124.2.i.2.2

validate_se_coef.exit124.2.i.2.2:                 ; preds = %validate_se_coef.exit124.1.i.2.2
  %i.tr = getelementptr inbounds nuw i8, ptr %i.qp, i64 128
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !27
  %i.tt = ashr i64 %i.ts, %14
  %i.tu = add i64 %i.tt, -32768
  %i.tv = icmp ult i64 %i.tu, -65535
  br i1 %i.tv, label %.loopexit817, label %validate_se_coef.exit124.3.i.2.2

validate_se_coef.exit124.3.i.2.2:                 ; preds = %validate_se_coef.exit124.2.i.2.2
  %i.tw = getelementptr inbounds nuw i8, ptr %i.qp, i64 136
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !27
  %i.ty = ashr i64 %i.tx, %14
  %i.tz = add i64 %i.ty, -32768
  %i.ua = icmp ult i64 %i.tz, -65535
  br i1 %i.ua, label %.loopexit817, label %validate_se_coef.exit124.4.i.2.2

validate_se_coef.exit124.4.i.2.2:                 ; preds = %validate_se_coef.exit124.3.i.2.2
  %i.ub = getelementptr inbounds nuw i8, ptr %i.qp, i64 144
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !27
  %i.ud = ashr i64 %i.uc, %14
  %i.ue = add i64 %i.ud, -32768
  %i.uf = icmp ult i64 %i.ue, -65535
  br i1 %i.uf, label %.loopexit817, label %validate_se_coef.exit124.5.i.2.2

validate_se_coef.exit124.5.i.2.2:                 ; preds = %validate_se_coef.exit124.4.i.2.2
  %i.ug = getelementptr inbounds nuw i8, ptr %i.qp, i64 152
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !27
  %i.ui = ashr i64 %i.uh, %14
  %i.uj = add i64 %i.ui, -32768
  %i.uk = icmp ult i64 %i.uj, -65535
  br i1 %i.uk, label %.loopexit817, label %validate_se_coef.exit124.6.i.2.2

validate_se_coef.exit124.6.i.2.2:                 ; preds = %validate_se_coef.exit124.5.i.2.2
  %i.ul = getelementptr inbounds nuw i8, ptr %i.qp, i64 160
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !27
  %i.un = ashr i64 %i.um, %14
  %i.uo = add i64 %i.un, -32768
  %i.up = icmp ult i64 %i.uo, -65535
  br i1 %i.up, label %.loopexit817, label %.thread142.i.2

bb.bq:                                            ; preds = %.lr.ph.2
  %i.uq = getelementptr inbounds nuw i8, ptr %i.qd, i64 %indvars.iv198.i826.2
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !28  ; 3 uses
  %i.us = add i8 %i.ur, -3
  %or.cond114.i.2 = icmp ult i8 %i.us, -2
  br i1 %or.cond114.i.2, label %.loopexit817, label %.preheader160.i.2

.preheader160.i.2:                                ; preds = %bb.bq
  %.val117.i.2 = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %15 = icmp ugt i8 %.val117.i.2, 62
  %16 = getelementptr inbounds nuw [24 x i8], ptr %i.qe, i64 %indvars.iv198.i826.2 ; 3 uses
  %17 = zext nneg i8 %.val117.i.2 to i64          ; 3 uses
  br i1 %15, label %.loopexit817, label %validate_se_coef.exit.i.2

validate_se_coef.exit.i.2:                        ; preds = %.preheader160.i.2
  %i.ut = load i64, ptr %16, align 8, !tbaa !27
  %i.uu = ashr i64 %i.ut, %17
  %i.uv = add i64 %i.uu, -32768
  %i.uw = icmp ult i64 %i.uv, -65535
  br i1 %i.uw, label %.loopexit817, label %bb.br

bb.br:                                            ; preds = %validate_se_coef.exit.i.2
  %exitcond197.not.i.2 = icmp eq i8 %i.ur, 0
  br i1 %exitcond197.not.i.2, label %.thread142.i.2, label %validate_se_coef.exit.i.2.1

validate_se_coef.exit.i.2.1:                      ; preds = %bb.br
  %i.ux = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !27
  %i.uz = ashr i64 %i.uy, %17
  %i.va = add i64 %i.uz, -32768
  %i.vb = icmp ult i64 %i.va, -65535
  br i1 %i.vb, label %.loopexit817, label %bb.bs

bb.bs:                                            ; preds = %validate_se_coef.exit.i.2.1
  %exitcond197.not.i.2.1 = icmp eq i8 %i.ur, 1
  br i1 %exitcond197.not.i.2.1, label %.thread142.i.2, label %validate_se_coef.exit.i.2.2

validate_se_coef.exit.i.2.2:                      ; preds = %bb.bs
  %i.vc = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !27
  %i.ve = ashr i64 %i.vd, %17
  %i.vf = add i64 %i.ve, -32768
  %i.vg = icmp ult i64 %i.vf, -65535
  br i1 %i.vg, label %.loopexit817, label %.thread142.i.2

.thread142.i.2:                                   ; preds = %bb.bo, %bb.bp, %validate_se_coef.exit124.6.i.2.2, %bb.br, %bb.bs, %validate_se_coef.exit.i.2.2
  %indvars.iv.next199.i.2 = add nuw nsw i64 %indvars.iv198.i826.2, 1 ; 2 uses
  %exitcond202.not.i.2 = icmp eq i64 %indvars.iv.next199.i.2, %smax.i.2
  br i1 %exitcond202.not.i.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !90

._crit_edge.2:                                    ; preds = %.thread142.i.2, %.preheader164.i.2
  %i.vh = getelementptr inbounds nuw i8, ptr %i.h, i64 5024 ; 4 uses
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !125
  switch i32 %i.vi, label %.loopexit817 [
    i32 -1, label %validate_mapping_for_generation.exit
    i32 0, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %._crit_edge.2
  %.val120.i = load i8, ptr %i.z, align 2, !tbaa !124
  %.val120.fr.i = freeze i8 %.val120.i            ; 2 uses
  %i.vj = icmp ult i8 %.val120.fr.i, 63
  %i.vk = zext nneg i8 %.val120.fr.i to i64       ; 9 uses
  br i1 %i.vj, label %.preheader.split.preheader.i, label %.loopexit817

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.h, i64 5048
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !127
  %i.vn = lshr i64 %i.vm, %i.vk
  %i.vo = icmp ult i64 %i.vn, 65535
  br i1 %i.vo, label %bb.bv, label %.loopexit817

.preheader.split.1.i:                             ; preds = %.critedge.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.h, i64 5080
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !127
  %i.vr = lshr i64 %i.vq, %i.vk
  %i.vs = icmp ult i64 %i.vr, 65535
  br i1 %i.vs, label %bb.bt, label %.loopexit817

bb.bt:                                            ; preds = %.preheader.split.1.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.h, i64 5088
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !128
  %i.vv = lshr i64 %i.vu, %i.vk
  %i.vw = icmp ugt i64 %i.vv, 65534
  br i1 %i.vw, label %.loopexit817, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.bt
  %i.vx = getelementptr inbounds nuw i8, ptr %i.h, i64 5096
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !129
  %i.vz = lshr i64 %i.vy, %i.vk
  %i.wa = icmp ult i64 %i.vz, 65535
  br i1 %i.wa, label %.preheader.split.2.i, label %.loopexit817

.preheader.split.2.i:                             ; preds = %.critedge.1.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.h, i64 5112
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !127
  %i.wd = lshr i64 %i.wc, %i.vk
  %i.we = icmp ult i64 %i.wd, 65535
  br i1 %i.we, label %bb.bu, label %.loopexit817

bb.bu:                                            ; preds = %.preheader.split.2.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.h, i64 5120
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !128
  %i.wh = lshr i64 %i.wg, %i.vk
  %i.wi = icmp ugt i64 %i.wh, 65534
  br i1 %i.wi, label %.loopexit817, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %bb.bu
  %i.wj = getelementptr inbounds nuw i8, ptr %i.h, i64 5128
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !129
  %i.wl = lshr i64 %i.wk, %i.vk
  %i.wm = icmp ult i64 %i.wl, 65535
  br i1 %i.wm, label %validate_mapping_for_generation.exit, label %.loopexit817

bb.bv:                                            ; preds = %.preheader.split.preheader.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.h, i64 5056
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !128
  %i.wp = lshr i64 %i.wo, %i.vk
  %i.wq = icmp ugt i64 %i.wp, 65534
  br i1 %i.wq, label %.loopexit817, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bv
  %i.wr = getelementptr inbounds nuw i8, ptr %i.h, i64 5064
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !129
  %i.wt = lshr i64 %i.ws, %i.vk
  %i.wu = icmp ult i64 %i.wt, 65535
  br i1 %i.wu, label %.preheader.split.1.i, label %.loopexit817

.loopexit817:                                     ; preds = %.lr.ph.i, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.ac, %.preheader160.i, %validate_se_coef.exit122.i, %bb.y, %bb.ab, %.lr.ph.a, %.preheader158.lr.ph.i, %validate_se_coef.exit124.6.i, %validate_se_coef.exit124.5.i, %validate_se_coef.exit124.4.i, %validate_se_coef.exit124.3.i, %validate_se_coef.exit124.2.i, %validate_se_coef.exit124.1.i, %.preheader158.i.11362, %validate_se_coef.exit124.1.i.11363, %validate_se_coef.exit124.2.i.11364, %validate_se_coef.exit124.3.i.11365, %validate_se_coef.exit124.4.i.11366, %validate_se_coef.exit124.5.i.11367, %validate_se_coef.exit124.6.i.11368, %.preheader158.i.21372, %validate_se_coef.exit124.1.i.21373, %validate_se_coef.exit124.2.i.21374, %validate_se_coef.exit124.3.i.21375, %validate_se_coef.exit124.4.i.21376, %validate_se_coef.exit124.5.i.21377, %validate_se_coef.exit124.6.i.21378, %validate_se_coef.exit.i, %validate_se_coef.exit.i.11382, %validate_se_coef.exit.i.21386, %.lr.ph.i.1, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %.lr.ph.1, %bb.at, %6, %validate_se_coef.exit122.i.1, %bb.aw, %.preheader160.i.1, %.preheader158.lr.ph.i.1, %validate_se_coef.exit124.1.i.1, %validate_se_coef.exit124.2.i.1, %validate_se_coef.exit124.3.i.1, %validate_se_coef.exit124.4.i.1, %validate_se_coef.exit124.5.i.1, %validate_se_coef.exit124.6.i.1, %.preheader158.i.1.1, %validate_se_coef.exit124.1.i.1.1, %validate_se_coef.exit124.2.i.1.1, %validate_se_coef.exit124.3.i.1.1, %validate_se_coef.exit124.4.i.1.1, %validate_se_coef.exit124.5.i.1.1, %validate_se_coef.exit124.6.i.1.1, %.preheader158.i.1.2, %validate_se_coef.exit124.1.i.1.2, %validate_se_coef.exit124.2.i.1.2, %validate_se_coef.exit124.3.i.1.2, %validate_se_coef.exit124.4.i.1.2, %validate_se_coef.exit124.5.i.1.2, %validate_se_coef.exit124.6.i.1.2, %validate_se_coef.exit.i.1, %validate_se_coef.exit.i.1.1, %validate_se_coef.exit.i.1.2, %.lr.ph.i.2, %bb.ba, %bb.bc, %bb.be, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %.lr.ph.2, %bb.bn, %12, %validate_se_coef.exit122.i.2, %bb.bq, %.preheader160.i.2, %.preheader158.lr.ph.i.2, %validate_se_coef.exit124.1.i.2, %validate_se_coef.exit124.2.i.2, %validate_se_coef.exit124.3.i.2, %validate_se_coef.exit124.4.i.2, %validate_se_coef.exit124.5.i.2, %validate_se_coef.exit124.6.i.2, %.preheader158.i.2.1, %validate_se_coef.exit124.1.i.2.1, %validate_se_coef.exit124.2.i.2.1, %validate_se_coef.exit124.3.i.2.1, %validate_se_coef.exit124.4.i.2.1, %validate_se_coef.exit124.5.i.2.1, %validate_se_coef.exit124.6.i.2.1, %.preheader158.i.2.2, %validate_se_coef.exit124.1.i.2.2, %validate_se_coef.exit124.2.i.2.2, %validate_se_coef.exit124.3.i.2.2, %validate_se_coef.exit124.4.i.2.2, %validate_se_coef.exit124.5.i.2.2, %validate_se_coef.exit124.6.i.2.2, %validate_se_coef.exit.i.2, %validate_se_coef.exit.i.2.1, %validate_se_coef.exit.i.2.2, %.preheader168.i, %._crit_edge.a, %._crit_edge.1, %._crit_edge.2, %bb.i, %.preheader.i, %bb.j, %.preheader.split.preheader.i, %.critedge.2.i, %bb.bu, %.preheader.split.2.i, %.critedge.1.i, %bb.bt, %.preheader.split.1.i, %.critedge.i, %bb.bv
  %i.wv = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wv, i32 noundef 16, ptr noundef nonnull @.str.4) #13
  br label %bb.aaj

validate_mapping_for_generation.exit:             ; preds = %.critedge.2.i, %._crit_edge.2
  %i.ww = load i8, ptr %i.h, align 8, !tbaa !130  ; 19 uses
  %i.wx = zext i8 %i.ww to i32                    ; 2 uses
  %i.wy = icmp ugt i8 %i.ww, 15
  br i1 %i.wy, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %validate_mapping_for_generation.exit
  %i.wz = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wz, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.wx) #13
  br label %bb.aaj

bb.bx:                                            ; preds = %validate_mapping_for_generation.exit
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.xb = zext nneg i8 %i.ww to i64
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.xb ; 4 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !131 ; 2 uses
  %.not485 = icmp eq ptr %i.xd, null
  br i1 %.not485, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.xe = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef range(i64 196, 5145) 5144, i32 noundef 0, ptr null, ptr noundef null) #13 ; 3 uses
  store ptr %i.xe, ptr %i.xc, align 8, !tbaa !131
  %.not486 = icmp eq ptr %i.xe, null
  br i1 %.not486, label %bb.aaj, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.xf = phi ptr [ %i.xe, %bb.by ], [ %i.xd, %bb.bx ]
  %trunc = trunc nuw i32 %spec.select to i8
  switch i8 %trunc, label %bb.cc [
    i8 1, label %bb.ca
    i8 3, label %bb.cb
    i8 2, label %bb.aaj
  ]

bb.ca:                                            ; preds = %bb.bz
  %.not487 = icmp eq i8 %i.ww, 0
  br i1 %.not487, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5144) %i.xf, ptr noundef nonnull dereferenceable(5144) %i.h, i64 5144)
  %.not489 = icmp eq i32 %bcmp, 0
  %i.xg = zext i1 %.not489 to i32
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %.0465 = phi i32 [ 0, %bb.bz ], [ 0, %bb.ca ], [ %i.xg, %bb.cb ] ; 2 uses
  %i.xh = load i8, ptr %i.a, align 4, !tbaa !111
  %.not490 = icmp eq i8 %i.xh, 3
  br i1 %.not490, label %.loopexit816, label %.preheader815.preheader

.preheader815.preheader:                          ; preds = %bb.cc
  %.not520 = icmp eq i8 %i.ww, 0
  br i1 %.not520, label %.preheader815.2.thread1190, label %.preheader815.1

.preheader815.2.thread1190:                       ; preds = %.preheader815.preheader
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xi) #13
  br label %.preheader815.3.thread1193

.preheader815.1:                                  ; preds = %.preheader815.preheader
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xa) #13
  %.not520.1 = icmp eq i8 %i.ww, 1
  br i1 %.not520.1, label %.preheader815.3.thread1193, label %.preheader815.2

.preheader815.2:                                  ; preds = %.preheader815.1
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xj) #13
  %.not520.2 = icmp eq i8 %i.ww, 2
  br i1 %.not520.2, label %.preheader815.4.thread1196, label %.preheader815.3

.preheader815.3.thread1193:                       ; preds = %.preheader815.2.thread1190, %.preheader815.1
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xk) #13
  br label %.preheader815.4.thread1196

.preheader815.3:                                  ; preds = %.preheader815.2
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xl) #13
  %.not520.3 = icmp eq i8 %i.ww, 3
  br i1 %.not520.3, label %.preheader815.5.thread1199, label %.preheader815.4

.preheader815.4.thread1196:                       ; preds = %.preheader815.3.thread1193, %.preheader815.2
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xm) #13
  br label %.preheader815.5.thread1199

.preheader815.4:                                  ; preds = %.preheader815.3
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xn) #13
  %.not520.4 = icmp eq i8 %i.ww, 4
  br i1 %.not520.4, label %.preheader815.6.thread1202, label %.preheader815.5

.preheader815.5.thread1199:                       ; preds = %.preheader815.4.thread1196, %.preheader815.3
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xo) #13
  br label %.preheader815.6.thread1202

.preheader815.5:                                  ; preds = %.preheader815.4
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xp) #13
  %.not520.5 = icmp eq i8 %i.ww, 5
  br i1 %.not520.5, label %.preheader815.7.thread1205, label %.preheader815.6

.preheader815.6.thread1202:                       ; preds = %.preheader815.5.thread1199, %.preheader815.4
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xq) #13
  br label %.preheader815.7.thread1205

.preheader815.6:                                  ; preds = %.preheader815.5
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xr) #13
  %.not520.6 = icmp eq i8 %i.ww, 6
  br i1 %.not520.6, label %.preheader815.8.thread1208, label %.preheader815.7

.preheader815.7.thread1205:                       ; preds = %.preheader815.6.thread1202, %.preheader815.5
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xs) #13
  br label %.preheader815.8.thread1208

.preheader815.7:                                  ; preds = %.preheader815.6
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xt) #13
  %.not520.7 = icmp eq i8 %i.ww, 7
  br i1 %.not520.7, label %.preheader815.9.thread1211, label %.preheader815.8

.preheader815.8.thread1208:                       ; preds = %.preheader815.7.thread1205, %.preheader815.6
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xu) #13
  br label %.preheader815.9.thread1211

.preheader815.8:                                  ; preds = %.preheader815.7
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xv) #13
  %.not520.8 = icmp eq i8 %i.ww, 8
  br i1 %.not520.8, label %.preheader815.10.thread1214, label %.preheader815.9

.preheader815.9.thread1211:                       ; preds = %.preheader815.8.thread1208, %.preheader815.7
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xw) #13
  br label %.preheader815.10.thread1214

.preheader815.9:                                  ; preds = %.preheader815.8
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xx) #13
  %.not520.9 = icmp eq i8 %i.ww, 9
  br i1 %.not520.9, label %.preheader815.11.thread1217, label %.preheader815.10

.preheader815.10.thread1214:                      ; preds = %.preheader815.9.thread1211, %.preheader815.8
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xy) #13
  br label %.preheader815.11.thread1217

.preheader815.10:                                 ; preds = %.preheader815.9
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xz) #13
  %.not520.10 = icmp eq i8 %i.ww, 10
  br i1 %.not520.10, label %.preheader815.12.thread1220, label %.preheader815.11

.preheader815.11.thread1217:                      ; preds = %.preheader815.10.thread1214, %.preheader815.9
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ya) #13
  br label %.preheader815.12.thread1220

.preheader815.11:                                 ; preds = %.preheader815.10
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.yb) #13
  %.not520.11 = icmp eq i8 %i.ww, 11
  br i1 %.not520.11, label %.preheader815.13.thread1223, label %.preheader815.12

.preheader815.12.thread1220:                      ; preds = %.preheader815.11.thread1217, %.preheader815.10
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.yc) #13
  br label %.preheader815.13.thread1223

.preheader815.12:                                 ; preds = %.preheader815.11
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.yd) #13
  %.not520.12 = icmp eq i8 %i.ww, 12
  br i1 %.not520.12, label %.preheader815.14.thread1226, label %.preheader815.13

.preheader815.13.thread1223:                      ; preds = %.preheader815.12.thread1220, %.preheader815.11
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ye) #13
  br label %.preheader815.14.thread1226

.preheader815.13:                                 ; preds = %.preheader815.12
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.yf) #13
  %.not520.13 = icmp eq i8 %i.ww, 13
  br i1 %.not520.13, label %.preheader815.15.thread1229, label %.preheader815.14

.preheader815.14.thread1226:                      ; preds = %.preheader815.13.thread1223, %.preheader815.12
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.yg) #13
  br label %.preheader815.15.thread1229

end_hunk_0
