Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@stbtt_GetGlyphBitmapBoxSubpixel:bb.a
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nsw i32 %1, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 4 uses
  %.val28.i.i = load i8, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  %.val29.i.i = load i8, ptr %i.ag, align 1
  %i.ah = zext i8 %.val28.i.i to i32
  %i.ai = zext i8 %.val29.i.i to i32
  %i.aj = shl nuw nsw i32 %i.ah, 9
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.val.i.i = load i8, ptr %i.am, align 1
  %i.an = getelementptr i8, ptr %i.af, i64 3
  %.val27.i.i = load i8, ptr %i.an, align 1
  %i.ao = zext i8 %.val.i.i to i32
  %i.ap = zext i8 %.val27.i.i to i32
  %i.aq = shl nuw nsw i32 %i.ao, 9
  %i.ar = shl nuw nsw i32 %i.ap, 1
  %i.as = or disjoint i32 %i.ar, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = shl nsw i32 %1, 2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.ba, %bb.g ], [ %i.as, %bb.f ]
  %.pn.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %.023.i.i = add i32 %.pn.i.i, %i.w              ; 2 uses
  %i.bb = icmp eq i32 %.pn.i.i, %.sink.i.i
  %i.bc = icmp slt i32 %.023.i.i, 0
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = zext nneg i32 %.023.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %.val38.i = load i8, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %i.be, i64 3
  %.val39.i = load i8, ptr %i.bg, align 1
  %i.bh = zext i8 %.val38.i to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = zext i8 %.val39.i to i16
  %i.bk = or disjoint i16 %i.bi, %i.bj
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.val36.i = load i8, ptr %i.bm, align 1
  %i.bn = getelementptr i8, ptr %i.be, i64 5
  %.val37.i = load i8, ptr %i.bn, align 1
  %i.bo = zext i8 %.val36.i to i16
  %i.bp = shl nuw i16 %i.bo, 8
  %i.bq = zext i8 %.val37.i to i16
  %i.br = or disjoint i16 %i.bp, %i.bq
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %.val34.i = load i8, ptr %i.bt, align 1
  %i.bu = getelementptr i8, ptr %i.be, i64 7
  %.val35.i = load i8, ptr %i.bu, align 1
  %i.bv = zext i8 %.val34.i to i16
  %i.bw = shl nuw i16 %i.bv, 8
  %i.bx = zext i8 %.val35.i to i16
  %i.by = or disjoint i16 %i.bw, %i.bx
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val.i = load i8, ptr %i.ca, align 1
  %i.cb = getelementptr i8, ptr %i.be, i64 9
  %.val33.i = load i8, ptr %i.cb, align 1
  %i.cc = zext i8 %.val.i to i16
  %i.cd = shl nuw i16 %i.cc, 8
  %i.ce = zext i8 %.val33.i to i16
  %i.cf = or disjoint i16 %i.cd, %i.ce
  %i.cg = sext i16 %i.cf to i32
  br label %stbtt_GetGlyphBox.exit

bb.j:                                             ; preds = %bb.h, %bb.c, %bb.d
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %bb.k

