Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@stbtt_GetGlyphBitmapBoxSubpixel:bb.a
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
  %i.ag = phi i32 [ %i.m, %stbtt__buf_get8.exit.lr.ph ], [ %i.pq, %.thread ] ; 9 uses
  %i.ah = phi i32 [ %i.k, %stbtt__buf_get8.exit.lr.ph ], [ %i.pp, %.thread ] ; 6 uses
  %.0234328 = phi i32 [ 1, %stbtt__buf_get8.exit.lr.ph ], [ %.1235302, %.thread ] ; 22 uses
  %.0237327 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2239301, %.thread ] ; 26 uses
  %.0240326 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.1241300, %.thread ] ; 28 uses
  %.sroa.073.0325 = phi ptr [ %.sroa.073.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.073.3299, %.thread ] ; 27 uses
  %.sroa.5.0324 = phi i64 [ %.sroa.5.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.5.3298, %.thread ] ; 27 uses
  %.0246323 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2248297, %.thread ] ; 26 uses
  %.0253320 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %i.po, %.thread ] ; 45 uses
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
  %i.bo = zext nneg i32 %.0253320 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv383 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next384, %.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv383 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef %i.bq, float noundef %i.bs)
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 2 ; 2 uses
  %5 = or disjoint i64 %indvars.iv.next384, 1
  %i.bt = icmp samesign ult i64 %5, %i.bo
  br i1 %i.bt, label %.preheader, label %.thread

bb.m:                                             ; preds = %stbtt__buf_get8.exit
  %i.bu = icmp slt i32 %.0253320, 1
  br i1 %i.bu, label %.critedge, label %bb.q

bb.n:                                             ; preds = %stbtt__buf_get8.exit
  %i.bv = icmp slt i32 %.0253320, 1
  br i1 %i.bv, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.r
  %.1250 = phi i32 [ %i.cd, %bb.r ], [ 0, %bb.n ] ; 3 uses
  %.not273 = icmp slt i32 %.1250, %.0253320
  br i1 %.not273, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bw = sext i32 %.1250 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef %i.by, float noundef 0.000000e+00)
  %i.bz = add nsw i32 %.1250, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %.2251 = phi i32 [ 0, %bb.m ], [ %i.bz, %bb.p ] ; 3 uses
  %.not272 = icmp slt i32 %.2251, %.0253320
  br i1 %.not272, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ca = sext i32 %.2251 to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.cc)
  %i.cd = add nsw i32 %.2251, 1
  br label %bb.o

bb.s:                                             ; preds = %stbtt__buf_get8.exit
  %i.ce = icmp slt i32 %.0253320, 4
  br i1 %i.ce, label %.critedge, label %bb.y

bb.t:                                             ; preds = %stbtt__buf_get8.exit
  %i.cf = icmp slt i32 %.0253320, 4
  br i1 %i.cf, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.ab
  %.3252 = phi i32 [ %i.dn, %bb.ab ], [ 0, %bb.t ] ; 4 uses
  %i.cg = add nsw i32 %.3252, 3                   ; 2 uses
  %.not271 = icmp slt i32 %i.cg, %.0253320
  br i1 %.not271, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.ch = sext i32 %.3252 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ch ; 4 uses
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr i8, ptr %i.ci, i64 4
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = getelementptr i8, ptr %i.ci, i64 8
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = sext i32 %i.cg to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = sub nsw i32 %.0253320, %.3252
  %i.cs = icmp eq i32 %i.cr, 5
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr i8, ptr %i.ci, i64 16
  %i.cu = load float, ptr %i.ct, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cv = phi float [ %i.cu, %bb.w ], [ 0.000000e+00, %bb.v ]
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.cj, float noundef %i.cl, float noundef %i.cn, float noundef %i.cq, float noundef %i.cv)
  %i.cw = add nsw i32 %.3252, 4
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.x
  %.4 = phi i32 [ 0, %bb.s ], [ %i.cw, %bb.x ]    ; 4 uses
  %i.cx = add nsw i32 %.4, 3                      ; 2 uses
  %.not270 = icmp slt i32 %i.cx, %.0253320
  br i1 %.not270, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.cy = sext i32 %.4 to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cy ; 4 uses
  %i.da = load float, ptr %i.cz, align 4
  %i.db = getelementptr i8, ptr %i.cz, i64 4
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr i8, ptr %i.cz, i64 8
  %i.de = load float, ptr %i.dd, align 4
  %i.df = sub nsw i32 %.0253320, %.4
  %i.dg = icmp eq i32 %i.df, 5
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr i8, ptr %i.cz, i64 16
  %i.di = load float, ptr %i.dh, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dj = phi float [ %i.di, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.dk = sext i32 %i.cx to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.da, float noundef 0.000000e+00, float noundef %i.dc, float noundef %i.de, float noundef %i.dj, float noundef %i.dm)
  %i.dn = add nsw i32 %.4, 4
  br label %bb.u

