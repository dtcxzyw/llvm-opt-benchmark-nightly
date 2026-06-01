inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@t1_decoder_done:bb.a
bb.c:                                             ; preds = %t1_builder_done.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2984 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  tail call void %i.h(ptr noundef %i.j) #19
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !179
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.k) #19
  store ptr null, ptr %i.i, align 8, !tbaa !179
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %t1_builder_done.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 162) i32 @t1_decoder_parse_metrics(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !180
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 3 uses
  store ptr %.ptr, ptr %i.c, align 8, !tbaa !181
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2280
  store ptr %1, ptr %i.e, align 8, !tbaa !182
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2288
  store ptr %i.g, ptr %i.h, align 8, !tbaa !184
  store ptr %1, ptr %.ptr, align 8, !tbaa !185
  %i.i = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not339 = icmp eq i32 %2, 0
  br i1 %.not339, label %.thread239, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.0142.ptr275 = getelementptr inbounds nuw i8, ptr %0, i64 2272
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread232
  %.0142.ptr281 = phi ptr [ %.0142.ptr275, %.lr.ph ], [ %.0142.ptr, %.thread232 ]
  %.0142.idx280 = phi i64 [ 2272, %.lr.ph ], [ %.5.idx, %.thread232 ] ; 6 uses
  %.0151279 = phi i8 [ 0, %.lr.ph ], [ %.5156, %.thread232 ] ; 6 uses
  %.0157278 = phi ptr [ %1, %.lr.ph ], [ %.7, %.thread232 ] ; 5 uses
  %.0163276 = phi ptr [ %i.g, %.lr.ph ], [ %.5168, %.thread232 ] ; 5 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !180  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0157278, i64 1 ; 8 uses
  %i.u = load i8, ptr %.0157278, align 1, !tbaa !38 ; 5 uses
  switch i8 %i.u, label %bb.k [
    i8 1, label %.thread239
    i8 3, label %.thread239
    i8 4, label %.thread239
    i8 5, label %.thread239
    i8 6, label %.thread239
    i8 7, label %.thread239
    i8 8, label %.thread239
    i8 9, label %.thread239
    i8 14, label %.thread239
    i8 15, label %.thread239
    i8 21, label %.thread239
    i8 22, label %.thread239
    i8 30, label %.thread239
    i8 31, label %.thread239
    i8 10, label %bb.s
    i8 11, label %bb.c
    i8 13, label %bb.d
    i8 12, label %bb.e
    i8 -1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %.not184 = icmp ult ptr %i.t, %.0163276
  br i1 %.not184, label %bb.f, label %.thread239

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.0157278, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.t, align 1, !tbaa !38
  switch i8 %i.w, label %.thread239 [
    i8 7, label %bb.s
    i8 12, label %.thread211
  ]

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.0157278, i64 5 ; 3 uses
  %i.y = icmp ugt ptr %i.x, %.0163276
  br i1 %i.y, label %.thread239, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.t, align 1
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z) ; 4 uses
  %i.ab = add i32 %i.aa, -32001
  %or.cond = icmp ult i32 %i.ab, -64001
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not183 = icmp eq i8 %.0151279, 0
  br i1 %.not183, label %bb.t, label %.thread239

bb.j:                                             ; preds = %bb.h
  %.not = icmp ne i8 %.0151279, 0                 ; 2 uses
  %i.ac = shl nsw i32 %i.aa, 16
  %spec.select195 = select i1 %.not, i32 %i.aa, i32 %i.ac
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ad = zext i8 %i.u to i32                     ; 2 uses
  %i.ae = icmp ugt i8 %i.u, 31
  br i1 %i.ae, label %bb.l, label %.thread239

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ult i8 %i.u, -9
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = add nsw i32 %i.ad, -139
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.0157278, i64 2 ; 3 uses
  %i.ai = icmp ugt ptr %i.ah, %.0163276
  br i1 %i.ai, label %.thread239, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp samesign ult i8 %i.u, -5
  %i.ak = shl nuw nsw i32 %i.ad, 8                ; 2 uses
  %i.al = load i8, ptr %i.t, align 1, !tbaa !38
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ak, -63124
  %i.ao = add nuw nsw i32 %i.an, %i.am
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ap = or disjoint i32 %i.ak, %i.am
  %i.aq = sub nsw i32 64148, %i.ap
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m
  %.1158 = phi ptr [ %i.t, %bb.m ], [ %i.ah, %bb.p ], [ %i.ah, %bb.q ]
  %.0147 = phi i32 [ %i.ag, %bb.m ], [ %i.ao, %bb.p ], [ %i.aq, %bb.q ] ; 2 uses
  %.not185 = icmp ne i8 %.0151279, 0              ; 2 uses
  %i.ar = shl nsw i32 %.0147, 16
  %spec.select197 = select i1 %.not185, i32 %.0147, i32 %i.ar
  br label %bb.t

bb.s:                                             ; preds = %bb.f, %bb.b, %bb.d, %bb.c
  %.2159 = phi ptr [ %i.t, %bb.d ], [ %i.t, %bb.b ], [ %i.v, %bb.f ], [ %i.t, %bb.c ]
  %.0149 = phi i32 [ 2, %bb.d ], [ 22, %bb.b ], [ 4, %bb.f ], [ 24, %bb.c ]
  %i.as = icmp eq i8 %.0151279, 0
  br i1 %i.as, label %.thread211, label %.thread239

bb.t:                                             ; preds = %bb.i, %bb.r, %bb.j
  %.2159.ph.ph = phi ptr [ %i.x, %bb.j ], [ %.1158, %bb.r ], [ %i.x, %bb.i ]
  %.1152.ph.ph.shrunk = phi i1 [ %.not, %bb.j ], [ %.not185, %bb.r ], [ true, %bb.i ]
  %.1148.ph.ph = phi i32 [ %spec.select195, %bb.j ], [ %spec.select197, %bb.r ], [ %i.aa, %bb.i ]
  %i.at = ptrtoint ptr %i.s to i64
  %i.au = sub i64 %i.at, %i.i
  %i.av = icmp sgt i64 %i.au, 2040
  br i1 %i.av, label %.thread239, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.1152.ph.ph = zext i1 %.1152.ph.ph.shrunk to i8
  %i.aw = sext i32 %.1148.ph.ph to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.aw, ptr %i.s, align 8, !tbaa !42
  br label %.thread232

.thread211:                                       ; preds = %bb.s, %bb.f
  %.2159207218 = phi ptr [ %i.v, %bb.f ], [ %.2159, %bb.s ] ; 2 uses
  %.0149209216 = phi i32 [ 20, %bb.f ], [ %.0149, %bb.s ] ; 2 uses
  %i.ay = zext nneg i32 %.0149209216 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @t1_args_count, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = ptrtoint ptr %i.s to i64
  %i.bc = sub i64 %i.bb, %i.i
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = sext i32 %i.ba to i64                   ; 2 uses
  %i.bf = icmp slt i64 %i.bd, %i.be
  br i1 %i.bf, label %.thread239, label %bb.v

bb.v:                                             ; preds = %.thread211
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bg ; 12 uses
  switch i32 %.0149209216, label %.thread239 [
    i32 2, label %bb.w
    i32 4, label %bb.x
    i32 20, label %bb.y
    i32 22, label %bb.z
    i32 24, label %bb.aj
  ]

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.d, align 8, !tbaa !103
  %i.bi = load i64, ptr %i.o, align 8, !tbaa !186
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.bk = add i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.o, align 8, !tbaa !186
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !42
  store i64 %i.bm, ptr %i.q, align 8, !tbaa !187
  br label %.thread239.sink.split

bb.x:                                             ; preds = %bb.v
  store i32 1, ptr %i.d, align 8, !tbaa !103
  %i.bn = load i64, ptr %i.o, align 8, !tbaa !186
  %i.bo = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.bp = add i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %i.o, align 8, !tbaa !186
  %i.bq = load i64, ptr %i.p, align 8, !tbaa !188
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !42
  %i.bt = add i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.p, align 8, !tbaa !188
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !42
  store i64 %i.bv, ptr %i.q, align 8, !tbaa !187
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !42
  br label %.thread239.sink.split

bb.y:                                             ; preds = %bb.v
  %i.by = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !42
  %i.cb = tail call i64 @FT_DivFix(i64 noundef %i.by, i64 noundef %i.ca) #19
  store i64 %i.cb, ptr %i.bh, align 8, !tbaa !42
  br label %.thread232

bb.z:                                             ; preds = %bb.v
  %i.cc = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.cd = lshr i64 %i.cc, 16
  %i.ce = trunc i64 %i.cd to i16
  %i.cf = sext i16 %i.ce to i32                   ; 2 uses
  %i.cg = load ptr, ptr %i.j, align 8, !tbaa !189 ; 2 uses
  %.not190 = icmp eq ptr %i.cg, null
  br i1 %.not190, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = tail call ptr @ft_hash_num_lookup(i32 noundef %i.cf, ptr noundef nonnull %i.cg) #19 ; 2 uses
  %.not191 = icmp eq ptr %i.ch, null
  br i1 %.not191, label %.thread239, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.1138 = phi i32 [ %i.cf, %bb.z ], [ %i.cj, %bb.ab ] ; 3 uses
  %i.ck = icmp slt i32 %.1138, 0
  br i1 %i.ck, label %.thread239, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load i32, ptr %i.k, align 4, !tbaa !190
  %.not192 = icmp sge i32 %.1138, %i.cl
  %i.cm = icmp sgt i64 %.0142.idx280, 2632
  %or.cond199 = select i1 %.not192, i1 true, i1 %i.cm
  br i1 %or.cond199, label %.thread239, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %.2159207218, ptr %.0142.ptr281, align 8, !tbaa !185
  %.0142.add187 = add nsw i64 %.0142.idx280, 24   ; 2 uses
  %.ptr189 = getelementptr inbounds i8, ptr %0, i64 %.0142.add187 ; 4 uses
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !191
  %i.co = zext nneg i32 %.1138 to i64             ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !26 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.ptr189, i64 8 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !182
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !192 ; 2 uses
  %.not193 = icmp eq ptr %i.cs, null
  br i1 %.not193, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.co
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cx = load i32, ptr %i.n, align 8, !tbaa !193
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 0)
  %spec.select198 = zext nneg i32 %narrow to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 %spec.select198 ; 2 uses
  store ptr %i.cy, ptr %i.cr, align 8, !tbaa !182
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.db = phi ptr [ %i.da, %bb.ag ], [ %i.cw, %bb.af ] ; 2 uses
  %i.dc = phi ptr [ %i.cy, %bb.ag ], [ %i.cq, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.ptr189, i64 16
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !184
  store ptr %i.dc, ptr %.ptr189, align 8, !tbaa !185
  %.not194 = icmp eq ptr %i.dc, null
  br i1 %.not194, label %.thread239, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %.ptr189, ptr %i.c, align 8, !tbaa !181
  br label %.thread232

bb.aj:                                            ; preds = %bb.v
  %.not186 = icmp sgt i64 %.0142.idx280, 2272
  br i1 %.not186, label %bb.ak, label %.thread239

bb.ak:                                            ; preds = %bb.aj
  %.0142.add = add nsw i64 %.0142.idx280, -24     ; 2 uses
  %.ptr188 = getelementptr inbounds nuw i8, ptr %0, i64 %.0142.add ; 3 uses
  %i.de = load ptr, ptr %.ptr188, align 8, !tbaa !185
  %i.df = getelementptr inbounds nuw i8, ptr %.ptr188, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !184
  store ptr %.ptr188, ptr %i.c, align 8, !tbaa !181
  br label %.thread232

.thread232:                                       ; preds = %bb.y, %bb.ak, %bb.ai, %bb.u
  %.0150.sink = phi ptr [ %i.ax, %bb.u ], [ %i.bz, %bb.y ], [ %i.bh, %bb.ai ], [ %i.bh, %bb.ak ]
  %.5168 = phi ptr [ %.0163276, %bb.u ], [ %.0163276, %bb.y ], [ %i.db, %bb.ai ], [ %i.dg, %bb.ak ] ; 2 uses
  %.7 = phi ptr [ %.2159.ph.ph, %bb.u ], [ %.2159207218, %bb.y ], [ %i.dc, %bb.ai ], [ %i.de, %bb.ak ] ; 2 uses
  %.5156 = phi i8 [ %.1152.ph.ph, %bb.u ], [ 0, %bb.y ], [ %.0151279, %bb.ai ], [ %.0151279, %bb.ak ]
  %.5.idx = phi i64 [ %.0142.idx280, %bb.u ], [ %.0142.idx280, %bb.y ], [ %.0142.add187, %bb.ai ], [ %.0142.add, %bb.ak ] ; 2 uses
  store ptr %.0150.sink, ptr %i.b, align 8, !tbaa !180
  %.0142.ptr = getelementptr inbounds i8, ptr %0, i64 %.5.idx
  %i.dh = icmp ult ptr %.7, %.5168
  br i1 %i.dh, label %bb.b, label %.thread239

.thread239.sink.split:                            ; preds = %bb.w, %bb.x
  %.sink = phi i64 [ %i.bx, %bb.x ], [ 0, %bb.w ]
  store i64 %.sink, ptr %i.r, align 8, !tbaa !194
  br label %.thread239

.thread239:                                       ; preds = %.thread211, %bb.f, %bb.e, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.g, %bb.n, %bb.i, %bb.k, %bb.t, %bb.s, %.thread232, %bb.aj, %bb.v, %bb.ah, %bb.ad, %bb.ac, %bb.aa, %bb.a, %.thread239.sink.split
  %.4 = phi i32 [ 0, %.thread239.sink.split ], [ 160, %bb.a ], [ 160, %bb.aa ], [ 160, %bb.s ], [ 160, %bb.ac ], [ 160, %bb.ad ], [ 160, %bb.ah ], [ 160, %bb.v ], [ 160, %bb.aj ], [ 160, %.thread232 ], [ 160, %bb.t ], [ 160, %bb.k ], [ 160, %bb.i ], [ 160, %bb.n ], [ 160, %bb.g ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.e ], [ 160, %bb.f ], [ 161, %.thread211 ]
  ret i32 %.4
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
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.f = load i8, ptr %i.e, align 4, !tbaa !195   ; 2 uses
  %.not = icmp eq i8 %i.f, 0                      ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !201
  %.not72 = icmp eq ptr %i.h, null
  br i1 %.not72, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !202    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !203  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !204  ; 2 uses
  %.not73 = icmp eq ptr %i.l, null
  br i1 %.not73, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @cf2_free_instance, ptr %i.m, align 8, !tbaa !205
  %i.n = call ptr @ft_mem_alloc(ptr noundef %i.i, i64 noundef 656, ptr noundef nonnull %i.d) #19 ; 11 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !203
  store ptr %i.n, ptr %i.o, align 8, !tbaa !204
  %i.p = load i32, ptr %i.d, align 4, !tbaa !3
  %.not74 = icmp eq i32 %i.p, 0
  br i1 %.not74, label %bb.e, label %bb.cm

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.n, align 8, !tbaa !206
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !216
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4968
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !217
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  store ptr %i.t, ptr %i.u, align 8, !tbaa !232
end_hunk_0
