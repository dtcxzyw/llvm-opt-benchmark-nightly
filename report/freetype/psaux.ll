Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@t1_decoder_parse_metrics:bb.a
  %i.cf = trunc i64 %i.ce to i16
  %i.cg = sext i16 %i.cf to i32                   ; 2 uses
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !453 ; 2 uses
  %.not190 = icmp eq ptr %i.ch, null
  br i1 %.not190, label %bb.ad, label %bb.ab

bb.z:                                             ; preds = %.thread211.jt2
  %i.ci = getelementptr inbounds i8, ptr %i.s, i64 -16
  store i32 1, ptr %i.d, align 8, !tbaa !92
  %i.cj = load i64, ptr %i.o, align 8, !tbaa !450
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !42
  %i.cl = add i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.o, align 8, !tbaa !450
  %i.cm = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !42
  store i64 %i.cn, ptr %i.q, align 8, !tbaa !452
  br label %.thread239.sink.split

bb.aa:                                            ; preds = %.thread211.jt20
  %i.co = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !42
  %i.cq = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !42
  %i.cs = tail call i64 @FT_DivFix(i64 noundef %i.cp, i64 noundef %i.cr) #19
  store i64 %i.cs, ptr %i.co, align 8, !tbaa !42
  br label %.thread232

bb.ab:                                            ; preds = %bb.y
  %i.ct = tail call ptr @ft_hash_num_lookup(i32 noundef %i.cg, ptr noundef nonnull %i.ch) #19 ; 2 uses
  %.not191 = icmp eq ptr %i.ct, null
  br i1 %.not191, label %.thread239, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !42
  %i.cv = trunc i64 %i.cu to i32
  br label %bb.ad

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
  %i.be = trunc <2 x i64> %i.bd to <2 x i32>
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
  %i.ct = icmp slt <2 x i32> %i.bh, splat (i32 1) ; 2 uses
  %i.cu = extractelement <2 x i1> %i.ct, i64 0
  %i.cv = extractelement <2 x i1> %i.ct, i64 1
  %or.cond94 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond94, label %cf2_setGlyphWidth.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = icmp slt i16 %.val.val, 0
  br i1 %i.cw, label %cf2_setGlyphWidth.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = shl nuw nsw i32 %i.cr, 16
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = call i64 @FT_DivFix(i64 noundef 131072000, i64 noundef %i.cy) #19
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %i.db = icmp sgt i32 %i.bi, %i.da
  %i.dc = icmp samesign ugt i32 %i.bj, %i.da
  %or.cond95 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond95, label %cf2_setGlyphWidth.exit, label %.cf2_checkTransform.exit_crit_edge

.cf2_checkTransform.exit_crit_edge:               ; preds = %bb.r
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !198
  br label %cf2_checkTransform.exit

