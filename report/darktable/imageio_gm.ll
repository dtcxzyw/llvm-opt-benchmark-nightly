Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_gm?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dt_imageio_open_gm:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.8, i64 noundef 3) #6
  %.not14.1.i = icmp eq i32 %i.e, 0
  br i1 %.not14.1.i, label %_supported_image.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.9, i64 noundef 3) #6
  %.not14.2.i = icmp eq i32 %i.f, 0
  br i1 %.not14.2.i, label %_supported_image.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.10, i64 noundef 3) #6
  %.not14.3.i = icmp eq i32 %i.g, 0
  br i1 %.not14.3.i, label %_supported_image.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.11, i64 noundef 3) #6
  %.not14.4.i = icmp eq i32 %i.h, 0
  br i1 %.not14.4.i, label %_supported_image.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.12, i64 noundef 3) #6
  %.not14.5.i = icmp eq i32 %i.i, 0
  br i1 %.not14.5.i, label %_supported_image.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, i64 noundef 3) #6
  %.not14.6.i = icmp eq i32 %i.j, 0
  br i1 %.not14.6.i, label %_supported_image.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.14, i64 noundef 3) #6
  %.not14.7.i = icmp eq i32 %i.k, 0
  br i1 %.not14.7.i, label %_supported_image.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.15, i64 noundef 3) #6
  %.not14.8.i = icmp eq i32 %i.l, 0
  br i1 %.not14.8.i, label %_supported_image.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.16, i64 noundef 3) #6
  %.not14.9.i = icmp eq i32 %i.m, 0
  br i1 %.not14.9.i, label %_supported_image.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.17, i64 noundef 3) #6
  %.not14.10.i = icmp eq i32 %i.n, 0
  br i1 %.not14.10.i, label %_supported_image.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.18, i64 noundef 3) #6
  %.not14.11.i = icmp eq i32 %i.o, 0
  br i1 %.not14.11.i, label %_supported_image.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.19, i64 noundef 4) #6
  %.not14.12.i = icmp eq i32 %i.p, 0
  br i1 %.not14.12.i, label %_supported_image.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.20, i64 noundef 3) #6
  %.not14.13.i = icmp eq i32 %i.q, 0
  br i1 %.not14.13.i, label %_supported_image.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.21, i64 noundef 3) #6
  %.not14.14.i = icmp eq i32 %i.r, 0
  br i1 %.not14.14.i, label %_supported_image.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.22, i64 noundef 3) #6
  %.not14.15.i = icmp eq i32 %i.s, 0
  br i1 %.not14.15.i, label %_supported_image.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.23, i64 noundef 3) #6
  %.not14.16.i = icmp eq i32 %i.t, 0
  br i1 %.not14.16.i, label %_supported_image.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.u = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.24, i64 noundef 4) #6
  %.not14.17.i = icmp eq i32 %i.u, 0
  br i1 %.not14.17.i, label %_supported_image.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.v = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.25, i64 noundef 3) #6
  %.not14.18.i = icmp eq i32 %i.v, 0
  br i1 %.not14.18.i, label %_supported_image.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.w = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.26, i64 noundef 3) #6
  %.not14.19.i = icmp eq i32 %i.w, 0
  br i1 %.not14.19.i, label %_supported_image.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.x = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.27, i64 noundef 3) #6
  %.not14.20.i = icmp eq i32 %i.x, 0
  br i1 %.not14.20.i, label %_supported_image.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.y = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.28, i64 noundef 3) #6
  %.not14.21.i = icmp eq i32 %i.y, 0
  br i1 %.not14.21.i, label %_supported_image.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.z = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.29, i64 noundef 3) #6
  %.not14.22.i = icmp eq i32 %i.z, 0
  br i1 %.not14.22.i, label %_supported_image.exit.thread, label %_supported_image.exit

_supported_image.exit:                            ; preds = %bb.x
  %i.aa = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.30, i64 noundef 4) #6
  %.not14.23.i.not = icmp eq i32 %i.aa, 0
  br i1 %.not14.23.i.not, label %_supported_image.exit.thread, label %_supported_image.exit.thread96