bb.ac:                                            ; preds = %stbtt__buf_get8.exit
  %i.do = icmp slt i32 %.0253320, 6
  br i1 %i.do, label %.critedge, label %.preheader303.preheader

.preheader303.preheader:                          ; preds = %bb.ac
  %i.dp = zext nneg i32 %.0253320 to i64
  br label %.preheader303

.preheader303:                                    ; preds = %.preheader303.preheader, %.preheader303
  %indvars.iv380 = phi i64 [ 0, %.preheader303.preheader ], [ %indvars.iv.next381, %.preheader303 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv380 ; 6 uses
  %i.dr = load float, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dv = load float, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dz = load float, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.eb = load float, ptr %i.ea, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.dr, float noundef %i.dt, float noundef %i.dv, float noundef %i.dx, float noundef %i.dz, float noundef %i.eb)
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 6
  %i.ec = add nuw nsw i64 %indvars.iv380, 11
  %i.ed = icmp samesign ult i64 %i.ec, %i.dp
  br i1 %i.ed, label %.preheader303, label %.thread

bb.ad:                                            ; preds = %stbtt__buf_get8.exit
  %i.ee = icmp slt i32 %.0253320, 8
  br i1 %i.ee, label %.critedge, label %.lr.ph314.preheader

.lr.ph314.preheader:                              ; preds = %bb.ad
  %i.ef = add nsw i32 %.0253320, -2
  %i.eg = zext nneg i32 %i.ef to i64
  br label %.lr.ph314

.lr.ph314:                                        ; preds = %.lr.ph314.preheader, %.lr.ph314
  %indvars.iv377 = phi i64 [ 0, %.lr.ph314.preheader ], [ %indvars.iv.next378, %.lr.ph314 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv377 ; 6 uses
  %i.ei = load float, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = load float, ptr %i.ej, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.em = load float, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.eo = load float, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.eq = load float, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  %i.es = load float, ptr %i.er, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.ei, float noundef %i.ek, float noundef %i.em, float noundef %i.eo, float noundef %i.eq, float noundef %i.es)
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 6 ; 3 uses
  %i.et = add nuw nsw i64 %indvars.iv377, 11
  %i.eu = icmp samesign ult i64 %i.et, %i.eg
  br i1 %i.eu, label %.lr.ph314, label %._crit_edge315

._crit_edge315:                                   ; preds = %.lr.ph314
  %i.ev = trunc nuw nsw i64 %indvars.iv.next378 to i32
  %i.ew = or disjoint i32 %i.ev, 1                ; 2 uses
  %.not269 = icmp slt i32 %i.ew, %.0253320
  br i1 %.not269, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %._crit_edge315
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next378
  %i.ey = load float, ptr %i.ex, align 4
  %i.ez = zext nneg i32 %i.ew to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef %i.ey, float noundef %i.fb)
  br label %.thread

bb.af:                                            ; preds = %stbtt__buf_get8.exit
  %i.fc = icmp slt i32 %.0253320, 8
  br i1 %i.fc, label %.critedge, label %.lr.ph311.preheader

.lr.ph311.preheader:                              ; preds = %bb.af
  %i.fd = add nsw i32 %.0253320, -6
  %i.fe = zext nneg i32 %i.fd to i64
  br label %.lr.ph311