cf2_checkTransform.exit:                          ; preds = %.cf2_checkTransform.exit_crit_edge, %bb.o
  %i.dd = phi ptr [ %.pre, %.cf2_checkTransform.exit_crit_edge ], [ %0, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %.0, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.df = load i32, ptr %i.de, align 4, !tbaa !486 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0, i64 168
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !488
  %i.di = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  store i32 0, ptr %i.di, align 8, !tbaa !489
  %i.dj = getelementptr i8, ptr %i.dd, i64 1056   ; 3 uses
  %.val.i.i = load ptr, ptr %i.dj, align 8, !tbaa !169 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0, i64 248 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !490
  %.not.i.i = icmp eq ptr %i.dl, %.val.i.i
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %cf2_checkTransform.exit
  store ptr %.val.i.i, ptr %i.dk, align 8, !tbaa !490
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %cf2_checkTransform.exit
  %.0105.i.i = phi i8 [ 1, %bb.s ], [ 0, %cf2_checkTransform.exit ] ; 3 uses
  %i.dm = load i8, ptr %i.bn, align 4, !tbaa !232
  %.not113.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not113.i.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.dn = getelementptr i8, ptr %i.dd, i64 1048   ; 2 uses
  %.val123.i.i = load ptr, ptr %i.dn, align 8, !tbaa !181
  %i.do = getelementptr inbounds nuw i8, ptr %.val123.i.i, i64 5008
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !491
  %.not114.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not114.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %.0, i64 648
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !197 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dd, i64 8
  %.val124.i.i = load ptr, ptr %i.ds, align 8, !tbaa !233 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val124.i.i, i64 896
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !492
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 136
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !494
  %i.dx = call i32 %i.dw(ptr noundef %.val124.i.i, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null) #19, !inline_history !456 ; 2 uses
  store i32 %i.dx, ptr %i.di, align 8, !tbaa !489
  %.not115.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not115.i.i, label %bb.w, label %cf2_font_setup.exit.thread.i

cf2_font_setup.exit.thread.i:                     ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %cf2_getGlyphOutline.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !235
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1048
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1032 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !495
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !24
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.ef = call zeroext i8 %i.dz(ptr noundef nonnull %i.ea, i32 noundef %i.ec, i32 noundef %i.ed, ptr noundef %i.ee) #19, !inline_history !457
  %.not116.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not116.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !496
  %i.ei = load ptr, ptr %i.dn, align 8, !tbaa !181
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !24
  %i.ek = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.el = call i32 %i.eh(ptr noundef %i.ei, ptr noundef nonnull %.val.i.i, i32 noundef %i.ej, ptr noundef %i.ek) #19, !inline_history !457 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i.i = phi i8 [ 1, %bb.x ], [ %.0105.i.i, %bb.w ]
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1056
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !497
  %i.eo = getelementptr inbounds nuw i8, ptr %.0, i64 104
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !236
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 97
  store i8 0, ptr %i.ep, align 1, !tbaa !237
  %i.eq = load i32, ptr %i.eb, align 8, !tbaa !495
  %i.er = getelementptr inbounds nuw i8, ptr %.0, i64 144
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !238
  %i.es = load i32, ptr %i.a, align 4, !tbaa !24
  %i.et = getelementptr inbounds nuw i8, ptr %.0, i64 148
  store i32 %i.es, ptr %i.et, align 4, !tbaa !239
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.ev = getelementptr inbounds nuw i8, ptr %.0, i64 152
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !240
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u, %bb.t
  %.3.i.i = phi i8 [ %.0105.i.i, %bb.t ], [ %.1.i.i, %bb.y ], [ %.0105.i.i, %bb.u ]
  %i.ew = getelementptr i8, ptr %i.dd, i64 8
  %.val125.i.i = load ptr, ptr %i.ew, align 8, !tbaa !233
  %i.ex = getelementptr i8, ptr %.val125.i.i, i64 160
  %.val125.val.i.i = load ptr, ptr %i.ex, align 8, !tbaa !498
  %i.ey = getelementptr i8, ptr %.val125.val.i.i, i64 26
  %.val125.val.val.i.i = load i16, ptr %i.ey, align 2, !tbaa !499
  %i.ez = zext i16 %.val125.val.val.i.i to i32
  %i.fa = shl nuw i32 %i.ez, 16                   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0, i64 92 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !500
  %.not117.i.i = icmp eq i32 %i.fc, %i.fa
  br i1 %.not117.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !500
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.4.i.i = phi i8 [ 1, %bb.aa ], [ %.3.i.i, %bb.z ]
  %i.fd = load i32, ptr %i.bo, align 8, !tbaa !483 ; 3 uses
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = and i8 %i.fe, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.0, i64 256
  store i8 %i.ff, ptr %i.fg, align 8, !tbaa !241
  %i.fh = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.fi = load i128, ptr %5, align 4
  %i.fj = load i128, ptr %i.fh, align 1
  %i.fk = icmp ne i128 %i.fi, %i.fj
  %i.fl = zext i1 %i.fk to i32
  %.not118.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not118.i.i, label %bb.ac, label %.thread146.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %.0, i64 258 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !501
  %i.fo = zext i8 %i.fn to i32
  %i.fp = and i32 %i.fd, 2                        ; 2 uses
  %.not119.i.i = icmp eq i32 %i.fp, %i.fo
  br i1 %.not119.i.i, label %bb.ad, label %.thread.i.i

.thread146.i.i:                                   ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.fh, ptr noundef nonnull readonly align 4 dereferenceable(24) %5, i64 16, i1 false), !tbaa.struct !502
  %i.fq = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store i32 0, ptr %i.fq, align 8, !tbaa !503
  %i.fr = getelementptr inbounds nuw i8, ptr %.0, i64 36
  store i32 0, ptr %i.fr, align 4, !tbaa !504
  %i.fs = getelementptr inbounds nuw i8, ptr %.0, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.fs, ptr noundef nonnull readonly align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !502
  %i.ft = getelementptr inbounds nuw i8, ptr %.0, i64 68
  store <4 x i32> <i32 65536, i32 0, i32 0, i32 65536>, ptr %i.ft, align 4, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %.0, i64 258 ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !501
  %i.fw = zext i8 %i.fv to i32
  %i.fx = and i32 %i.fd, 2                        ; 2 uses
  %.not119148.i.i = icmp eq i32 %i.fx, %i.fw
  br i1 %.not119148.i.i, label %.thread150.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread146.i.i, %bb.ac
  %i.fy = phi i32 [ %i.fx, %.thread146.i.i ], [ %i.fp, %bb.ac ]
  %i.fz = phi ptr [ %i.fu, %.thread146.i.i ], [ %i.fm, %bb.ac ] ; 2 uses
  %.lobit.i.i = lshr exact i32 %i.fy, 1
  %i.ga = trunc nuw nsw i32 %.lobit.i.i to i8
  store i8 %i.ga, ptr %i.fz, align 2, !tbaa !501
  br label %.thread150.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not120.i.i = icmp eq i8 %.4.i.i, 0