stbtt_GetGlyphBox.exit:                           ; preds = %bb.i, %bb.b
  %.036 = phi i32 [ %i.bl, %bb.i ], [ %i.f, %bb.b ]
  %.035 = phi i32 [ %i.bs, %bb.i ], [ %i.i, %bb.b ]
  %.034 = phi i32 [ %i.bz, %bb.i ], [ %i.l, %bb.b ]
  %.0 = phi i32 [ %i.cg, %bb.i ], [ %i.o, %bb.b ]
  %i.ch = sub nsw i32 0, %.0
  %i.ci = sub nsw i32 0, %.035
  %i.cj = insertelement <4 x i32> poison, i32 %.036, i64 0
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.ch, i64 1
  %i.cl = insertelement <4 x i32> %i.ck, i32 %.034, i64 2
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.ci, i64 3
  %i.cn = sitofp <4 x i32> %i.cm to <4 x float>
  %i.co = insertelement <4 x float> poison, float %2, i64 0
  %i.cp = insertelement <4 x float> %i.co, float %3, i64 1
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.cq, <4 x float> zeroinitializer) ; 4 uses
  %i.cs = extractelement <4 x float> %i.cr, i64 0
  %i.ct = tail call float @llvm.floor.f32(float %i.cs)
  %i.cu = fptosi float %i.ct to i32
  store i32 %i.cu, ptr %4, align 4
  %i.cv = extractelement <4 x float> %i.cr, i64 1
  %i.cw = tail call float @llvm.floor.f32(float %i.cv)
  %i.cx = fptosi float %i.cw to i32
  store i32 %i.cx, ptr %5, align 4
  %i.cy = extractelement <4 x float> %i.cr, i64 2
  %i.cz = tail call float @llvm.ceil.f32(float %i.cy)
  %i.da = fptosi float %i.cz to i32
  store i32 %i.da, ptr %6, align 4
  %i.db = extractelement <4 x float> %i.cr, i64 3
  %i.dc = tail call float @llvm.ceil.f32(float %i.db)
  %i.dd = fptosi float %i.dc to i32
  br label %bb.k

bb.k:                                             ; preds = %stbtt_GetGlyphBox.exit, %bb.j
  %storemerge = phi i32 [ 0, %bb.j ], [ %i.dd, %stbtt_GetGlyphBox.exit ]
  store i32 %storemerge, ptr %7, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbtt__run_charstring(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #23 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 48 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %i.d, i64 %i.f, i32 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 3 uses
  store ptr %i.h, ptr %4, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.i, ptr %.sroa.469.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %stbtt__buf_get8.exit.lr.ph, label %.critedge

stbtt__buf_get8.exit.lr.ph:                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.3.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.gep.sroa.gep387 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep390.sroa.gep393 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep390.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.lr.ph, %.thread
  %i.ag = phi i32 [ %i.m, %stbtt__buf_get8.exit.lr.ph ], [ %i.pk, %.thread ] ; 9 uses
  %i.ah = phi i32 [ %i.k, %stbtt__buf_get8.exit.lr.ph ], [ %i.pj, %.thread ] ; 6 uses
  %.0234328 = phi i32 [ 1, %stbtt__buf_get8.exit.lr.ph ], [ %.1235302, %.thread ] ; 22 uses
  %.0237327 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2239301, %.thread ] ; 26 uses
  %.0240326 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.1241300, %.thread ] ; 28 uses
  %.sroa.073.0325 = phi ptr [ %.sroa.073.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.073.3299, %.thread ] ; 27 uses
  %.sroa.5.0324 = phi i64 [ %.sroa.5.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.5.3298, %.thread ] ; 27 uses
  %.0246323 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2248297, %.thread ] ; 26 uses
  %.0253320 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %i.pi, %.thread ] ; 45 uses
  %i.ai = load ptr, ptr %4, align 8               ; 6 uses
  %i.aj = add nsw i32 %i.ah, 1                    ; 7 uses
  store i32 %i.aj, ptr %.sroa.469.0..sroa_idx, align 8
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1             ; 6 uses
  switch i8 %i.am, label %bb.bp [
    i8 19, label %bb.b
    i8 20, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 18, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.f
    i8 4, label %bb.h
    i8 22, label %bb.j
    i8 5, label %bb.l
    i8 7, label %bb.m
    i8 6, label %bb.n
    i8 31, label %bb.s
    i8 30, label %bb.t
    i8 8, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.af
    i8 26, label %bb.ah
    i8 27, label %bb.ah
    i8 10, label %bb.aj
    i8 29, label %bb.au
    i8 11, label %bb.bd
    i8 14, label %bb.bf
    i8 12, label %bb.bg
  ]