.lr.ph311:                                        ; preds = %.lr.ph311.preheader, %.lr.ph311
  %indvars.iv374 = phi i64 [ 0, %.lr.ph311.preheader ], [ %indvars.iv.next375, %.lr.ph311 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv374 ; 2 uses
  %i.fg = load float, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fi = load float, ptr %i.fh, align 4
  tail call fastcc void @stbtt__csctx_rline_to(ptr noundef %2, float noundef %i.fg, float noundef %i.fi)
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 2 ; 4 uses
  %6 = or disjoint i64 %indvars.iv.next375, 1
  %i.fj = icmp samesign ult i64 %6, %i.fe
  br i1 %i.fj, label %.lr.ph311, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph311
  %i.fk = trunc nuw nsw i64 %indvars.iv.next375 to i32
  %i.fl = add nuw nsw i32 %i.fk, 5                ; 2 uses
  %.not268 = icmp samesign ult i32 %i.fl, %.0253320
  br i1 %.not268, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %._crit_edge
  %i.fm = add nuw i32 %.0253320, 2147483640
  %i.fn = and i32 %i.fm, 2147483646
  %narrow = add nuw i32 %i.fn, 3
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next375 ; 4 uses
  %i.fp = load float, ptr %i.fo, align 4
  %i.fq = zext nneg i32 %narrow to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fu = load float, ptr %i.ft, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fy = load float, ptr %i.fx, align 4
  %i.fz = zext nneg i32 %i.fl to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.fp, float noundef %i.fs, float noundef %i.fu, float noundef %i.fw, float noundef %i.fy, float noundef %i.gb)
  br label %.thread