end_hunk_0
begin_hunk_1_@cf2_decoder_parse_charstrings:bb.a
  store i32 %i.mf, ptr %i.mh, align 4, !tbaa !525
  %i.mi = add i32 %i.lq, 1                        ; 2 uses
  store i32 %i.mi, ptr %i.kx, align 4, !tbaa !247
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.peel.next.i.i.i
  %i.mj = phi i32 [ %i.lq, %.peel.next.i.i.i ], [ %i.mi, %bb.az ]
  %.2193.i.i.i = phi i32 [ %.0191233.i.i.i, %.peel.next.i.i.i ], [ %spec.select.i.i.i, %bb.az ] ; 2 uses
  %i.mk = add nuw nsw i64 %.0187234.i.i.i, 2      ; 2 uses
  %i.ml = icmp samesign ult i64 %i.mk, %i.ip
  br i1 %i.ml, label %.peel.next.i.i.i, label %.preheader232.i.i.i, !llvm.loop !458

bb.bb:                                            ; preds = %bb.bd, %.lr.ph237.i.i.i
  %i.mm = phi i32 [ %.promoted.i.i.i, %.lr.ph237.i.i.i ], [ %i.nb, %bb.bd ] ; 3 uses
  %.1188236.i.i.i = phi i64 [ 0, %.lr.ph237.i.i.i ], [ %i.nc, %bb.bd ] ; 2 uses
  %.3194235.i.i.i = phi i32 [ %.0191.lcssa.i.i.i, %.lr.ph237.i.i.i ], [ %.5.i.i.i, %bb.bd ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.1188236.i.i.i ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !42
  %i.mp = trunc i64 %i.mo to i32                  ; 2 uses
  %i.mq = zext i32 %i.mm to i64
  %i.mr = getelementptr inbounds nuw [20 x i8], ptr %i.lo, i64 %i.mq ; 4 uses
  store i32 %i.mp, ptr %i.mr, align 4, !tbaa !249
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !42
  %i.mu = trunc i64 %i.mt to i32                  ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !250
  %i.mw = sub i32 %i.mu, %i.mp                    ; 2 uses
  %i.mx = icmp slt i32 %i.mw, 0
  br i1 %i.mx, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %spec.select211.i.i.i = call i32 @llvm.smax.i32(i32 %i.mw, i32 %.3194235.i.i.i)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store i8 1, ptr %i.my, align 4, !tbaa !251
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i32 %i.mu, ptr %i.mz, align 4, !tbaa !525
  %i.na = add i32 %i.mm, 1                        ; 2 uses
  store i32 %i.na, ptr %i.lp, align 4, !tbaa !247
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.nb = phi i32 [ %i.mm, %bb.bb ], [ %i.na, %bb.bc ]
  %.5.i.i.i = phi i32 [ %.3194235.i.i.i, %bb.bb ], [ %spec.select211.i.i.i, %bb.bc ] ; 2 uses
  %i.nc = add nuw nsw i64 %.1188236.i.i.i, 2      ; 2 uses
  %i.nd = icmp samesign ult i64 %i.nc, %i.it
  br i1 %i.nd, label %bb.bb, label %._crit_edge.i.i.i, !llvm.loop !459

._crit_edge.i.i.i:                                ; preds = %bb.bd, %.preheader232.i.i.i
  %.3194.lcssa.i.i.i = phi i32 [ %.0191.lcssa.i.i.i, %.preheader232.i.i.i ], [ %.5.i.i.i, %bb.bd ] ; 2 uses
  %i.ne = load i32, ptr %i.hw, align 8, !tbaa !509
  %i.nf = sext i32 %i.ne to i64
  %i.ng = call i64 @FT_DivFix(i64 noundef 65536, i64 noundef %i.nf) #19
  %i.nh = trunc i64 %i.ng to i32                  ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.0, i64 316 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !247 ; 2 uses
  %i.nk = zext i32 %i.nj to i64
  %.not259.i.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not259.i.i.i, label %._crit_edge253.i.i.i, label %.lr.ph252.i.i.i

.lr.ph252.i.i.i:                                  ; preds = %._crit_edge.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.0, i64 408
  %.not260.i.i.i = icmp eq i8 %i.ja, 0
  %i.nm = icmp ugt i8 %i.iw, 1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ii, i64 528
  %i.no = icmp ugt i8 %i.iw, 2
  br label %bb.be

bb.be:                                            ; preds = %.loopexit230.i.i.i, %.lr.ph252.i.i.i
  %.2189250.i.i.i = phi i64 [ 0, %.lr.ph252.i.i.i ], [ %i.oy, %.loopexit230.i.i.i ] ; 2 uses
  %i.np = getelementptr inbounds nuw [20 x i8], ptr %i.nl, i64 %.2189250.i.i.i ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 4 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !525 ; 5 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nt = load i8, ptr %i.ns, align 4, !tbaa !251
  %.not209.i.i.i = icmp eq i8 %i.nt, 0
  br i1 %.not209.i.i.i, label %.preheader.i.i.i, label %.preheader231.i.i.i

.preheader231.i.i.i:                              ; preds = %bb.be
  br i1 %.not260.i.i.i, label %._crit_edge242.i.i.i, label %.lr.ph241.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.be
  br i1 %i.no, label %.lr.ph248.i.i.i, label %.loopexit230.i.i.i

.lr.ph248.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.nu = load i32, ptr %i.hp, align 8, !tbaa !243
  %i.nv = shl nsw i32 %i.nu, 1
  br label %bb.bj

.lr.ph241.i.i.i:                                  ; preds = %.preheader231.i.i.i, %bb.bg
  %.0240.i.i.i = phi i32 [ %.1.i.i.i, %bb.bg ], [ 2147483647, %.preheader231.i.i.i ] ; 2 uses
  %.0185239.i.i.i = phi i64 [ %i.of, %bb.bg ], [ 0, %.preheader231.i.i.i ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.0185239.i.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 640
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !42
  %i.nz = trunc i64 %i.ny to i32                  ; 3 uses
  %i.oa = sub i32 %i.nr, %i.nz
  %i.ob = call i32 @llvm.abs.i32(i32 %i.oa, i1 false) ; 3 uses
  %i.oc = icmp slt i32 %i.ob, %.0240.i.i.i
  %i.od = icmp slt i32 %i.ob, %i.nh
  %or.cond.i.i.i = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %or.cond.i.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph241.i.i.i
  store i32 %i.nz, ptr %i.nq, align 4, !tbaa !525
  %i.oe = icmp eq i32 %i.nr, %i.nz
  br i1 %i.oe, label %._crit_edge242.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph241.i.i.i
  %.1.i.i.i = phi i32 [ %i.ob, %bb.bf ], [ %.0240.i.i.i, %.lr.ph241.i.i.i ] ; 2 uses
  %i.of = add nuw nsw i64 %.0185239.i.i.i, 2      ; 2 uses
  %i.og = icmp samesign ult i64 %i.of, %i.jb
  br i1 %i.og, label %.lr.ph241.i.i.i, label %._crit_edge242.i.i.i, !llvm.loop !460

._crit_edge242.i.i.i:                             ; preds = %bb.bg, %bb.bf, %.preheader231.i.i.i
  %.2.i.i.i = phi i32 [ 2147483647, %.preheader231.i.i.i ], [ %.1.i.i.i, %bb.bg ], [ 0, %bb.bf ]
  br i1 %i.nm, label %bb.bh, label %.loopexit230.i.i.i

bb.bh:                                            ; preds = %._crit_edge242.i.i.i
  %i.oh = load i64, ptr %i.nn, align 8, !tbaa !42
  %i.oi = trunc i64 %i.oh to i32                  ; 2 uses
  %i.oj = sub i32 %i.nr, %i.oi
  %i.ok = call i32 @llvm.abs.i32(i32 %i.oj, i1 false) ; 2 uses
  %i.ol = icmp slt i32 %i.ok, %.2.i.i.i
  %i.om = icmp slt i32 %i.ok, %i.nh
  %or.cond212.i.i.i = select i1 %i.ol, i1 %i.om, i1 false
  br i1 %or.cond212.i.i.i, label %bb.bi, label %.loopexit230.i.i.i

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.oi, ptr %i.nq, align 4, !tbaa !525
  br label %.loopexit230.i.i.i

bb.bj:                                            ; preds = %bb.bl, %.lr.ph248.i.i.i
  %.3247.i.i.i = phi i32 [ 2147483647, %.lr.ph248.i.i.i ], [ %.4.i.i.i, %bb.bl ] ; 2 uses
  %.1186246.i.i.i = phi i64 [ 2, %.lr.ph248.i.i.i ], [ %i.ow, %bb.bl ] ; 2 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.1186246.i.i.i
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !42
  %i.op = trunc i64 %i.oo to i32
  %i.oq = add nsw i32 %i.nv, %i.op                ; 3 uses
  %i.or = sub i32 %i.nr, %i.oq
  %i.os = call i32 @llvm.abs.i32(i32 %i.or, i1 false) ; 3 uses
  %i.ot = icmp slt i32 %i.os, %.3247.i.i.i
  %i.ou = icmp slt i32 %i.os, %i.nh
  %or.cond213.i.i.i = select i1 %i.ot, i1 %i.ou, i1 false
  br i1 %or.cond213.i.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.oq, ptr %i.nq, align 4, !tbaa !525
  %i.ov = icmp eq i32 %i.nr, %i.oq
  br i1 %i.ov, label %.loopexit230.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.4.i.i.i = phi i32 [ %i.os, %bb.bk ], [ %.3247.i.i.i, %bb.bj ]
  %i.ow = add nuw nsw i64 %.1186246.i.i.i, 2      ; 2 uses
  %i.ox = icmp samesign ult i64 %i.ow, %i.ix
  br i1 %i.ox, label %bb.bj, label %.loopexit230.i.i.i, !llvm.loop !461

.loopexit230.i.i.i:                               ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %._crit_edge242.i.i.i, %.preheader.i.i.i
  %i.oy = add nuw nsw i64 %.2189250.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.oy, %i.nk
  br i1 %exitcond.not.i.i.i, label %._crit_edge253.i.i.i, label %bb.be, !llvm.loop !462

._crit_edge253.i.i.i:                             ; preds = %.loopexit230.i.i.i, %._crit_edge.i.i.i
  %i.oz = icmp sgt i32 %.3194.lcssa.i.i.i, 0
  %.pre269.i.i.i = load i32, ptr %i.ia, align 4, !tbaa !527 ; 2 uses
  br i1 %i.oz, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %._crit_edge253.i.i.i
  %i.pa = sext i32 %.pre269.i.i.i to i64
  %i.pb = zext nneg i32 %.3194.lcssa.i.i.i to i64 ; 2 uses
  %i.pc = call i64 @FT_DivFix(i64 noundef 65536, i64 noundef %i.pb) #19
  %i.pd = icmp slt i64 %i.pc, %i.pa
  br i1 %i.pd, label %bb.bn, label %._crit_edge268.i.i.i

._crit_edge268.i.i.i:                             ; preds = %bb.bm
  %.pre.i.i.i = load i32, ptr %i.ia, align 4, !tbaa !527
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.pe = call i64 @FT_DivFix(i64 noundef 65536, i64 noundef %i.pb) #19
  %i.pf = trunc i64 %i.pe to i32                  ; 2 uses
  store i32 %i.pf, ptr %i.ia, align 4, !tbaa !527
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge268.i.i.i, %._crit_edge253.i.i.i
  %i.pg = phi i32 [ %.pre.i.i.i, %._crit_edge268.i.i.i ], [ %i.pf, %bb.bn ], [ %.pre269.i.i.i, %._crit_edge253.i.i.i ] ; 2 uses
  %i.ph = load i32, ptr %i.hw, align 8, !tbaa !509 ; 2 uses
  %i.pi = icmp slt i32 %i.ph, %i.pg
  br i1 %i.pi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pj = getelementptr inbounds nuw i8, ptr %.0, i64 320
  store i8 1, ptr %i.pj, align 8, !tbaa !252
  %i.pk = sext i32 %i.ph to i64
  %i.pl = sext i32 %i.pg to i64
  %i.pm = call i64 @FT_MulDiv(i64 noundef 39322, i64 noundef %i.pk, i64 noundef %i.pl) #19
  %i.pn = trunc i64 %i.pm to i32
  %i.po = sub i32 39322, %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %.0, i64 336
  %spec.store.select.i.i.i = call i32 @llvm.smin.i32(i32 %i.po, i32 32767)
  store i32 %spec.store.select.i.i.i, ptr %i.pp, align 8, !tbaa !528
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.pq = load i8, ptr %i.gb, align 2, !tbaa !501
  %.not.i.i.i = icmp eq i8 %i.pq, 0
  br i1 %.not.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pr = getelementptr inbounds nuw i8, ptr %.0, i64 336
  store i32 0, ptr %i.pr, align 8, !tbaa !528
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ps = load i32, ptr %i.ni, align 4, !tbaa !247 ; 2 uses
  %i.pt = zext i32 %i.ps to i64
  %.not261.i.i.i = icmp eq i32 %i.ps, 0
  br i1 %.not261.i.i.i, label %cf2_font_setup.exit.i, label %.lr.ph256.i.i.i

.lr.ph256.i.i.i:                                  ; preds = %bb.bs
  %i.pu = getelementptr inbounds nuw i8, ptr %.0, i64 408
  %i.pv = getelementptr inbounds nuw i8, ptr %.0, i64 336
  %i.pw = load i32, ptr %i.hw, align 8, !tbaa !509
  %i.px = sext i32 %i.pw to i64
  %i.py = load i32, ptr %i.pv, align 8, !tbaa !528 ; 2 uses
  %i.pz = add i32 %i.py, 32768
  %invariant.op = sub i32 32768, %i.py
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph256.i.i.i
  %.3190254.i.i.i = phi i64 [ 0, %.lr.ph256.i.i.i ], [ %i.qo, %bb.bt ] ; 2 uses
  %i.qa = getelementptr inbounds nuw [20 x i8], ptr %i.pu, i64 %.3190254.i.i.i ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = load i8, ptr %i.qb, align 4, !tbaa !251
  %.not208.i.i.i = icmp eq i8 %i.qc, 0
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !525
  %i.qf = sext i32 %i.qe to i64
  %i.qg = mul nsw i64 %i.qf, %i.px                ; 2 uses
  %i.qh = ashr i64 %i.qg, 63
  %i.qi = add nsw i64 %i.qg, 32768
  %i.qj = add nsw i64 %i.qi, %i.qh
  %i.qk = lshr i64 %i.qj, 16
  %i.ql = trunc i64 %i.qk to i32                  ; 2 uses
  %i.qm = add i32 %i.pz, %i.ql
  %.reass.i.reass.i.reass.reass = add i32 %i.ql, %invariant.op
  %.sink267.in.i.i.i = select i1 %.not208.i.i.i, i32 %i.qm, i32 %.reass.i.reass.i.reass.reass
  %.sink267.i.i.i = and i32 %.sink267.in.i.i.i, -65536
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  store i32 %.sink267.i.i.i, ptr %i.qn, align 4, !tbaa !253
  %i.qo = add nuw nsw i64 %.3190254.i.i.i, 1      ; 2 uses
  %exitcond263.not.i.i.i = icmp eq i64 %i.qo, %i.pt
  br i1 %exitcond263.not.i.i.i, label %cf2_font_setup.exit.i, label %bb.bt, !llvm.loop !463

cf2_font_setup.exit.i:                            ; preds = %bb.bt, %bb.bs, %bb.av, %bb.ad
  %.pr.i = load i32, ptr %i.di, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i85 = icmp eq i32 %.pr.i, 0
  br i1 %.not.i85, label %.peel.begin.i, label %cf2_getGlyphOutline.exit.thread

.peel.begin.i:                                    ; preds = %cf2_font_setup.exit.i
  %i.qp = getelementptr inbounds nuw i8, ptr %.0, i64 308 ; 2 uses
  store i8 0, ptr %i.qp, align 4, !tbaa !245
  %i.qq = getelementptr inbounds nuw i8, ptr %.0, i64 257
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !244
  %i.qs = getelementptr inbounds nuw i8, ptr %.0, i64 208 ; 3 uses
  %i.qt = load ptr, ptr %i.ae, align 8, !tbaa !254
  store i32 0, ptr %i.qs, align 8, !tbaa !529
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !255
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.qv) #19
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %.0, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ad, ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.c)
  %i.qw = load i32, ptr %i.di, align 8, !tbaa !24
  %.not19.peel.i = icmp eq i32 %i.qw, 0
  br i1 %.not19.peel.i, label %bb.bu, label %cf2_getGlyphOutline.exit.thread