bb.b:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %.not274 = icmp eq i32 %.0234328, 0
  br i1 %.not274, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = sdiv i32 %.0253320, 2
  %i.ao = add nsw i32 %.0237327, %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1238 = phi i32 [ %i.ao, %bb.c ], [ %.0237327, %bb.b ] ; 2 uses
  %i.ap = add nsw i32 %.1238, 7
  %i.aq = sdiv i32 %i.ap, 8
  %i.ar = add nsw i32 %i.aq, %i.aj                ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.ag)
  %..i.i = select i1 %i.as, i32 %i.ag, i32 %i.at
  store i32 %..i.i, ptr %.sroa.469.0..sroa_idx, align 8
  br label %.thread

bb.e:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.au = sdiv i32 %.0253320, 2
  %i.av = add nsw i32 %.0237327, %i.au
  br label %.thread

bb.f:                                             ; preds = %stbtt__buf_get8.exit
  %i.aw = icmp slt i32 %.0253320, 2
  br i1 %i.aw, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = zext nneg i32 %.0253320 to i64
  %i.ay = getelementptr [4 x i8], ptr %i.a, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = getelementptr i8, ptr %i.ay, i64 -4
  %i.bc = load float, ptr %i.bb, align 4
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.ba, float noundef %i.bc)
  br label %.thread

bb.h:                                             ; preds = %stbtt__buf_get8.exit
  %i.bd = icmp slt i32 %.0253320, 1
  br i1 %i.bd, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = zext nneg i32 %.0253320 to i64
  %i.bf = getelementptr [4 x i8], ptr %i.a, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %i.bh = load float, ptr %i.bg, align 4
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.bh)
  br label %.thread

bb.j:                                             ; preds = %stbtt__buf_get8.exit
  %i.bi = icmp slt i32 %.0253320, 1
  br i1 %i.bi, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = zext nneg i32 %.0253320 to i64
  %i.bk = getelementptr [4 x i8], ptr %i.a, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load float, ptr %i.bl, align 4
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bm, float noundef 0.000000e+00)
  br label %.thread

bb.l:                                             ; preds = %stbtt__buf_get8.exit
  %i.bn = icmp slt i32 %.0253320, 2
  br i1 %i.bn, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %5 = zext nneg i32 %.0253320 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv383 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next384, %.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv383 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load float, ptr %i.bq, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef %i.bp, float noundef %i.br)
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 2 ; 2 uses
  %6 = or disjoint i64 %indvars.iv.next384, 1
  %7 = icmp samesign ult i64 %6, %5
  br i1 %7, label %.preheader, label %.thread

bb.m:                                             ; preds = %stbtt__buf_get8.exit
  %i.bs = icmp slt i32 %.0253320, 1
  br i1 %i.bs, label %.critedge, label %bb.q

bb.n:                                             ; preds = %stbtt__buf_get8.exit
  %i.bt = icmp slt i32 %.0253320, 1
  br i1 %i.bt, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.r
  %.1250 = phi i32 [ %i.cb, %bb.r ], [ 0, %bb.n ] ; 3 uses
  %.not273 = icmp slt i32 %.1250, %.0253320
  br i1 %.not273, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bu = sext i32 %.1250 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef %i.bw, float noundef 0.000000e+00)
  %i.bx = add nsw i32 %.1250, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %.2251 = phi i32 [ 0, %bb.m ], [ %i.bx, %bb.p ] ; 3 uses
  %.not272 = icmp slt i32 %.2251, %.0253320
  br i1 %.not272, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.by = sext i32 %.2251 to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.ca)
  %i.cb = add nsw i32 %.2251, 1
  br label %bb.o

bb.s:                                             ; preds = %stbtt__buf_get8.exit
  %i.cc = icmp slt i32 %.0253320, 4
  br i1 %i.cc, label %.critedge, label %bb.y

