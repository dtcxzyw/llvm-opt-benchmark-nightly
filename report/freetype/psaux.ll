Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@t1_decoder_parse_metrics:bb.a
bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.1 = phi i32 [ %i.cg, %bb.y ], [ %i.cv, %bb.ac ] ; 3 uses
  %i.cw = icmp slt i32 %.1, 0
  br i1 %i.cw, label %.thread239, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i32, ptr %i.k, align 4, !tbaa !160
  %.not192 = icmp sge i32 %.1, %i.cx
  %i.cy = icmp sgt i64 %.0158.idx281, 2632
  %or.cond199 = select i1 %.not192, i1 true, i1 %i.cy
  br i1 %or.cond199, label %.thread239, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.t, ptr %.0158.ptr286, align 8, !tbaa !449
  %.0158.add187 = add nsw i64 %.0158.idx281, 24   ; 2 uses
  %.ptr189 = getelementptr inbounds i8, ptr %0, i64 %.0158.add187 ; 4 uses
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !161
  %i.da = zext nneg i32 %.1 to i64                ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !33 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.ptr189, i64 8 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !447
  %i.de = load ptr, ptr %i.m, align 8, !tbaa !454 ; 2 uses
  %.not193 = icmp eq ptr %i.de, null
  br i1 %.not193, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !24
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dh
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dj = load i32, ptr %i.n, align 8, !tbaa !162
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %spec.select198 = zext nneg i32 %narrow to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %spec.select198 ; 2 uses
  store ptr %i.dk, ptr %i.dd, align 8, !tbaa !447
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dn = phi ptr [ %i.dm, %bb.ah ], [ %i.di, %bb.ag ] ; 2 uses
  %i.do = phi ptr [ %i.dk, %bb.ah ], [ %i.dc, %bb.ag ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.ptr189, i64 16
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !448
  store ptr %i.do, ptr %.ptr189, align 8, !tbaa !449
  %.not194 = icmp eq ptr %i.do, null
  br i1 %.not194, label %.thread239, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %.ptr189, ptr %i.c, align 8, !tbaa !445
  br label %.thread232

bb.ak:                                            ; preds = %bb.w
  %.0158.add = add nsw i64 %.0158.idx281, -24     ; 2 uses
  %.ptr188 = getelementptr inbounds nuw i8, ptr %0, i64 %.0158.add ; 3 uses
  %i.dq = load ptr, ptr %.ptr188, align 8, !tbaa !449
  %i.dr = getelementptr inbounds nuw i8, ptr %.ptr188, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !448
  store ptr %.ptr188, ptr %i.c, align 8, !tbaa !445
  br label %.thread232

.thread232:                                       ; preds = %bb.aa, %bb.ak, %bb.aj, %bb.v
  %.0142.sink = phi ptr [ %i.ba, %bb.v ], [ %i.cq, %bb.aa ], [ %i.cc, %bb.aj ], [ %i.s, %bb.ak ]
  %.5163.idx = phi i64 [ %.0158.idx281, %bb.v ], [ %.0158.idx281, %bb.aa ], [ %.0158.add187, %bb.aj ], [ %.0158.add, %bb.ak ] ; 2 uses
  %.7 = phi ptr [ %.2154.ph.ph, %bb.v ], [ %i.v, %bb.aa ], [ %i.do, %bb.aj ], [ %i.dq, %bb.ak ] ; 2 uses
  %.5151 = phi ptr [ %.0146283, %bb.v ], [ %.0146283, %bb.aa ], [ %i.dn, %bb.aj ], [ %i.ds, %bb.ak ] ; 2 uses
  %.5 = phi i8 [ %.1144.ph.ph, %bb.v ], [ 0, %bb.aa ], [ 0, %bb.aj ], [ 0, %bb.ak ]
  store ptr %.0142.sink, ptr %i.b, align 8, !tbaa !444
  %.0158.ptr = getelementptr inbounds i8, ptr %0, i64 %.5163.idx
  %i.dt = icmp ult ptr %.7, %.5151
  br i1 %i.dt, label %bb.b, label %.thread239

.thread239.sink.split:                            ; preds = %bb.x, %bb.z
  %.sink = phi i64 [ 0, %bb.z ], [ %i.cb, %bb.x ]
  store i64 %.sink, ptr %i.r, align 8, !tbaa !455
  br label %.thread239

.thread239:                                       ; preds = %.thread211.jt20, %.thread211.jt22, %.thread211.jt24, %bb.q, %bb.s, %bb.d, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.e, %bb.l, %bb.g, %bb.i, %bb.u, %.thread232, %bb.ab, %bb.w, %bb.ai, %bb.ad, %bb.ae, %bb.a, %.thread239.sink.split, %bb.t, %bb.r, %.thread211.jt4, %.thread211.jt2
  %.4168 = phi i32 [ 160, %bb.r ], [ 161, %.thread211.jt4 ], [ 0, %.thread239.sink.split ], [ 160, %bb.t ], [ 161, %.thread211.jt2 ], [ 160, %bb.a ], [ 160, %bb.ae ], [ 161, %.thread211.jt22 ], [ 160, %bb.ai ], [ 160, %bb.w ], [ 160, %bb.ad ], [ 160, %bb.ab ], [ 160, %.thread232 ], [ 160, %bb.i ], [ 160, %bb.g ], [ 160, %bb.l ], [ 160, %bb.e ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.c ], [ 160, %bb.d ], [ 160, %bb.s ], [ 160, %bb.q ], [ 161, %.thread211.jt24 ], [ 160, %bb.u ], [ 161, %.thread211.jt20 ]
  ret i32 %.4168
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 165) i32 @cf2_decoder_parse_charstrings(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.CF2_BufferRec_, align 8     ; 8 uses
  %5 = alloca %struct.CF2_Matrix_, align 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.f = load i8, ptr %i.e, align 4, !tbaa !168   ; 2 uses
  %.not = icmp eq i8 %i.f, 0                      ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !169
  %.not72 = icmp eq ptr %i.h, null
  br i1 %.not72, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !464    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !465  ; 2 uses
  %.not73 = icmp eq ptr %i.l, null
  br i1 %.not73, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @cf2_free_instance, ptr %i.m, align 8, !tbaa !466
  %i.n = call ptr @ft_mem_alloc(ptr noundef %i.i, i64 noundef 656, ptr noundef nonnull %i.d) #19 ; 11 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !170
  store ptr %i.n, ptr %i.o, align 8, !tbaa !465
  %i.p = load i32, ptr %i.d, align 4, !tbaa !24
  %.not74 = icmp eq i32 %i.p, 0
  br i1 %.not74, label %bb.e, label %bb.cm

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.n, align 8, !tbaa !180
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4960
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  store ptr %i.t, ptr %i.u, align 8, !tbaa !197
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  store ptr %i.i, ptr %i.y, align 8, !tbaa !467
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  store ptr %i.w, ptr %i.z, align 8, !tbaa !468
  store ptr @cf2_builder_moveTo, ptr %i.v, align 8, !tbaa !469
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  store ptr @cf2_builder_lineTo, ptr %i.aa, align 8, !tbaa !470
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store ptr @cf2_builder_cubeTo, ptr %i.ab, align 8, !tbaa !471
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.g ]  ; 71 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 240 ; 3 uses
  store ptr %0, ptr %i.ac, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 176 ; 2 uses
  %i.ae = getelementptr i8, ptr %.0, i64 232      ; 5 uses
  store ptr %0, ptr %i.ae, align 8, !tbaa !472
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !148 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !478
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !199
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %4, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %1, ptr %i.ap, align 8, !tbaa !204
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.aq, align 8, !tbaa !205
  %.not76 = icmp eq ptr %1, null
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.as = select i1 %.not76, ptr null, ptr %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !206
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !207 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 304
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !480
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 305
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !481
  %.not.i = icmp ne i8 %i.az, 0                   ; 2 uses
  br i1 %.not.i, label %bb.i, label %cf2_getScaleAndHintFlag.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !42
  %.fr124 = freeze <2 x i64> %i.bd
  %i.be = trunc <2 x i64> %.fr124 to <2 x i32>
  %i.bf = add <2 x i32> %i.be, splat (i32 32)
  %i.bg = sdiv <2 x i32> %i.bf, splat (i32 64)
  br label %cf2_getScaleAndHintFlag.exit