bb.bu:                                            ; preds = %.peel.begin.i
  %i.qx = icmp eq i8 %i.qr, 0
  br i1 %i.qx, label %.loopexit29.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qy = load i32, ptr %i.qs, align 8, !tbaa !530
  %i.qz = icmp sgt i32 %i.qy, -1
  br i1 %i.qz, label %.loopexit29.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 1, ptr %i.qp, align 4, !tbaa !245
  %i.ra = load ptr, ptr %i.ae, align 8, !tbaa !254
  store i32 0, ptr %i.qs, align 8, !tbaa !529
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !255
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.rc) #19
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %.0, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ad, ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.c)
  %i.rd = load i32, ptr %i.di, align 8, !tbaa !24
  %.not19.i = icmp eq i32 %i.rd, 0
  br i1 %.not19.i, label %.loopexit29.i, label %cf2_getGlyphOutline.exit.thread

.loopexit29.i:                                    ; preds = %bb.bw, %bb.bv, %bb.bu
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 2 uses
  %i.re = getelementptr i8, ptr %.val.i, i64 40
  %.val.i21.i = load ptr, ptr %i.re, align 8, !tbaa !68 ; 11 uses
  %.not.i.i22.i = icmp eq ptr %.val.i21.i, null
  br i1 %.not.i.i22.i, label %cf2_getGlyphOutline.exit, label %bb.bx