bb.t:                                             ; preds = %stbtt__buf_get8.exit
  %i.cd = icmp slt i32 %.0253320, 4
  br i1 %i.cd, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.ab
  %.3252 = phi i32 [ %i.dl, %bb.ab ], [ 0, %bb.t ] ; 4 uses
  %i.ce = add nsw i32 %.3252, 3                   ; 2 uses
  %.not271 = icmp slt i32 %i.ce, %.0253320
  br i1 %.not271, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.cf = sext i32 %.3252 to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf ; 4 uses
  %i.ch = load float, ptr %i.cg, align 4
  %i.ci = getelementptr i8, ptr %i.cg, i64 4
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr i8, ptr %i.cg, i64 8
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = sext i32 %i.ce to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = sub nsw i32 %.0253320, %.3252
  %i.cq = icmp eq i32 %i.cp, 5
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr i8, ptr %i.cg, i64 16
  %i.cs = load float, ptr %i.cr, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ct = phi float [ %i.cs, %bb.w ], [ 0.000000e+00, %bb.v ]
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.ch, float noundef %i.cj, float noundef %i.cl, float noundef %i.co, float noundef %i.ct)
  %i.cu = add nsw i32 %.3252, 4
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.x
  %.4 = phi i32 [ 0, %bb.s ], [ %i.cu, %bb.x ]    ; 4 uses
  %i.cv = add nsw i32 %.4, 3                      ; 2 uses
  %.not270 = icmp slt i32 %i.cv, %.0253320
  br i1 %.not270, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.cw = sext i32 %.4 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cw ; 4 uses
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = getelementptr i8, ptr %i.cx, i64 4
  %i.da = load float, ptr %i.cz, align 4
  %i.db = getelementptr i8, ptr %i.cx, i64 8
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = sub nsw i32 %.0253320, %.4
  %i.de = icmp eq i32 %i.dd, 5
  br i1 %i.de, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.df = getelementptr i8, ptr %i.cx, i64 16
  %i.dg = load float, ptr %i.df, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dh = phi float [ %i.dg, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.di = sext i32 %i.cv to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.cy, float noundef 0.000000e+00, float noundef %i.da, float noundef %i.dc, float noundef %i.dh, float noundef %i.dk)
  %i.dl = add nsw i32 %.4, 4
  br label %bb.u

bb.ac:                                            ; preds = %stbtt__buf_get8.exit
  %i.dm = icmp slt i32 %.0253320, 6
  br i1 %i.dm, label %.critedge, label %.preheader303.preheader

.preheader303.preheader:                          ; preds = %bb.ac
  %i.dn = zext nneg i32 %.0253320 to i64
  br label %.preheader303

.preheader303:                                    ; preds = %.preheader303.preheader, %.preheader303
  %indvars.iv380 = phi i64 [ 0, %.preheader303.preheader ], [ %indvars.iv.next381, %.preheader303 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv380 ; 6 uses
  %i.dp = load float, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dt = load float, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dx = load float, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.dz = load float, ptr %i.dy, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.dp, float noundef %i.dr, float noundef %i.dt, float noundef %i.dv, float noundef %i.dx, float noundef %i.dz)
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 6
  %i.ea = add nuw nsw i64 %indvars.iv380, 11
  %i.eb = icmp samesign ult i64 %i.ea, %i.dn
  br i1 %i.eb, label %.preheader303, label %.thread

bb.ad:                                            ; preds = %stbtt__buf_get8.exit
  %i.ec = icmp slt i32 %.0253320, 8
  br i1 %i.ec, label %.critedge, label %.lr.ph314.preheader

.lr.ph314.preheader:                              ; preds = %bb.ad
  %i.ed = add nsw i32 %.0253320, -2
  %i.ee = zext nneg i32 %i.ed to i64
  br label %.lr.ph314

