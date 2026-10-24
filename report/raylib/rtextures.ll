Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 115
begin_hunk_0_@stbi_write_bmp_to_func:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = call fastcc i32 @stbi_write_bmp_core(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi_write_bmp_core(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %3, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 3                            ; 2 uses
  %i.b = mul nsw i32 %1, 3
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = mul nsw i32 %i.c, %2
  %i.e = add nsw i32 %i.d, 54
  %i.f = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4, i32 noundef 0, i32 noundef %i.a, ptr noundef nonnull @.str.139, i32 noundef 66, i32 noundef 77, i32 noundef %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 54, i32 noundef 40, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 2
  %i.h = mul i32 %i.g, %2
  %i.i = add nsw i32 %i.h, 122
  %i.j = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 1, ptr noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.140, i32 noundef 66, i32 noundef 77, i32 noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 122, i32 noundef 108, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 32, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16711680, i32 noundef 65280, i32 noundef 255, i32 noundef -16777216, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_bmp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 2 uses
  store ptr @stbi__stdio_write, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @stbi_write_bmp_core(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_tga_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = call fastcc i32 @stbi_write_tga_core(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi_write_tga_core(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %3, 2
  %i.b = icmp eq i32 %3, 4
  %i.c = or i1 %i.a, %i.b                         ; 4 uses
  %i.d = zext i1 %i.c to i32                      ; 3 uses
  %i.e = sext i1 %i.c to i32
  %i.f = add nsw i32 %3, %i.e                     ; 3 uses
  %i.g = icmp slt i32 %i.f, 2
  %i.h = select i1 %i.g, i32 3, i32 2             ; 2 uses
  %i.i = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not, label %bb.b, label %stbiw__write_flush.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @stbi_write_tga_with_rle, align 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, %i.d
  %i.l = shl nsw i32 %i.k, 3
  %i.m = select i1 %i.c, i32 8, i32 0
  %i.n = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4, i32 noundef %i.d, i32 noundef 0, ptr noundef nonnull @.str.141, i32 noundef 0, i32 noundef 0, i32 noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.l, i32 noundef %i.m)
  br label %stbiw__write_flush.exit

bb.d:                                             ; preds = %bb.b
  %i.o = or disjoint i32 %i.h, 8
  %i.p = add nsw i32 %i.f, %i.d
  %i.q = shl nsw i32 %i.p, 3
  %i.r = select i1 %i.c, i32 8, i32 0
  tail call void (ptr, ptr, ...) @stbiw__writef(ptr noundef %0, ptr nonnull poison, i32 noundef 0, i32 noundef 0, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.q, i32 noundef %i.r)
  %i.s = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not116 = icmp eq i32 %i.s, 0                  ; 3 uses
  %i.t = add nsw i32 %2, -1
  %.0109 = select i1 %.not116, i32 %i.t, i32 0    ; 3 uses
  %.0105 = select i1 %.not116, i32 -1, i32 %2     ; 3 uses
  %.0104 = select i1 %.not116, i32 -1, i32 1      ; 2 uses
  %.not117164 = icmp eq i32 %.0109, %.0105
  br i1 %.not117164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.d
  %i.u = mul i32 %3, %1
  %i.v = icmp sgt i32 %1, 0
  %i.w = add nsw i32 %1, -1
  %i.x = sext i32 %3 to i64                       ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.ab = zext nneg i32 %3 to i64                 ; 2 uses
  br i1 %i.v, label %.lr.ph162.us.preheader, label %.lr.ph167.split

.lr.ph162.us.preheader:                           ; preds = %.lr.ph167
  %i.ac = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ad = zext i32 %.0109 to i64
  %i.ae = zext i32 %.0104 to i64
  br label %.lr.ph162.us

.lr.ph162.us:                                     ; preds = %.lr.ph162.us.preheader, %._crit_edge163.us
  %indvars.iv178 = phi i64 [ %i.ad, %.lr.ph162.us.preheader ], [ %indvars.iv.next179, %._crit_edge163.us ] ; 2 uses
  %i.af = trunc i64 %indvars.iv178 to i32
  %i.ag = mul i32 %i.u, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %i.ah ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph162.us, %stbiw__write_pixel.exit141.us
  %.0111159.us = phi i32 [ 0, %.lr.ph162.us ], [ %i.ey, %stbiw__write_pixel.exit141.us ] ; 5 uses
  %i.aj = mul nsw i32 %.0111159.us, %3
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak ; 9 uses
  %i.am = icmp slt i32 %.0111159.us, %i.w
  br i1 %i.am, label %bb.f, label %.loopexit.us

bb.f:                                             ; preds = %bb.e
  %i.an = add nsw i32 %.0111159.us, 1
  %i.ao = mul nsw i32 %i.an, %3
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 %i.ap
  %bcmp122.us = tail call i32 @bcmp(ptr %i.al, ptr %i.aq, i64 %i.x)
  %.not118.us = icmp eq i32 %bcmp122.us, 0
  %i.ar = add nsw i32 %.0111159.us, 2             ; 3 uses
  %i.as = icmp slt i32 %i.ar, %1                  ; 2 uses
  br i1 %.not118.us, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.as, label %.lr.ph.us.preheader, label %.loopexit.us

.lr.ph.us.preheader:                              ; preds = %bb.g
  %i.at = sext i32 %i.ar to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.at, %.lr.ph.us.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.0101150.us = phi ptr [ %i.al, %.lr.ph.us.preheader ], [ %i.aw, %bb.h ] ; 2 uses
  %.0103149.us = phi i32 [ 2, %.lr.ph.us.preheader ], [ %i.ax, %bb.h ] ; 3 uses
  %i.au = mul nsw i64 %indvars.iv, %i.x
  %i.av = getelementptr inbounds i8, ptr %i.ai, i64 %i.au
  %bcmp120.us = tail call i32 @bcmp(ptr %.0101150.us, ptr %i.av, i64 %i.x)
  %.not121.us = icmp eq i32 %bcmp120.us, 0
  br i1 %.not121.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.us
  %i.aw = getelementptr inbounds i8, ptr %.0101150.us, i64 %i.x
  %i.ax = add nuw nsw i32 %.0103149.us, 1         ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ac
  %i.az = icmp samesign ult i32 %.0103149.us, 127
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %i.ba, label %.lr.ph.us, label %.loopexit.us

bb.i:                                             ; preds = %.lr.ph.us
  %i.bb = add nsw i32 %.0103149.us, -1
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.h, %bb.g, %bb.i, %bb.e
  %.3.ph.us = phi i32 [ 1, %bb.e ], [ %i.bb, %bb.i ], [ 2, %bb.g ], [ %i.ax, %bb.h ] ; 5 uses
  %i.bc = trunc i32 %.3.ph.us to i8
  %i.bd = add i8 %i.bc, -1
  %i.be = load i32, ptr %i.y, align 8             ; 3 uses
  %5 = add i32 %i.be, 1
  %i.bf = icmp ult i32 %5, 65
  br i1 %i.bf, label %stbiw__write1.exit.us, label %bb.j

bb.j:                                             ; preds = %.loopexit.us
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = load ptr, ptr %i.z, align 8
  tail call void %i.bg(ptr noundef %i.bh, ptr noundef nonnull %i.aa, i32 noundef %i.be) #52, !inline_history !50
  br label %stbiw__write1.exit.us

stbiw__write1.exit.us:                            ; preds = %bb.j, %.loopexit.us
  %i.bi = phi i32 [ 0, %bb.j ], [ %i.be, %.loopexit.us ] ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.y, align 8
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds i8, ptr %i.aa, i64 %i.bk
  store i8 %i.bd, ptr %i.bl, align 1
  %i.bm = icmp sgt i32 %.3.ph.us, 0
  br i1 %i.bm, label %.lr.ph152.us.preheader, label %stbiw__write_pixel.exit141.us

.lr.ph152.us.preheader:                           ; preds = %stbiw__write1.exit.us
  %wide.trip.count = zext nneg i32 %.3.ph.us to i64
  br label %.lr.ph152.us

.lr.ph152.us:                                     ; preds = %.lr.ph152.us.preheader, %stbiw__write_pixel.exit.us
  %indvars.iv172 = phi i64 [ 0, %.lr.ph152.us.preheader ], [ %indvars.iv.next173, %stbiw__write_pixel.exit.us ] ; 2 uses
  %i.bn = mul nsw i64 %indvars.iv172, %i.x
  %i.bo = getelementptr inbounds i8, ptr %i.al, i64 %i.bn ; 5 uses
  switch i32 %3, label %stbiw__write_pixel.exit.us [
    i32 2, label %bb.m
    i32 1, label %bb.m
    i32 4, label %bb.k
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph152.us, %.lr.ph152.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = load i8, ptr %i.bo, align 1
  %i.bu = load i32, ptr %i.y, align 8             ; 3 uses
  %6 = add i32 %i.bu, 3
  %i.bv = icmp ult i32 %6, 65
  br i1 %i.bv, label %stbiw__write3.exit36.i.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = load ptr, ptr %i.z, align 8
  tail call void %i.bw(ptr noundef %i.bx, ptr noundef nonnull %i.aa, i32 noundef %i.bu) #52, !inline_history !51
  br label %stbiw__write3.exit36.i.us

stbiw__write3.exit36.i.us:                        ; preds = %bb.l, %bb.k
  %i.by = phi i32 [ 0, %bb.l ], [ %i.bu, %bb.k ]  ; 2 uses
  %i.bz = add nsw i32 %i.by, 3
  store i32 %i.bz, ptr %i.y, align 8
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds i8, ptr %i.aa, i64 %i.ca ; 3 uses
  store i8 %i.bq, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %i.cb, i64 1
  store i8 %i.bs, ptr %i.cc, align 1
  %i.cd = getelementptr i8, ptr %i.cb, i64 2
  store i8 %i.bt, ptr %i.cd, align 1
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph152.us, %.lr.ph152.us
  %i.ce = load i8, ptr %i.bo, align 1
  %i.cf = load i32, ptr %i.y, align 8             ; 3 uses
  %7 = add i32 %i.cf, 1
  %i.cg = icmp ult i32 %7, 65
  br i1 %i.cg, label %stbiw__write1.exit.i.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = load ptr, ptr %i.z, align 8
  tail call void %i.ch(ptr noundef %i.ci, ptr noundef nonnull %i.aa, i32 noundef %i.cf) #52, !inline_history !52
  br label %stbiw__write1.exit.i.us

stbiw__write1.exit.i.us:                          ; preds = %bb.n, %bb.m
  %i.cj = phi i32 [ 0, %bb.n ], [ %i.cf, %bb.m ]  ; 2 uses
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.y, align 8
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds i8, ptr %i.aa, i64 %i.cl
  store i8 %i.ce, ptr %i.cm, align 1
  br label %bb.o

bb.o:                                             ; preds = %stbiw__write1.exit.i.us, %stbiw__write3.exit36.i.us
  switch i32 %3, label %stbiw__write_pixel.exit.us [
    i32 4, label %bb.p
    i32 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.cn = getelementptr i8, ptr %i.bo, i64 %i.ab
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = load i32, ptr %i.y, align 8             ; 3 uses
  %8 = add i32 %i.cq, 1
  %i.cr = icmp ult i32 %8, 65
  br i1 %i.cr, label %stbiw__write1.exit37.i.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %0, align 8
  %i.ct = load ptr, ptr %i.z, align 8
  tail call void %i.cs(ptr noundef %i.ct, ptr noundef nonnull %i.aa, i32 noundef %i.cq) #52, !inline_history !52
  br label %stbiw__write1.exit37.i.us

stbiw__write1.exit37.i.us:                        ; preds = %bb.q, %bb.p
  %i.cu = phi i32 [ 0, %bb.q ], [ %i.cq, %bb.p ]  ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.y, align 8
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds i8, ptr %i.aa, i64 %i.cw
  store i8 %i.cp, ptr %i.cx, align 1
  br label %stbiw__write_pixel.exit.us

stbiw__write_pixel.exit.us:                       ; preds = %stbiw__write1.exit37.i.us, %bb.o, %.lr.ph152.us
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count
  br i1 %exitcond.not, label %stbiw__write_pixel.exit141.us, label %.lr.ph152.us

bb.r:                                             ; preds = %bb.f
  br i1 %i.as, label %.lr.ph155.us.preheader, label %._crit_edge.us

.lr.ph155.us.preheader:                           ; preds = %bb.r
  %i.cy = sext i32 %i.ar to i64
  br label %.lr.ph155.us

.lr.ph155.us:                                     ; preds = %.lr.ph155.us.preheader, %bb.s
  %indvars.iv175 = phi i64 [ %i.cy, %.lr.ph155.us.preheader ], [ %indvars.iv.next176, %bb.s ] ; 2 uses
  %.2154.us = phi i32 [ 2, %.lr.ph155.us.preheader ], [ %i.db, %bb.s ] ; 3 uses
  %i.cz = mul nsw i64 %indvars.iv175, %i.x
  %i.da = getelementptr inbounds i8, ptr %i.ai, i64 %i.cz
  %bcmp.us = tail call i32 @bcmp(ptr %i.al, ptr %i.da, i64 %i.x)
  %.not119.us = icmp eq i32 %bcmp.us, 0
  br i1 %.not119.us, label %bb.s, label %._crit_edge.us

bb.s:                                             ; preds = %.lr.ph155.us
  %i.db = add nuw nsw i32 %.2154.us, 1            ; 2 uses
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.dc = icmp slt i64 %indvars.iv.next176, %i.ac
  %i.dd = icmp samesign ult i32 %.2154.us, 127
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %.lr.ph155.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph155.us, %bb.s, %bb.r
  %.2.lcssa.us = phi i32 [ 2, %bb.r ], [ %i.db, %bb.s ], [ %.2154.us, %.lr.ph155.us ] ; 4 uses
  %i.df = trunc nuw i32 %.2.lcssa.us to i8
  %i.dg = add nuw i8 %i.df, 127
  %i.dh = load i32, ptr %i.y, align 8             ; 3 uses
  %9 = add i32 %i.dh, 1
  %i.di = icmp ult i32 %9, 65
  br i1 %i.di, label %stbiw__write1.exit124.us, label %bb.t

bb.t:                                             ; preds = %._crit_edge.us
  %i.dj = load ptr, ptr %0, align 8
  %i.dk = load ptr, ptr %i.z, align 8
  tail call void %i.dj(ptr noundef %i.dk, ptr noundef nonnull %i.aa, i32 noundef %i.dh) #52, !inline_history !50
  br label %stbiw__write1.exit124.us

stbiw__write1.exit124.us:                         ; preds = %bb.t, %._crit_edge.us
  %i.dl = phi i32 [ 0, %bb.t ], [ %i.dh, %._crit_edge.us ] ; 2 uses
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.y, align 8
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds i8, ptr %i.aa, i64 %i.dn
  store i8 %i.dg, ptr %i.do, align 1
  switch i32 %3, label %stbiw__write_pixel.exit141.us [
    i32 2, label %bb.w
    i32 1, label %bb.w
    i32 4, label %bb.u
    i32 3, label %bb.u
  ]

bb.u:                                             ; preds = %stbiw__write1.exit124.us, %stbiw__write1.exit124.us
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = load i8, ptr %i.al, align 1
  %i.du = load i32, ptr %i.y, align 8             ; 3 uses
  %10 = add i32 %i.du, 3
  %i.dv = icmp ult i32 %10, 65
  br i1 %i.dv, label %stbiw__write3.exit36.i125.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %0, align 8
  %i.dx = load ptr, ptr %i.z, align 8
  tail call void %i.dw(ptr noundef %i.dx, ptr noundef nonnull %i.aa, i32 noundef %i.du) #52, !inline_history !51
  br label %stbiw__write3.exit36.i125.us

stbiw__write3.exit36.i125.us:                     ; preds = %bb.v, %bb.u
  %i.dy = phi i32 [ 0, %bb.v ], [ %i.du, %bb.u ]  ; 2 uses
  %i.dz = add nsw i32 %i.dy, 3
  store i32 %i.dz, ptr %i.y, align 8
  %i.ea = sext i32 %i.dy to i64
  %i.eb = getelementptr inbounds i8, ptr %i.aa, i64 %i.ea ; 3 uses
  store i8 %i.dq, ptr %i.eb, align 1
  %i.ec = getelementptr i8, ptr %i.eb, i64 1
  store i8 %i.ds, ptr %i.ec, align 1
  %i.ed = getelementptr i8, ptr %i.eb, i64 2
  store i8 %i.dt, ptr %i.ed, align 1
  br label %bb.y

bb.w:                                             ; preds = %stbiw__write1.exit124.us, %stbiw__write1.exit124.us
  %i.ee = load i8, ptr %i.al, align 1
  %i.ef = load i32, ptr %i.y, align 8             ; 3 uses
  %11 = add i32 %i.ef, 1
  %i.eg = icmp ult i32 %11, 65
  br i1 %i.eg, label %stbiw__write1.exit.i140.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %0, align 8
  %i.ei = load ptr, ptr %i.z, align 8
  tail call void %i.eh(ptr noundef %i.ei, ptr noundef nonnull %i.aa, i32 noundef %i.ef) #52, !inline_history !52
  br label %stbiw__write1.exit.i140.us

stbiw__write1.exit.i140.us:                       ; preds = %bb.x, %bb.w
  %i.ej = phi i32 [ 0, %bb.x ], [ %i.ef, %bb.w ]  ; 2 uses
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.y, align 8
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds i8, ptr %i.aa, i64 %i.el
  store i8 %i.ee, ptr %i.em, align 1
  br label %bb.y

bb.y:                                             ; preds = %stbiw__write1.exit.i140.us, %stbiw__write3.exit36.i125.us
  switch i32 %3, label %stbiw__write_pixel.exit141.us [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.en = getelementptr i8, ptr %i.al, i64 %i.ab
  %i.eo = getelementptr i8, ptr %i.en, i64 -1
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = load i32, ptr %i.y, align 8             ; 3 uses
  %12 = add i32 %i.eq, 1
  %i.er = icmp ult i32 %12, 65
  br i1 %i.er, label %stbiw__write1.exit37.i127.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.es = load ptr, ptr %0, align 8
  %i.et = load ptr, ptr %i.z, align 8
  tail call void %i.es(ptr noundef %i.et, ptr noundef nonnull %i.aa, i32 noundef %i.eq) #52, !inline_history !52
  br label %stbiw__write1.exit37.i127.us

stbiw__write1.exit37.i127.us:                     ; preds = %bb.aa, %bb.z
  %i.eu = phi i32 [ 0, %bb.aa ], [ %i.eq, %bb.z ] ; 2 uses
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.y, align 8
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds i8, ptr %i.aa, i64 %i.ew
  store i8 %i.ep, ptr %i.ex, align 1
  br label %stbiw__write_pixel.exit141.us

stbiw__write_pixel.exit141.us:                    ; preds = %stbiw__write_pixel.exit.us, %stbiw__write1.exit.us, %stbiw__write1.exit37.i127.us, %bb.y, %stbiw__write1.exit124.us
  %.3146.us = phi i32 [ %.2.lcssa.us, %stbiw__write1.exit124.us ], [ %.2.lcssa.us, %stbiw__write1.exit37.i127.us ], [ %.2.lcssa.us, %bb.y ], [ %.3.ph.us, %stbiw__write1.exit.us ], [ %.3.ph.us, %stbiw__write_pixel.exit.us ]
  %i.ey = add nsw i32 %.3146.us, %.0111159.us     ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %1
  br i1 %i.ez, label %bb.e, label %._crit_edge163.us

._crit_edge163.us:                                ; preds = %stbiw__write_pixel.exit141.us
  %indvars.iv.next179 = add i64 %indvars.iv178, %i.ae ; 2 uses
  %i.fa = trunc i64 %indvars.iv.next179 to i32
  %.not117.us = icmp eq i32 %.0105, %i.fa
  br i1 %.not117.us, label %._crit_edge168, label %.lr.ph162.us

.lr.ph167.split:                                  ; preds = %.lr.ph167, %.lr.ph167.split
  %.1110165 = phi i32 [ %i.fb, %.lr.ph167.split ], [ %.0109, %.lr.ph167 ]
  %i.fb = add nsw i32 %.1110165, %.0104           ; 2 uses
  %.not117 = icmp eq i32 %i.fb, %.0105
  br i1 %.not117, label %._crit_edge168, label %.lr.ph167.split

._crit_edge168:                                   ; preds = %.lr.ph167.split, %._crit_edge163.us, %bb.d
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8            ; 2 uses
  %.not.i142 = icmp eq i32 %i.fd, 0
  br i1 %.not.i142, label %stbiw__write_flush.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  %i.fe = load ptr, ptr %0, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.fe(ptr noundef %i.fg, ptr noundef nonnull %i.fh, i32 noundef %i.fd) #52, !inline_history !53
  store i32 0, ptr %i.fc, align 8
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.ab, %._crit_edge168, %bb.a, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 1, %._crit_edge168 ], [ 1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 2 uses
  store ptr @stbi__stdio_write, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @stbi_write_tga_core(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_hdr_to_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @stbi_write_hdr_core(ptr %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi_write_hdr_core(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 10 uses
  %i.g = alloca [4 x i8], align 1                 ; 13 uses
  %i.h = alloca [128 x i8], align 16              ; 4 uses
  %i.i = alloca [66 x i8], align 16               ; 4 uses
  %i.j = icmp slt i32 %1, 1
  %i.k = icmp slt i32 %0, 1
  %or.cond = or i1 %i.k, %i.j
  %i.l = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.l
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nuw nsw i32 %0, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #53 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.i, ptr noundef nonnull align 16 dereferenceable(66) @__const.stbi_write_hdr_core.header, i64 66, i1 false)
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.i, i32 noundef 65) #52
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.142, i32 noundef %1, i32 noundef %0) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.h, i32 noundef %i.p) #52
  %i.q = mul nsw i32 %2, %0                       ; 3 uses
  %i.r = lshr i32 %0, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.u = trunc i32 %0 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.w = add nsw i32 %0, -32768
  %or.cond.i = icmp ult i32 %i.w, -32760
  %.off.i = add i32 %2, -3
  %switch.i = icmp ult i32 %.off.i, 2             ; 2 uses
  %i.x = shl nuw nsw i32 %0, 1
  %i.y = mul nuw nsw i32 %0, 3
  %i.z = zext nneg i32 %0 to i64                  ; 8 uses
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = sext i32 %2 to i64                      ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z ; 2 uses
  %invariant.gep200.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa ; 2 uses
  %invariant.gep202.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab ; 2 uses
  %i.ad = zext nneg i32 %2 to i64
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %invariant.op212.i = add nsw i64 %i.z, -3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i

.split.us:                                        ; preds = %bb.b
  br i1 %switch.i, label %.preheader.i.us.us, label %.preheader.i.us

.preheader.i.us.us:                               ; preds = %.split.us, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us
  %.06.us.us = phi i32 [ %i.bn, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.ah = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not.us.us = icmp eq i32 %i.ah, 0
  %i.ai = xor i32 %.06.us.us, -1
  %i.aj = add nsw i32 %1, %i.ai
  %i.ak = select i1 %.not.us.us, i32 %.06.us.us, i32 %i.aj
  %i.al = mul nsw i32 %i.q, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %3, i64 %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  br label %bb.c

bb.c:                                             ; preds = %stbiw__linear_to_rgbe.exit.i.us.us.us, %.preheader.i.us.us
  %indvars.iv183.i.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %indvars.iv.next184.i.us.us.us, %stbiw__linear_to_rgbe.exit.i.us.us.us ] ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv183.i.us.us.us, %i.ac
  %i.ap = getelementptr [4 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load float, ptr %i.aq, align 4          ; 3 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %i.at = load float, ptr %i.as, align 4          ; 3 uses
  %i.au = load float, ptr %i.ap, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #52
  %i.av = fcmp ogt float %i.at, %i.ar
  %..i.i.us.us.us = select i1 %i.av, float %i.at, float %i.ar ; 2 uses
  %i.aw = fcmp ogt float %i.au, %..i.i.us.us.us
  %i.ax = select i1 %i.aw, float %i.au, float %..i.i.us.us.us ; 3 uses
  %i.ay = fcmp olt float %i.ax, 1.000000e-32
  br i1 %i.ay, label %stbiw__linear_to_rgbe.exit.i.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = fpext float %i.ax to double
  %i.ba = call double @frexp(double noundef %i.az, ptr noundef nonnull %i.e) #52
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fmul float %i.bb, 2.560000e+02
  %i.bd = fdiv float %i.bc, %i.ax                 ; 3 uses
  %i.be = fmul float %i.au, %i.bd
  %i.bf = fptoui float %i.be to i8
  %i.bg = fmul float %i.at, %i.bd
  %i.bh = fptoui float %i.bg to i8
  %i.bi = fmul float %i.ar, %i.bd
  %i.bj = fptoui float %i.bi to i8
  %i.bk = load i32, ptr %i.e, align 4
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = xor i8 %i.bl, -128
  br label %stbiw__linear_to_rgbe.exit.i.us.us.us

stbiw__linear_to_rgbe.exit.i.us.us.us:            ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ %i.bh, %bb.d ], [ 0, %bb.c ]
  %.sink.i.us.us.us = phi i8 [ %i.bf, %bb.d ], [ 0, %bb.c ]
  %.sink32.i.i.us.us.us = phi i8 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.sink.i.i.us.us.us = phi i8 [ %i.bj, %bb.d ], [ 0, %bb.c ]
end_hunk_0
begin_hunk_1_@stbi__zhuffman_decode:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.d, label %stbi__zhuffman_decode_slowpath.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.e, align 4
  %i.g = add nsw i32 %i.b, 16                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8
  br label %stbi__fill_bits.exit

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted.i = load i32, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %stbi__zget8.exit.i, %bb.e
  %.val.i.i = phi ptr [ %.val.i.i23, %stbi__zget8.exit.i ], [ %.val, %bb.e ] ; 4 uses
  %i.i = phi i32 [ %i.q, %stbi__zget8.exit.i ], [ %i.b, %bb.e ] ; 5 uses
  %i.j = phi i32 [ %i.p, %stbi__zget8.exit.i ], [ %.promoted.i, %bb.e ] ; 2 uses
  %.highbits.i = lshr i32 %i.j, %i.i
  %.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.val20, ptr %0, align 8
  br label %stbi__fill_bits.exit

bb.h:                                             ; preds = %bb.f
  %.not3.i.i = icmp ult ptr %.val.i.i, %.val20
  br i1 %.not3.i.i, label %bb.i, label %stbi__zget8.exit.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = load i8, ptr %.val.i.i, align 1
  %i.m = zext i8 %i.l to i32
  br label %stbi__zget8.exit.i

stbi__zget8.exit.i:                               ; preds = %bb.i, %bb.h
  %.val.i.i23 = phi ptr [ %i.k, %bb.i ], [ %.val.i.i, %bb.h ]
  %i.n = phi i32 [ %i.m, %bb.i ], [ 0, %bb.h ]
  %i.o = shl i32 %i.n, %i.i
  %i.p = or i32 %i.o, %i.j                        ; 2 uses
  store i32 %i.p, ptr %i.h, align 8
  %i.q = add nsw i32 %i.i, 8                      ; 3 uses
  store i32 %i.q, ptr %i.a, align 8
  %i.r = icmp slt i32 %i.i, 17
  br i1 %i.r, label %bb.f, label %stbi__fill_bits.exit

stbi__fill_bits.exit:                             ; preds = %stbi__zget8.exit.i, %bb.g, %bb.d, %bb.a
  %i.s = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.g ], [ %i.g, %bb.d ], [ %i.q, %stbi__zget8.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %i.v = and i32 %i.u, 511
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %.not19 = icmp eq i16 %i.y, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %stbi__fill_bits.exit
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = lshr i32 %i.z, 9                        ; 2 uses
  %i.ab = lshr i32 %i.u, %i.aa
  store i32 %i.ab, ptr %i.t, align 8
  %i.ac = sub nsw i32 %i.s, %i.aa
  store i32 %i.ac, ptr %i.a, align 8
  %i.ad = and i32 %i.z, 511
  br label %stbi__zhuffman_decode_slowpath.exit

bb.k:                                             ; preds = %stbi__fill_bits.exit
  %trunc.i.i.i = trunc i32 %i.u to i16
  %rev.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i)
  %i.ae = zext i16 %rev.i.i.i to i32              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1056
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 7 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp sgt i32 %i.ah, %i.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ai, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.aj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 15
  br i1 %i.ak, label %stbi__zhuffman_decode_slowpath.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = sub nuw nsw i32 16, %i.aj
  %i.am = lshr i32 %i.ae, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1124
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = add nsw i32 %i.ar, %i.av                ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 287
  br i1 %i.ax, label %stbi__zhuffman_decode_slowpath.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1156
  %i.az = sext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i64
  %.not.i21 = icmp eq i64 %indvars.iv.i, %i.bc
  br i1 %.not.i21, label %bb.p, label %stbi__zhuffman_decode_slowpath.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = lshr i32 %i.u, %i.aj
  store i32 %i.bd, ptr %i.t, align 8
  %i.be = sub nsw i32 %i.s, %i.aj
  store i32 %i.be, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1444
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.az
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  br label %stbi__zhuffman_decode_slowpath.exit

stbi__zhuffman_decode_slowpath.exit:              ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.c, %bb.j
  %.0 = phi i32 [ -1, %bb.c ], [ %i.ad, %bb.j ], [ %i.bi, %bb.p ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @stbiw__outfile(ptr noundef nonnull %0, i32 %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 4) %9, ptr nofree noundef readonly captures(none) %10, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %11 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = or i32 %4, %3
  %or.cond.not = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #52
  call void @llvm.va_start.p0(ptr nonnull %11)
  call fastcc void @stbiw__writefv(ptr noundef %0, ptr noundef %10, ptr noundef %11)
  call void @llvm.va_end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store i32 0, ptr %i.a, align 4
  %i.c = icmp eq i32 %4, 0
  br i1 %i.c, label %stbiw__write_pixels.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not.i = icmp eq i32 %i.d, 0                   ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 -1, i32 1 ; 2 uses
  %i.e = add nsw i32 %4, -1
  %.027.i = select i1 %.not.i, i32 %i.e, i32 0    ; 2 uses
  %.026.i = select i1 %.not.i, i32 -1, i32 %4     ; 2 uses
  %.not35.i = icmp eq i32 %3, 0
  %.not.i.i = icmp eq i32 %8, 0                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %.not33.i.i = icmp eq i32 %6, 0
  %i.i = sext i32 %5 to i64                       ; 2 uses
  br i1 %.not35.i, label %.preheader.i, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.c
  %i.j = zext nneg i32 %.027.i to i64
  %i.k = sext i32 %spec.select.i to i64
  %i.l = zext nneg i32 %3 to i64                  ; 2 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %stbiw__write_flush.exit.us.i, %.preheader.us.preheader.i
  %indvars.iv38.i = phi i64 [ %i.j, %.preheader.us.preheader.i ], [ %indvars.iv.next39.i, %stbiw__write_flush.exit.us.i ] ; 2 uses
  %i.m = mul nsw i64 %indvars.iv38.i, %i.l
  br label %bb.d

bb.d:                                             ; preds = %stbiw__write_pixel.exit.us.i, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %stbiw__write_pixel.exit.us.i ] ; 2 uses
  %i.n = add nsw i64 %indvars.iv.i, %i.m
  %i.o = mul nsw i64 %i.n, %i.i
  %i.p = getelementptr inbounds i8, ptr %7, i64 %i.o ; 9 uses
  switch i32 %5, label %bb.n [
    i32 2, label %bb.i
    i32 1, label %bb.i
    i32 4, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %.preheader.i.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = load i8, ptr %i.p, align 1
  %i.v = load i32, ptr %i.f, align 8              ; 3 uses
  %12 = add i32 %i.v, 3
  %i.w = icmp ult i32 %12, 65
  br i1 %i.w, label %stbiw__write3.exit36.i.us.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8
  %i.y = load ptr, ptr %i.g, align 8
  call void %i.x(ptr noundef %i.y, ptr noundef nonnull %i.h, i32 noundef %i.v) #52, !inline_history !235
  br label %stbiw__write3.exit36.i.us.i

stbiw__write3.exit36.i.us.i:                      ; preds = %bb.g, %bb.f
  %i.z = phi i32 [ 0, %bb.g ], [ %i.v, %bb.f ]    ; 2 uses
  %i.aa = add nsw i32 %i.z, 3
  store i32 %i.aa, ptr %i.f, align 8
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 %i.ab ; 3 uses
  store i8 %i.r, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  store i8 %i.t, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %i.ac, i64 2
  store i8 %i.u, ptr %i.ae, align 1
  br label %bb.n

.preheader.i.us.i:                                ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32                    ; 3 uses
  %i.ai = load i8, ptr %i.p, align 1
  %i.aj = xor i8 %i.ai, -1
  %.neg47.i.us.i = zext i8 %i.aj to i32
  %.neg48.i.us.i = mul nuw nsw i32 %.neg47.i.us.i, %i.ah
  %.lhs.trunc.i.us.i = trunc nuw i32 %.neg48.i.us.i to i16
  %i.ak = udiv i16 %.lhs.trunc.i.us.i, 255
  %.zext.i.us.i = trunc nuw i16 %i.ak to i8
  %i.al = xor i8 %.zext.i.us.i, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, %i.ah
  %.lhs.trunc41.i.us.i = trunc nuw i32 %i.ap to i16
  %i.aq = udiv i16 %.lhs.trunc41.i.us.i, 255
  %i.ar = trunc nuw i16 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = xor i8 %i.at, -1
  %.neg.i.us.i = zext i8 %i.au to i32
  %.neg49.i.us.i = mul nuw nsw i32 %.neg.i.us.i, %i.ah
  %.lhs.trunc45.i.us.i = trunc nuw i32 %.neg49.i.us.i to i16
  %i.av = udiv i16 %.lhs.trunc45.i.us.i, 255
  %.zext46.i.us.i = trunc nuw i16 %i.av to i8
  %i.aw = xor i8 %.zext46.i.us.i, -1
  %i.ax = load i32, ptr %i.f, align 8             ; 3 uses
  %13 = add i32 %i.ax, 3
  %i.ay = icmp ult i32 %13, 65
  br i1 %i.ay, label %.thread.i.us.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.us.i
  %i.az = load ptr, ptr %0, align 8
  %i.ba = load ptr, ptr %i.g, align 8
  call void %i.az(ptr noundef %i.ba, ptr noundef nonnull %i.h, i32 noundef %i.ax) #52, !inline_history !235
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.h, %.preheader.i.us.i
  %i.bb = phi i32 [ 0, %bb.h ], [ %i.ax, %.preheader.i.us.i ] ; 2 uses
  %i.bc = add nsw i32 %i.bb, 3
  store i32 %i.bc, ptr %i.f, align 8
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.h, i64 %i.bd ; 3 uses
  store i8 %i.aw, ptr %i.be, align 1
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  store i8 %i.ar, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %i.be, i64 2
  store i8 %i.al, ptr %i.bg, align 1
  br label %stbiw__write_pixel.exit.us.i

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.bh = load i8, ptr %i.p, align 1              ; 4 uses
  %i.bi = load i32, ptr %i.f, align 8             ; 6 uses
  br i1 %.not33.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %14 = add i32 %i.bi, 3
  %i.bj = icmp ult i32 %14, 65
  br i1 %i.bj, label %stbiw__write3.exit.i.us.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = load ptr, ptr %i.g, align 8
  call void %i.bk(ptr noundef %i.bl, ptr noundef nonnull %i.h, i32 noundef %i.bi) #52, !inline_history !235
  br label %stbiw__write3.exit.i.us.i

stbiw__write3.exit.i.us.i:                        ; preds = %bb.k, %bb.j
  %i.bm = phi i32 [ 0, %bb.k ], [ %i.bi, %bb.j ]  ; 2 uses
  %i.bn = add nsw i32 %i.bm, 3
  store i32 %i.bn, ptr %i.f, align 8
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds i8, ptr %i.h, i64 %i.bo ; 3 uses
  store i8 %i.bh, ptr %i.bp, align 1
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  store i8 %i.bh, ptr %i.bq, align 1
  %i.br = getelementptr i8, ptr %i.bp, i64 2
  store i8 %i.bh, ptr %i.br, align 1
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %15 = add i32 %i.bi, 1
  %i.bs = icmp ult i32 %15, 65
  br i1 %i.bs, label %stbiw__write1.exit.i.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = load ptr, ptr %i.g, align 8
  call void %i.bt(ptr noundef %i.bu, ptr noundef nonnull %i.h, i32 noundef %i.bi) #52, !inline_history !236
  br label %stbiw__write1.exit.i.us.i

stbiw__write1.exit.i.us.i:                        ; preds = %bb.m, %bb.l
  %i.bv = phi i32 [ 0, %bb.m ], [ %i.bi, %bb.l ]  ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.f, align 8
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds i8, ptr %i.h, i64 %i.bx
  store i8 %i.bh, ptr %i.by, align 1
  br label %bb.n

bb.n:                                             ; preds = %stbiw__write1.exit.i.us.i, %stbiw__write3.exit.i.us.i, %stbiw__write3.exit36.i.us.i, %bb.d
  br i1 %.not.i.i, label %stbiw__write_pixel.exit.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr i8, ptr %i.p, i64 %i.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = load i32, ptr %i.f, align 8             ; 3 uses
  %16 = add i32 %i.cc, 1
  %i.cd = icmp ult i32 %16, 65
  br i1 %i.cd, label %stbiw__write1.exit37.i.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = load ptr, ptr %i.g, align 8
  call void %i.ce(ptr noundef %i.cf, ptr noundef nonnull %i.h, i32 noundef %i.cc) #52, !inline_history !236
  br label %stbiw__write1.exit37.i.us.i

stbiw__write1.exit37.i.us.i:                      ; preds = %bb.p, %bb.o
  %i.cg = phi i32 [ 0, %bb.p ], [ %i.cc, %bb.o ]  ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.f, align 8
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds i8, ptr %i.h, i64 %i.ci
  store i8 %i.cb, ptr %i.cj, align 1
  br label %stbiw__write_pixel.exit.us.i

stbiw__write_pixel.exit.us.i:                     ; preds = %stbiw__write1.exit37.i.us.i, %bb.n, %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.d

bb.q:                                             ; preds = %._crit_edge.us.i
  %i.ck = load ptr, ptr %0, align 8
  %i.cl = load ptr, ptr %i.g, align 8
  call void %i.ck(ptr noundef %i.cl, ptr noundef nonnull %i.h, i32 noundef %i.cp) #52, !inline_history !237
  store i32 0, ptr %i.f, align 8
  br label %stbiw__write_flush.exit.us.i

stbiw__write_flush.exit.us.i:                     ; preds = %._crit_edge.us.i, %bb.q
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = load ptr, ptr %i.g, align 8
  call void %i.cm(ptr noundef %i.cn, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 4) %9) #52, !inline_history !238
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, %i.k ; 2 uses
  %i.co = trunc nsw i64 %indvars.iv.next39.i to i32
  %.not31.us.i = icmp eq i32 %.026.i, %i.co
  br i1 %.not31.us.i, label %stbiw__write_pixels.exit, label %.preheader.us.i

._crit_edge.us.i:                                 ; preds = %stbiw__write_pixel.exit.us.i
  %i.cp = load i32, ptr %i.f, align 8             ; 2 uses
  %.not.i32.us.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i32.us.i, label %stbiw__write_flush.exit.us.i, label %bb.q

.preheader.i:                                     ; preds = %bb.c, %stbiw__write_flush.exit.i
  %.134.i = phi i32 [ %i.cv, %stbiw__write_flush.exit.i ], [ %.027.i, %bb.c ]
  %i.cq = load i32, ptr %i.f, align 8             ; 2 uses
  %.not.i32.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i32.i, label %stbiw__write_flush.exit.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.cr = load ptr, ptr %0, align 8
  %i.cs = load ptr, ptr %i.g, align 8
  call void %i.cr(ptr noundef %i.cs, ptr noundef nonnull %i.h, i32 noundef %i.cq) #52, !inline_history !237
  store i32 0, ptr %i.f, align 8
  br label %stbiw__write_flush.exit.i

stbiw__write_flush.exit.i:                        ; preds = %bb.r, %.preheader.i
  %i.ct = load ptr, ptr %0, align 8
  %i.cu = load ptr, ptr %i.g, align 8
  call void %i.ct(ptr noundef %i.cu, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 4) %9) #52, !inline_history !238
  %i.cv = add nsw i32 %.134.i, %spec.select.i     ; 2 uses
  %.not31.i = icmp eq i32 %i.cv, %.026.i
  br i1 %.not31.i, label %stbiw__write_pixels.exit, label %.preheader.i

stbiw__write_pixels.exit:                         ; preds = %stbiw__write_flush.exit.us.i, %stbiw__write_flush.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #52
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %stbiw__write_pixels.exit
  %.0 = phi i32 [ 1, %stbiw__write_pixels.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #45

; Function Attrs: nounwind uwtable
define internal fastcc void @stbiw__writefv(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not20 = icmp eq i8 %i.d, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.h = phi i8 [ %i.d, %.lr.ph ], [ %i.av, %bb.o ]
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.o ]
  %i.i = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  switch i8 %i.h, label %._crit_edge [
    i8 32, label %bb.o
    i8 49, label %bb.c
    i8 50, label %bb.g
    i8 52, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.j = load i32, ptr %2, align 8                ; 3 uses
  %i.k = icmp ult i32 %i.j, 41
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = add nuw nsw i32 %i.j, 8
  store i32 %i.o, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.s = load i32, ptr %i.r, align 4
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 1
  %i.u = load ptr, ptr %0, align 8
  %i.v = load ptr, ptr %i.g, align 8
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.w = load i32, ptr %2, align 8                ; 3 uses
  %i.x = icmp ult i32 %i.w, 41
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = add nuw nsw i32 %i.w, 8
  store i32 %i.ab, ptr %2, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.aa, %bb.h ], [ %i.ac, %bb.i ]
  %i.af = load i32, ptr %i.ae, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %i.b, align 2
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = load ptr, ptr %i.g, align 8
  call void %i.ah(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %2, align 8               ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 41
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = add nuw nsw i32 %i.aj, 8
  store i32 %i.ao, ptr %2, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.e, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi ptr [ %i.an, %bb.l ], [ %i.ap, %bb.m ]
  %i.as = load i32, ptr %i.ar, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #52
  store i32 %i.as, ptr %i.c, align 4
  %i.at = load ptr, ptr %0, align 8
  %i.au = load ptr, ptr %i.g, align 8
  call void %i.at(ptr noundef %i.au, ptr noundef nonnull %i.c, i32 noundef 4) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.b
  %i.av = load i8, ptr %i.i, align 1              ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %._crit_edge, label %bb.b
end_hunk_1