cf2_getScaleAndHintFlag.exit:                     ; preds = %bb.h, %bb.i
  %i.bh = phi <2 x i32> [ %i.bg, %bb.i ], [ splat (i32 1024), %bb.h ] ; 3 uses
  %i.bi = extractelement <2 x i32> %i.bh, i64 0   ; 2 uses
  store i32 %i.bi, ptr %5, align 4, !tbaa !24
  %i.bj = extractelement <2 x i32> %i.bh, i64 1   ; 2 uses
  store i32 %i.bj, ptr %i.av, align 4, !tbaa !24
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %cf2_getScaleAndHintFlag.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 1200
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !482
  br label %bb.k

bb.k:                                             ; preds = %cf2_getScaleAndHintFlag.exit, %bb.j
  %.sink = phi i8 [ %i.bl, %bb.j ], [ 0, %cf2_getScaleAndHintFlag.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 13
  store i8 %.sink, ptr %i.bm, align 1, !tbaa !231
  %i.bn = getelementptr inbounds nuw i8, ptr %.0, i64 12 ; 2 uses
  store i8 %i.f, ptr %i.bn, align 4, !tbaa !232
  %i.bo = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %spec.store.select = zext i1 %.not.i to i32     ; 2 uses
  store i32 %spec.store.select, ptr %i.bo, align 8, !tbaa !483
  %.not79 = icmp eq i8 %i.bb, 0                   ; 2 uses
  br i1 %.not79, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not80 = icmp eq i8 %i.ao, 0
  br i1 %.not80, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp sgt i8 %i.ao, -1
  %i.bq = icmp ne i8 %i.ak, 0
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = or disjoint i32 %spec.store.select, 2
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !483
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 260 ; 3 uses
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 264
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %.0, i64 268
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 272
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 276
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 84
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 280
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !24
  %i.cm = getelementptr inbounds nuw i8, ptr %.0, i64 284
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 92
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %.0, i64 288
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !24
  %i.cq = getelementptr i8, ptr %i.ag, i64 136
  %.val.val = load i16, ptr %i.cq, align 8, !tbaa !484 ; 2 uses
  %i.cr = zext i16 %.val.val to i32               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0, i64 160 ; 2 uses
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !485
  br i1 %.not79, label %cf2_checkTransform.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = icmp slt <2 x i32> %i.bh, splat (i32 1)
  %6 = bitcast <2 x i1> %i.ct to i2
  %or.cond94.not = icmp eq i2 %6, 0
  br i1 %or.cond94.not, label %bb.q, label %cf2_setGlyphWidth.exit

bb.q:                                             ; preds = %bb.p
  %i.cu = icmp slt i16 %.val.val, 0
  br i1 %i.cu, label %cf2_setGlyphWidth.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = shl nuw nsw i32 %i.cr, 16
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = call i64 @FT_DivFix(i64 noundef 131072000, i64 noundef %i.cw) #19
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = icmp sgt i32 %i.bi, %i.cy
  %i.da = icmp samesign ugt i32 %i.bj, %i.cy
  %or.cond95 = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond95, label %cf2_setGlyphWidth.exit, label %.cf2_checkTransform.exit_crit_edge

.cf2_checkTransform.exit_crit_edge:               ; preds = %bb.r
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !198
  br label %cf2_checkTransform.exit

cf2_checkTransform.exit:                          ; preds = %.cf2_checkTransform.exit_crit_edge, %bb.o
  %i.db = phi ptr [ %.pre, %.cf2_checkTransform.exit_crit_edge ], [ %0, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %.0, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !486 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0, i64 168
  %i.df = load i32, ptr %i.de, align 8, !tbaa !487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !488
  %i.dg = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !489
  %i.dh = getelementptr i8, ptr %i.db, i64 1056   ; 3 uses
  %.val.i.i = load ptr, ptr %i.dh, align 8, !tbaa !169 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0, i64 248 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !490
  %.not.i.i = icmp eq ptr %i.dj, %.val.i.i
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %cf2_checkTransform.exit
  store ptr %.val.i.i, ptr %i.di, align 8, !tbaa !490
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %cf2_checkTransform.exit
  %.0105.i.i = phi i8 [ 1, %bb.s ], [ 0, %cf2_checkTransform.exit ] ; 3 uses
  %i.dk = load i8, ptr %i.bn, align 4, !tbaa !232
  %.not113.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not113.i.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr i8, ptr %i.db, i64 1048   ; 2 uses
  %.val123.i.i = load ptr, ptr %i.dl, align 8, !tbaa !181
  %i.dm = getelementptr inbounds nuw i8, ptr %.val123.i.i, i64 5008
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !491
  %.not114.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not114.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %.0, i64 648
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !197 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.db, i64 8
  %.val124.i.i = load ptr, ptr %i.dq, align 8, !tbaa !233 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val124.i.i, i64 896
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !492
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 136
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !494
  %i.dv = call i32 %i.du(ptr noundef %.val124.i.i, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null) #19, !inline_history !456 ; 2 uses
  store i32 %i.dv, ptr %i.dg, align 8, !tbaa !489
  %.not115.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not115.i.i, label %bb.w, label %cf2_font_setup.exit.thread.i

cf2_font_setup.exit.thread.i:                     ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %cf2_getGlyphOutline.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !235
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1048
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1032 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !495
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !24
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.ed = call zeroext i8 %i.dx(ptr noundef nonnull %i.dy, i32 noundef %i.ea, i32 noundef %i.eb, ptr noundef %i.ec) #19, !inline_history !457
  %.not116.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not116.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !496
  %i.eg = load ptr, ptr %i.dl, align 8, !tbaa !181
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !24
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.ej = call i32 %i.ef(ptr noundef %i.eg, ptr noundef nonnull %.val.i.i, i32 noundef %i.eh, ptr noundef %i.ei) #19, !inline_history !457 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i.i = phi i8 [ 1, %bb.x ], [ %.0105.i.i, %bb.w ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1056
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !497
  %i.em = getelementptr inbounds nuw i8, ptr %.0, i64 104
  store ptr %i.el, ptr %i.em, align 8, !tbaa !236
  %i.en = getelementptr inbounds nuw i8, ptr %.0, i64 97
  store i8 0, ptr %i.en, align 1, !tbaa !237
  %i.eo = load i32, ptr %i.dz, align 8, !tbaa !495
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 144
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !238
  %i.eq = load i32, ptr %i.a, align 4, !tbaa !24
  %i.er = getelementptr inbounds nuw i8, ptr %.0, i64 148
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !239
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.et = getelementptr inbounds nuw i8, ptr %.0, i64 152
  store ptr %i.es, ptr %i.et, align 8, !tbaa !240
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u, %bb.t
  %.3.i.i = phi i8 [ %.0105.i.i, %bb.t ], [ %.1.i.i, %bb.y ], [ %.0105.i.i, %bb.u ]
  %i.eu = getelementptr i8, ptr %i.db, i64 8
  %.val125.i.i = load ptr, ptr %i.eu, align 8, !tbaa !233
  %i.ev = getelementptr i8, ptr %.val125.i.i, i64 160
  %.val125.val.i.i = load ptr, ptr %i.ev, align 8, !tbaa !498
  %i.ew = getelementptr i8, ptr %.val125.val.i.i, i64 26
  %.val125.val.val.i.i = load i16, ptr %i.ew, align 2, !tbaa !499
  %i.ex = zext i16 %.val125.val.val.i.i to i32
  %i.ey = shl nuw i32 %i.ex, 16                   ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0, i64 92 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !500
  %.not117.i.i = icmp eq i32 %i.fa, %i.ey
  br i1 %.not117.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !500
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.4.i.i = phi i8 [ 1, %bb.aa ], [ %.3.i.i, %bb.z ]
  %i.fb = load i32, ptr %i.bo, align 8, !tbaa !483 ; 3 uses
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = and i8 %i.fc, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.0, i64 256
  store i8 %i.fd, ptr %i.fe, align 8, !tbaa !241
  %i.ff = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.fg = load i128, ptr %5, align 4
  %i.fh = load i128, ptr %i.ff, align 1
  %i.fi = icmp ne i128 %i.fg, %i.fh
  %i.fj = zext i1 %i.fi to i32
  %.not118.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not118.i.i, label %bb.ac, label %.thread146.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.fk = getelementptr inbounds nuw i8, ptr %.0, i64 258 ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !501
  %i.fm = zext i8 %i.fl to i32
  %i.fn = and i32 %i.fb, 2                        ; 2 uses
  %.not119.i.i = icmp eq i32 %i.fn, %i.fm
  br i1 %.not119.i.i, label %bb.ad, label %.thread.i.i

.thread146.i.i:                                   ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ff, ptr noundef nonnull readonly align 4 dereferenceable(24) %5, i64 16, i1 false), !tbaa.struct !502
  %i.fo = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store i32 0, ptr %i.fo, align 8, !tbaa !503
  %i.fp = getelementptr inbounds nuw i8, ptr %.0, i64 36
  store i32 0, ptr %i.fp, align 4, !tbaa !504
  %i.fq = getelementptr inbounds nuw i8, ptr %.0, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.fq, ptr noundef nonnull readonly align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !502
  %i.fr = getelementptr inbounds nuw i8, ptr %.0, i64 68
  store <4 x i32> <i32 65536, i32 0, i32 0, i32 65536>, ptr %i.fr, align 4, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %.0, i64 258 ; 3 uses
  %i.ft = load i8, ptr %i.fs, align 2, !tbaa !501
  %i.fu = zext i8 %i.ft to i32
  %i.fv = and i32 %i.fb, 2                        ; 2 uses
  %.not119148.i.i = icmp eq i32 %i.fv, %i.fu
  br i1 %.not119148.i.i, label %.thread150.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread146.i.i, %bb.ac
  %i.fw = phi i32 [ %i.fv, %.thread146.i.i ], [ %i.fn, %bb.ac ]
  %i.fx = phi ptr [ %i.fs, %.thread146.i.i ], [ %i.fk, %bb.ac ] ; 2 uses
  %.lobit.i.i = lshr exact i32 %i.fw, 1
  %i.fy = trunc nuw nsw i32 %.lobit.i.i to i8
  store i8 %i.fy, ptr %i.fx, align 2, !tbaa !501
  br label %.thread150.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not120.i.i = icmp eq i8 %.4.i.i, 0
  br i1 %.not120.i.i, label %cf2_font_setup.exit.i, label %.thread150.i.i

.thread150.i.i:                                   ; preds = %bb.ad, %.thread.i.i, %.thread146.i.i
  %i.fz = phi ptr [ %i.fx, %.thread.i.i ], [ %i.fk, %bb.ad ], [ %i.fs, %.thread146.i.i ] ; 3 uses
  %i.ga = load i32, ptr %i.cs, align 8, !tbaa !485 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  %spec.store.select.i.i = select i1 %i.gb, i32 1000, i32 %i.ga ; 2 uses
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.ey, i32 262144) ; 3 uses
  %i.gc = sdiv i32 65536000, %spec.store.select.i.i ; 5 uses
  %.val126.i.i = load ptr, ptr %i.dh, align 8, !tbaa !169
  %i.gd = getelementptr i8, ptr %.val126.i.i, i64 744
  %.val126.val.i.i = load i64, ptr %i.gd, align 8, !tbaa !505
end_hunk_0