.lr.ph314:                                        ; preds = %.lr.ph314.preheader, %.lr.ph314
  %indvars.iv377 = phi i64 [ 0, %.lr.ph314.preheader ], [ %indvars.iv.next378, %.lr.ph314 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv377 ; 6 uses
  %i.eg = load float, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ei = load float, ptr %i.eh, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ek = load float, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.em = load float, ptr %i.el, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eo = load float, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eq = load float, ptr %i.ep, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.eg, float noundef %i.ei, float noundef %i.ek, float noundef %i.em, float noundef %i.eo, float noundef %i.eq)
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 6 ; 3 uses
  %i.er = add nuw nsw i64 %indvars.iv377, 11
  %i.es = icmp samesign ult i64 %i.er, %i.ee
  br i1 %i.es, label %.lr.ph314, label %._crit_edge315

._crit_edge315:                                   ; preds = %.lr.ph314
  %i.et = trunc nuw nsw i64 %indvars.iv.next378 to i32
  %i.eu = or disjoint i32 %i.et, 1                ; 2 uses
  %.not269 = icmp slt i32 %i.eu, %.0253320
  br i1 %.not269, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %._crit_edge315
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next378
  %i.ew = load float, ptr %i.ev, align 4
  %i.ex = zext nneg i32 %i.eu to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef %i.ew, float noundef %i.ez)
  br label %.thread

bb.af:                                            ; preds = %stbtt__buf_get8.exit
  %i.fa = icmp slt i32 %.0253320, 8
  br i1 %i.fa, label %.critedge, label %.lr.ph311.preheader

.lr.ph311.preheader:                              ; preds = %bb.af
  %i.fb = add nsw i32 %.0253320, -6
  %8 = zext nneg i32 %i.fb to i64
  br label %.lr.ph311

.lr.ph311:                                        ; preds = %.lr.ph311.preheader, %.lr.ph311
  %indvars.iv374 = phi i64 [ 0, %.lr.ph311.preheader ], [ %indvars.iv.next375, %.lr.ph311 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv374 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.ff = load float, ptr %i.fe, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef %i.fd, float noundef %i.ff)
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 2 ; 4 uses
  %9 = or disjoint i64 %indvars.iv.next375, 1
  %10 = icmp samesign ult i64 %9, %8
  br i1 %10, label %.lr.ph311, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph311
  %i.fg = trunc nuw nsw i64 %indvars.iv.next375 to i32
  %i.fh = add nuw nsw i32 %i.fg, 5                ; 2 uses
  %.not268 = icmp samesign ult i32 %i.fh, %.0253320
  br i1 %.not268, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %._crit_edge
  %11 = add nuw i32 %.0253320, 2147483640
  %12 = and i32 %11, 2147483646
  %narrow = add nuw i32 %12, 3
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next375 ; 4 uses
  %i.fj = load float, ptr %i.fi, align 4
  %i.fk = zext nneg i32 %narrow to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fo = load float, ptr %i.fn, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fq = load float, ptr %i.fp, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fs = load float, ptr %i.fr, align 4
  %i.ft = zext nneg i32 %i.fh to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.fj, float noundef %i.fm, float noundef %i.fo, float noundef %i.fq, float noundef %i.fs, float noundef %i.fv)
  br label %.thread