_supported_image.exit.thread:                     ; preds = %bb.t, %bb.m, %bb.r, %bb.l, %bb.u, %bb.k, %bb.p, %bb.j, %bb.v, %bb.i, %bb.s, %bb.h, %bb.w, %bb.g, %bb.o, %bb.f, %bb.x, %bb.e, %bb.q, %bb.d, %bb.c, %bb.b, %bb.n, %_supported_image.exit
  %i.ab = load i32, ptr %0, align 16, !tbaa !28
  %.not83 = icmp eq i32 %i.ab, 0
  br i1 %.not83, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_supported_image.exit.thread
  %i.ac = tail call i32 @dt_exif_read(ptr noundef nonnull %0, ptr noundef %1) #6 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_supported_image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @GetExceptionInfo(ptr noundef nonnull %3) #6
  %i.ad = call ptr @CloneImageInfo(ptr noundef null) #6 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2301
  %i.af = call i64 @g_strlcpy(ptr noundef nonnull %i.ae, ptr noundef %1, i64 noundef 2053) #6 ; 0 uses
  %i.ag = call ptr @ReadImage(ptr noundef %i.ad, ptr noundef nonnull %3) #6 ; 7 uses
  %i.ah = load i32, ptr %3, align 8, !tbaa !30
  %.not84 = icmp eq i32 %i.ah, 0
  br i1 %.not84, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @CatchException(ptr noundef nonnull %3) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not85 = icmp eq ptr %i.ag, null
  br i1 %.not85, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !72
  %i.aj = and i32 %i.ai, 262144
  %.not86 = icmp eq i32 %i.aj, 0
  br i1 %.not86, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1124
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.ak) #6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.al, align 8, !tbaa !73
  %i.ap = trunc <2 x i64> %i.ao to <2 x i32>
  store <2 x i32> %i.ap, ptr %i.am, align 4, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store i32 4, ptr %i.aq, align 16, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store i32 1, ptr %i.ar, align 4, !tbaa !76
  %i.as = call ptr @dt_mipmap_cache_alloc(ptr noundef %2, ptr noundef nonnull %0) #6 ; 4 uses
  %.not87 = icmp eq ptr %i.as, null
  br i1 %.not87, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !94
  %i.av = icmp eq i32 %i.au, 10
  %.str.3..str.4 = select i1 %i.av, ptr @.str.3, ptr @.str.4
  %i.aw = load i32, ptr %i.am, align 4, !tbaa !95
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load i32, ptr %i.an, align 8, !tbaa !96
  %i.az = sext i32 %i.ay to i64
  %i.ba = call i32 @DispatchImage(ptr noundef nonnull %i.ag, i64 noundef 0, i64 noundef 0, i64 noundef %i.ax, i64 noundef %i.az, ptr noundef nonnull %.str.3..str.4, i32 noundef 4, ptr noundef nonnull %i.as, ptr noundef nonnull %3) #6
  %i.bb = load i32, ptr %3, align 8, !tbaa !30
  %.not88 = icmp eq i32 %i.bb, 0
  br i1 %.not88, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @CatchException(ptr noundef nonnull %3) #6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not89 = icmp eq i32 %i.ba, 1
  br i1 %.not89, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !94
  %i.bd = icmp eq i32 %i.bc, 10
  br i1 %i.bd, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ai
  %i.be = load i32, ptr %i.am, align 4, !tbaa !95
  %i.bf = load i32, ptr %i.an, align 8, !tbaa !96
  %i.bg = shl i32 %i.be, 2
  %i.bh = mul i32 %i.bg, %i.bf                    ; 3 uses
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bj = call i64 @llvm.usub.sat.i64(i64 %i.bi, i64 4)
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bh, 16
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bl, 9223372036854775804     ; 3 uses
  %i.bm = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 4, i64 8, i64 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.as, <4 x i64> %vec.ind ; 4 uses
  %i.bn = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec = load <16 x float>, ptr %i.bn, align 4, !tbaa !97 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec109 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec110 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec111 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.bo = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %strided.vec111 ; 3 uses
  %i.bp = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %strided.vec
  %i.bq = fmul reassoc nsz arcp contract afn <4 x float> %i.bp, %i.bo
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.bq, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !97
  %wide.gep112 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 4
  %i.br = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %strided.vec109
  %i.bs = fmul reassoc nsz arcp contract afn <4 x float> %i.br, %i.bo
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.bs, <4 x ptr> align 4 %wide.gep112, <4 x i1> splat (i1 true)), !tbaa !97
  %wide.gep113 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %i.bt = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %strided.vec110
  %i.bu = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, %i.bo
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.bu, <4 x ptr> align 4 %wide.gep113, <4 x i1> splat (i1 true)), !tbaa !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %.lr.ph.preheader, %middle.block
  %.074102.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.lr.ph
  %.074102 = phi i64 [ %i.cj, %.lr.ph ], [ %.074102.ph, %.lr.ph.preheader114 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.074102 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !97
  %i.bz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.by ; 2 uses
  %i.ca = load <2 x float>, ptr %i.bw, align 4, !tbaa !97
  %i.cb = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ca
  %i.cc = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, %i.cd
  store <2 x float> %i.ce, ptr %i.bw, align 4, !tbaa !97
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !97
  %i.ch = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cg
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.bz
  store float %i.ci, ptr %i.cf, align 4, !tbaa !97
  %i.cj = add nuw i64 %.074102, 4                 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.bi
  br i1 %i.ck, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.ai
  %i.cl = call ptr @GetImageProfile(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not90 = icmp eq ptr %i.cl, null
  br i1 %.not90, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !73
  %i.cn = call noalias ptr @g_try_malloc0(i64 noundef %i.cm) #7 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !100
  %.not91 = icmp eq ptr %i.cn, null
  br i1 %.not91, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !73  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr nonnull align 1 %i.cl, i64 %i.cp, i1 false)
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store i32 %i.cq, ptr %i.cr, align 16, !tbaa !101
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %bb.ak, %bb.aj
  call void @DestroyImage(ptr noundef nonnull %i.ag) #6
  call void @DestroyImageInfo(ptr noundef nonnull %i.ad) #6
  call void @DestroyExceptionInfo(ptr noundef nonnull %3) #6
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 2, ptr %i.cs, align 16, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i32 0, ptr %i.ct, align 8, !tbaa !103
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !104
  %i.cw = and i32 %i.cv, -131297
  %i.cx = or disjoint i32 %i.cw, 32
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !104
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 8, ptr %i.cy, align 8, !tbaa !105
  br label %bb.ap

bb.am:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1124
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, ptr noundef nonnull %i.cz) #6
  br label %bb.ao