bb.ah:                                            ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.gc = icmp slt i32 %.0253320, 4
  br i1 %i.gc, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.8 = and i32 %.0253320, 1
  %i.gd = add nuw nsw i32 %.8, 3
  %i.ge = icmp samesign ult i32 %i.gd, %.0253320
  br i1 %i.ge, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ai
  %.not267 = trunc i32 %.0253320 to i1            ; 6 uses
  %i.gf = load float, ptr %i.a, align 16
  %.0242 = select i1 %.not267, float %i.gf, float 0.000000e+00 ; 2 uses
  %i.gg = icmp eq i8 %i.am, 27
  %.not267.mask419 = and i32 %.0253320, 1
  %i.gh = zext nneg i32 %.not267.mask419 to i64   ; 6 uses
  %i.gi = zext nneg i32 %.0253320 to i64          ; 3 uses
  %.val420 = load float, ptr %i.o, align 4        ; 3 uses
  %.val421 = load float, ptr %i.a, align 16
  %i.gj = select i1 %.not267, float %.val420, float %.val421 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gm = load float, ptr %i.gl, align 4          ; 2 uses
  %i.gn = add nuw nsw i64 %i.gh, 7
  %i.go = icmp samesign ult i64 %i.gn, %i.gi      ; 2 uses
  br i1 %i.gg, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep387.val = load float, ptr %.sroa.gep.sroa.gep387, align 8 ; 2 uses
  %i.gp = select i1 %.not267, float %.sroa.gep.sroa.gep387.val, float %.val420
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.gq = select i1 %.not267, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep387.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %.0242, float noundef %i.gj, float noundef %i.gp, float noundef %i.gq, float noundef 0.000000e+00, float noundef %i.gm)
  br i1 %i.go, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.gh, 7
  %indvars.iv.next361.peel = or disjoint i64 %i.gh, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep390.sroa.gep393.val = load float, ptr %.sroa.gep390.sroa.gep393, align 8 ; 2 uses
  %i.gr = select i1 %.not267, float %.sroa.gep390.sroa.gep393.val, float %.val420
  %.sroa.gep390.sroa.gep.val = load float, ptr %.sroa.gep390.sroa.gep, align 4
  %i.gs = select i1 %.not267, float %.sroa.gep390.sroa.gep.val, float %.sroa.gep390.sroa.gep393.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.gj, float noundef %.0242, float noundef %i.gr, float noundef %i.gs, float noundef %i.gm, float noundef 0.000000e+00)
  br i1 %i.go, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next367.peel = add nuw nsw i64 %i.gh, 7
  %indvars.iv.next369.peel = or disjoint i64 %i.gh, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv368 = phi i64 [ %indvars.iv.next369.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next369, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv366 = phi i64 [ %indvars.iv.next367.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next367, %.lr.ph.split.us ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv368 ; 3 uses
  %i.gu = load float, ptr %i.gt, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gw = load float, ptr %i.gv, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gy = load float, ptr %i.gx, align 4
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv366
  %i.ha = load float, ptr %i.gz, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.gu, float noundef 0.000000e+00, float noundef %i.gw, float noundef %i.gy, float noundef %i.ha, float noundef 0.000000e+00)
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 4
  %i.hb = add nuw nsw i64 %indvars.iv368, 7
  %i.hc = icmp samesign ult i64 %i.hb, %i.gi
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 4
  br i1 %i.hc, label %.lr.ph.split.us, label %.thread, !llvm.loop !79

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv360 = phi i64 [ %indvars.iv.next361.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next361, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv360 ; 3 uses
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hg = load float, ptr %i.hf, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hi = load float, ptr %i.hh, align 4
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.hk = load float, ptr %i.hj, align 4
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.he, float noundef %i.hg, float noundef %i.hi, float noundef 0.000000e+00, float noundef %i.hk)
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 4
  %i.hl = add nuw nsw i64 %indvars.iv360, 7
  %i.hm = icmp samesign ult i64 %i.hl, %i.gi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.hm, label %.lr.ph.split, label %.thread, !llvm.loop !80

bb.aj:                                            ; preds = %stbtt__buf_get8.exit
  %.not = icmp eq i32 %.0246323, 0
  br i1 %.not, label %bb.ak, label %bb.au

bb.ak:                                            ; preds = %bb.aj
  %i.hn = load i32, ptr %i.z, align 4             ; 13 uses
  %.not266 = icmp eq i32 %i.hn, 0
  br i1 %.not266, label %bb.au, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8 ; 9 uses
  %i.ho = tail call i32 @llvm.smin.i32(i32 %i.hn, i32 0) ; 2 uses
  %.not.i.i = icmp sgt i32 %i.hn, 0
  br i1 %.not.i.i, label %stbtt__buf_get8.exit.i, label %stbtt__buf_get8.exit.thread.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.al
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1
  switch i8 %i.hr, label %stbtt__cid_get_glyph_subrs.exit [
    i8 0, label %stbtt__buf_get8.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %stbtt__buf_get8.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.hn, 1
  br i1 %.not.i.i.not.i, label %stbtt__buf_get8.exit.i.i, label %bb.an

stbtt__buf_get8.exit.thread.i:                    ; preds = %stbtt__buf_get8.exit.i, %bb.al
  %.sroa.9.164.i = phi i32 [ 1, %stbtt__buf_get8.exit.i ], [ %i.ho, %bb.al ]
  %i.hs = add nsw i32 %.sroa.9.164.i, %1          ; 2 uses
  %i.ht = icmp slt i32 %i.hs, 0
  %i.hu = tail call i32 @llvm.smin.i32(i32 %i.hs, i32 %i.hn)
  %..i.i.i = select i1 %i.ht, i32 %i.hn, i32 %i.hu ; 2 uses
  %.not.i25.i = icmp slt i32 %..i.i.i, %i.hn
  br i1 %.not.i25.i, label %bb.am, label %stbtt__cid_get_glyph_subrs.exit

bb.am:                                            ; preds = %stbtt__buf_get8.exit.thread.i
  %i.hv = sext i32 %..i.i.i to i64
  %i.hw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i32
  br label %stbtt__cid_get_glyph_subrs.exit

bb.an:                                            ; preds = %.preheader.preheader.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 8
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.an, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.an ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.ic, %bb.an ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.hn
  br i1 %.not.i.i.1.i, label %bb.ao, label %stbtt__buf_get8.exit.i.1.i

bb.ao:                                            ; preds = %stbtt__buf_get8.exit.i.i
  %i.id = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.ie = zext nneg i32 %.sroa.9.3.i to i64
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = zext i8 %i.ig to i32
  %i.ii = or disjoint i32 %.0.i.i.i, %i.ih
  br label %stbtt__buf_get8.exit.i.1.i

stbtt__buf_get8.exit.i.1.i:                       ; preds = %bb.ao, %stbtt__buf_get8.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.id, %bb.ao ], [ %.sroa.9.3.i, %stbtt__buf_get8.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.ii, %bb.ao ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i.i31.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.hn
  br i1 %.not.i.i31.i, label %bb.ap, label %stbtt__buf_get8.exit.i32.i

bb.ap:                                            ; preds = %stbtt__buf_get8.exit.i.1.i
  %i.ij = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.ik = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 8
  br label %stbtt__buf_get8.exit.i32.i

stbtt__buf_get8.exit.i32.i:                       ; preds = %bb.ap, %stbtt__buf_get8.exit.i.1.i
  %.sroa.9.5.i = phi i32 [ %i.ij, %bb.ap ], [ %.sroa.9.3.1.i, %stbtt__buf_get8.exit.i.1.i ] ; 4 uses
  %.0.i.i33.i = phi i32 [ %i.io, %bb.ap ], [ 0, %stbtt__buf_get8.exit.i.1.i ] ; 2 uses
  %.not.i.i31.1.i = icmp samesign ult i32 %.sroa.9.5.i, %i.hn
  br i1 %.not.i.i31.1.i, label %bb.aq, label %stbtt__buf_get8.exit.i32.1.i

end_hunk_0