bb.bx:                                            ; preds = %.loopexit29.i
  %i.rf = load i16, ptr %.val.i21.i, align 8, !tbaa !146 ; 6 uses
  %i.rg = icmp ult i16 %i.rf, 2
  br i1 %i.rg, label %bb.by, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bx
  %i.rh = zext i16 %i.rf to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !147
  %i.rk = getelementptr [2 x i8], ptr %i.rj, i64 %i.rh
  %i.rl = getelementptr i8, ptr %i.rk, i64 -4
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !44
  %i.rn = zext i16 %i.rm to i32
  %i.ro = add nuw nsw i32 %i.rn, 1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.not33.i.i.i = icmp eq i16 %i.rf, 0
  br i1 %.not33.i.i.i, label %._crit_edge.i.i23.i, label %bb.bz

._crit_edge.i.i23.i:                              ; preds = %bb.by
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2
  %.pre.i.i24.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2, !tbaa !139
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by, %.thread.i.i.i
  %i.rp = phi i32 [ %i.ro, %.thread.i.i.i ], [ 0, %bb.by ] ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !139 ; 2 uses
  %i.rs = zext i16 %i.rr to i32
  %i.rt = icmp eq i32 %i.rp, %i.rs
  br i1 %i.rt, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ru = add i16 %i.rf, -1
  store i16 %i.ru, ptr %.val.i21.i, align 8, !tbaa !146
  br label %cf2_getGlyphOutline.exit