bb.an:                                            ; preds = %bb.ah, %bb.ae
  %.str.5.sink = phi ptr [ @.str.2, %bb.ae ], [ @.str.5, %bb.ah ]
  %.073.ph = phi i32 [ 8, %bb.ae ], [ 2, %bb.ah ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1124
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull %.str.5.sink, ptr noundef nonnull %i.da) #6
  call void @DestroyImage(ptr noundef nonnull %i.ag) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.073101 = phi i32 [ %.073.ph, %bb.an ], [ 1, %bb.am ]
  call void @DestroyImageInfo(ptr noundef nonnull %i.ad) #6
  call void @DestroyExceptionInfo(ptr noundef nonnull %3) #6
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.0 = phi i32 [ %.073101, %bb.ao ], [ 0, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %_supported_image.exit.thread96

_supported_image.exit.thread96:                   ; preds = %bb.a, %_supported_image.exit, %bb.ap
  %.1 = phi i32 [ %.0, %bb.ap ], [ 2, %_supported_image.exit ], [ 2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dt_exif_read(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #2

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

declare ptr @dt_mipmap_cache_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DispatchImage(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @GetImageProfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @DestroyImage(ptr noundef) local_unnamed_addr #2

declare void @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

declare void @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @g_strrstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_ascii_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
end_hunk_0