bb.ah:                                            ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.fw = icmp slt i32 %.0253320, 4
  br i1 %i.fw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.8 = and i32 %.0253320, 1
  %i.fx = add nuw nsw i32 %.8, 3
  %i.fy = icmp samesign ult i32 %i.fx, %.0253320
  br i1 %i.fy, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ai
  %.not267 = trunc i32 %.0253320 to i1            ; 6 uses
  %i.fz = load float, ptr %i.a, align 16
  %.0242 = select i1 %.not267, float %i.fz, float 0.000000e+00 ; 2 uses
  %i.ga = icmp eq i8 %i.am, 27
  %.not267.mask419 = and i32 %.0253320, 1
  %i.gb = zext nneg i32 %.not267.mask419 to i64   ; 6 uses
  %i.gc = zext nneg i32 %.0253320 to i64          ; 3 uses
  %.val420 = load float, ptr %i.o, align 4        ; 3 uses
  %.val421 = load float, ptr %i.a, align 16
  %i.gd = select i1 %.not267, float %.val420, float %.val421 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load float, ptr %i.gf, align 4          ; 2 uses
  %i.gh = add nuw nsw i64 %i.gb, 7
  %i.gi = icmp samesign ult i64 %i.gh, %i.gc      ; 2 uses
  br i1 %i.ga, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep387.val = load float, ptr %.sroa.gep.sroa.gep387, align 8 ; 2 uses
  %i.gj = select i1 %.not267, float %.sroa.gep.sroa.gep387.val, float %.val420
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.gk = select i1 %.not267, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep387.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %.0242, float noundef %i.gd, float noundef %i.gj, float noundef %i.gk, float noundef 0.000000e+00, float noundef %i.gg)
  br i1 %i.gi, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.gb, 7
  %indvars.iv.next361.peel = or disjoint i64 %i.gb, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep390.sroa.gep393.val = load float, ptr %.sroa.gep390.sroa.gep393, align 8 ; 2 uses
  %i.gl = select i1 %.not267, float %.sroa.gep390.sroa.gep393.val, float %.val420
  %.sroa.gep390.sroa.gep.val = load float, ptr %.sroa.gep390.sroa.gep, align 4
  %i.gm = select i1 %.not267, float %.sroa.gep390.sroa.gep.val, float %.sroa.gep390.sroa.gep393.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.gd, float noundef %.0242, float noundef %i.gl, float noundef %i.gm, float noundef %i.gg, float noundef 0.000000e+00)
  br i1 %i.gi, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next367.peel = add nuw nsw i64 %i.gb, 7
  %indvars.iv.next369.peel = or disjoint i64 %i.gb, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv368 = phi i64 [ %indvars.iv.next369.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next369, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv366 = phi i64 [ %indvars.iv.next367.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next367, %.lr.ph.split.us ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv368 ; 3 uses
  %i.go = load float, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gq = load float, ptr %i.gp, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gs = load float, ptr %i.gr, align 4
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv366
  %i.gu = load float, ptr %i.gt, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.go, float noundef 0.000000e+00, float noundef %i.gq, float noundef %i.gs, float noundef %i.gu, float noundef 0.000000e+00)
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 4
  %i.gv = add nuw nsw i64 %indvars.iv368, 7
  %i.gw = icmp samesign ult i64 %i.gv, %i.gc
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 4
  br i1 %i.gw, label %.lr.ph.split.us, label %.thread, !llvm.loop !79

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv360 = phi i64 [ %indvars.iv.next361.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next361, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv360 ; 3 uses
  %i.gy = load float, ptr %i.gx, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.ha = load float, ptr %i.gz, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hc = load float, ptr %i.hb, align 4
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.he = load float, ptr %i.hd, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.gy, float noundef %i.ha, float noundef %i.hc, float noundef 0.000000e+00, float noundef %i.he)
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 4
  %i.hf = add nuw nsw i64 %indvars.iv360, 7
  %i.hg = icmp samesign ult i64 %i.hf, %i.gc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.hg, label %.lr.ph.split, label %.thread, !llvm.loop !80

bb.aj:                                            ; preds = %stbtt__buf_get8.exit
  %.not = icmp eq i32 %.0246323, 0
  br i1 %.not, label %bb.ak, label %bb.au

bb.ak:                                            ; preds = %bb.aj
  %i.hh = load i32, ptr %i.z, align 4             ; 13 uses
  %.not266 = icmp eq i32 %i.hh, 0
  br i1 %.not266, label %bb.au, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8 ; 9 uses
  %i.hi = tail call i32 @llvm.smin.i32(i32 %i.hh, i32 0) ; 2 uses
  %.not.i.i = icmp sgt i32 %i.hh, 0
  br i1 %.not.i.i, label %stbtt__buf_get8.exit.i, label %stbtt__buf_get8.exit.thread.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.al
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1
  switch i8 %i.hl, label %stbtt__cid_get_glyph_subrs.exit [
    i8 0, label %stbtt__buf_get8.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %stbtt__buf_get8.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.hh, 1
  br i1 %.not.i.i.not.i, label %stbtt__buf_get8.exit.i.i, label %bb.an

stbtt__buf_get8.exit.thread.i:                    ; preds = %stbtt__buf_get8.exit.i, %bb.al
  %.sroa.9.164.i = phi i32 [ 1, %stbtt__buf_get8.exit.i ], [ %i.hi, %bb.al ]
  %i.hm = add nsw i32 %.sroa.9.164.i, %1          ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 0
  %i.ho = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 %i.hh)
  %..i.i.i = select i1 %i.hn, i32 %i.hh, i32 %i.ho ; 2 uses
  %.not.i25.i = icmp slt i32 %..i.i.i, %i.hh
  br i1 %.not.i25.i, label %bb.am, label %stbtt__cid_get_glyph_subrs.exit

bb.am:                                            ; preds = %stbtt__buf_get8.exit.thread.i
  %i.hp = sext i32 %..i.i.i to i64
  %i.hq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i32
  br label %stbtt__cid_get_glyph_subrs.exit

bb.an:                                            ; preds = %.preheader.preheader.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 8
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.an, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.an ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.hw, %bb.an ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.hh
  br i1 %.not.i.i.1.i, label %bb.ao, label %stbtt__buf_get8.exit.i.1.i

bb.ao:                                            ; preds = %stbtt__buf_get8.exit.i.i
  %i.hx = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.hy = zext nneg i32 %.sroa.9.3.i to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i32
  %i.ic = or disjoint i32 %.0.i.i.i, %i.ib
  br label %stbtt__buf_get8.exit.i.1.i

stbtt__buf_get8.exit.i.1.i:                       ; preds = %bb.ao, %stbtt__buf_get8.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.hx, %bb.ao ], [ %.sroa.9.3.i, %stbtt__buf_get8.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.ic, %bb.ao ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i.i31.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.hh
  br i1 %.not.i.i31.i, label %bb.ap, label %stbtt__buf_get8.exit.i32.i

bb.ap:                                            ; preds = %stbtt__buf_get8.exit.i.1.i
  %i.id = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.ie = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = zext i8 %i.ig to i32
  %i.ii = shl nuw nsw i32 %i.ih, 8
  br label %stbtt__buf_get8.exit.i32.i

stbtt__buf_get8.exit.i32.i:                       ; preds = %bb.ap, %stbtt__buf_get8.exit.i.1.i
  %.sroa.9.5.i = phi i32 [ %i.id, %bb.ap ], [ %.sroa.9.3.1.i, %stbtt__buf_get8.exit.i.1.i ] ; 4 uses
  %.0.i.i33.i = phi i32 [ %i.ii, %bb.ap ], [ 0, %stbtt__buf_get8.exit.i.1.i ] ; 2 uses
  %.not.i.i31.1.i = icmp samesign ult i32 %.sroa.9.5.i, %i.hh
  br i1 %.not.i.i31.1.i, label %bb.aq, label %stbtt__buf_get8.exit.i32.1.i

bb.aq:                                            ; preds = %stbtt__buf_get8.exit.i32.i
  %i.ij = add nuw nsw i32 %.sroa.9.5.i, 1
  %i.ik = zext nneg i32 %.sroa.9.5.i to i64
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1
  %i.in = zext i8 %i.im to i32
  %i.io = or disjoint i32 %.0.i.i33.i, %i.in
  br label %stbtt__buf_get8.exit.i32.1.i

end_hunk_0