bb.cb:                                            ; preds = %bb.bz, %._crit_edge.i.i23.i
  %i.rv = phi i16 [ %i.rr, %bb.bz ], [ %.pre.i.i24.i, %._crit_edge.i.i23.i ] ; 7 uses
  %.not333.i.i.i = phi i1 [ false, %bb.bz ], [ true, %._crit_edge.i.i23.i ]
  %i.rw = phi i32 [ %i.rp, %bb.bz ], [ 0, %._crit_edge.i.i23.i ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2 ; 2 uses
  %i.ry = icmp ugt i16 %i.rv, 1
  br i1 %i.ry, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.rz = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !138 ; 2 uses
  %i.sb = zext nneg i32 %i.rw to i64
  %i.sc = getelementptr inbounds nuw [16 x i8], ptr %i.sa, i64 %i.sb ; 2 uses
  %i.sd = zext i16 %i.rv to i64                   ; 2 uses
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.sa, i64 %i.sd ; 2 uses
  %i.sf = getelementptr inbounds i8, ptr %i.se, i64 -16
  %i.sg = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !140
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sd
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -1
  %i.sk = load i64, ptr %i.sc, align 8, !tbaa !141
  %i.sl = load i64, ptr %i.sf, align 8, !tbaa !141
  %i.sm = icmp eq i64 %i.sk, %i.sl
  br i1 %i.sm, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !142
  %i.sp = getelementptr inbounds i8, ptr %i.se, i64 -8
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !142
  %i.sr = icmp eq i64 %i.so, %i.sq
  br i1 %i.sr, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ss = load i8, ptr %i.sj, align 1, !tbaa !41
  %i.st = icmp eq i8 %i.ss, 1
  br i1 %i.st, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.su = add i16 %i.rv, -1                       ; 2 uses
  store i16 %i.su, ptr %i.rx, align 2, !tbaa !139
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %i.sv = phi i16 [ %i.rv, %bb.cc ], [ %i.rv, %bb.cd ], [ %i.su, %bb.cf ], [ %i.rv, %bb.ce ], [ %i.rv, %bb.cb ] ; 2 uses
  %i.sw = zext i16 %i.rf to i64
  br i1 %.not333.i.i.i, label %cf2_getGlyphOutline.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sx = zext i16 %i.sv to i32
  %i.sy = add nsw i32 %i.sx, -1                   ; 2 uses
  %i.sz = icmp eq i32 %i.rw, %i.sy
  br i1 %i.sz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ta = add i16 %i.rf, -1
  store i16 %i.ta, ptr %.val.i21.i, align 8, !tbaa !146
  %i.tb = add i16 %i.sv, -1
end_hunk_1
