Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_draw_vertex_element:bb.a
  %i.bo = call fastcc ptr @nk_memcopy(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !54 ; 3 uses
  %i.bs = fcmp olt float %i.br, -1.270000e+02
  %i.bt = fcmp olt float %i.br, 1.270000e+02
  %spec.select88109.us.1 = select i1 %i.bt, float %i.br, float 1.270000e+02
  %spec.select88.us.1 = fptosi float %spec.select88109.us.1 to i8
  %i.bu = select i1 %i.bs, i8 -127, i8 %spec.select88.us.1
  store i8 %i.bu, ptr %i.a, align 1, !tbaa !56
  %i.bv = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.split.us136.preheader, %.preheader.split.us132.preheader, %.preheader.split.us128.preheader, %.preheader.split.us124.preheader, %.preheader.split.us120.preheader, %.preheader.split.us116.preheader, %.preheader.split.us112.preheader, %.preheader.split.us.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbtt__run_charstring(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull %2) unnamed_addr #19 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 47 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !60
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %i.d, i64 %i.f, i32 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !60
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.i, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !55
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
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 30 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %.phi.trans.insert.i309 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 18 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %.sroa.gep.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep436.sroa.gep439 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep436.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.lr.ph, %.thread
  %i.ao = phi i32 [ %i.m, %stbtt__buf_get8.exit.lr.ph ], [ %i.wf, %.thread ] ; 9 uses
  %i.ap = phi i32 [ %i.k, %stbtt__buf_get8.exit.lr.ph ], [ %i.we, %.thread ] ; 6 uses
  %.0234374 = phi i32 [ 1, %stbtt__buf_get8.exit.lr.ph ], [ %.1235348, %.thread ] ; 22 uses
  %.0237373 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2239347, %.thread ] ; 26 uses
  %.0240372 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.1241346, %.thread ] ; 28 uses
  %.sroa.073.0371 = phi ptr [ %.sroa.073.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.073.3345, %.thread ] ; 27 uses
  %.sroa.5.0370 = phi i64 [ %.sroa.5.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.5.3344, %.thread ] ; 27 uses
  %.0246369 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2248343, %.thread ] ; 26 uses
  %.0253366 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %i.wd, %.thread ] ; 45 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !325   ; 6 uses
  %i.ar = add nsw i32 %i.ap, 1                    ; 7 uses
  store i32 %i.ar, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !323
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56  ; 6 uses
  switch i8 %i.au, label %bb.eq [
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
    i8 7, label %bb.z
    i8 6, label %bb.aa
    i8 31, label %bb.bf
    i8 30, label %bb.bg
    i8 8, label %bb.bp
    i8 24, label %bb.bq
    i8 25, label %bb.cf
    i8 26, label %bb.cu
    i8 27, label %bb.cu
    i8 10, label %bb.cw
    i8 29, label %bb.dh
    i8 11, label %bb.dq
    i8 14, label %bb.ds
    i8 12, label %bb.eh
  ]

bb.b:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %.not274 = icmp eq i32 %.0234374, 0
  br i1 %.not274, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = sdiv i32 %.0253366, 2
  %i.aw = add nsw i32 %.0237373, %i.av
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1238 = phi i32 [ %i.aw, %bb.c ], [ %.0237373, %bb.b ] ; 2 uses
  %i.ax = add nsw i32 %.1238, 7
  %i.ay = sdiv i32 %i.ax, 8
  %i.az = add nsw i32 %i.ay, %i.ar                ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.ao)
  %..i.i = select i1 %i.ba, i32 %i.ao, i32 %i.bb
  store i32 %..i.i, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !323
  br label %.thread

bb.e:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.bc = sdiv i32 %.0253366, 2
  %i.bd = add nsw i32 %.0237373, %i.bc
  br label %.thread

bb.f:                                             ; preds = %stbtt__buf_get8.exit
  %i.be = icmp slt i32 %.0253366, 2
  br i1 %i.be, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = zext nneg i32 %.0253366 to i64
  %i.bg = getelementptr [4 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !54
  %i.bj = getelementptr i8, ptr %i.bg, i64 -4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bi, float noundef %i.bk)
  br label %.thread

bb.h:                                             ; preds = %stbtt__buf_get8.exit
  %i.bl = icmp slt i32 %.0253366, 1
  br i1 %i.bl, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = zext nneg i32 %.0253366 to i64
  %i.bn = getelementptr [4 x i8], ptr %i.a, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.bp)
  br label %.thread

bb.j:                                             ; preds = %stbtt__buf_get8.exit
  %i.bq = icmp slt i32 %.0253366, 1
  br i1 %i.bq, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = zext nneg i32 %.0253366 to i64
  %i.bs = getelementptr [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bu, float noundef 0.000000e+00)
  br label %.thread

bb.l:                                             ; preds = %stbtt__buf_get8.exit
  %i.bv = icmp slt i32 %.0253366, 2
  br i1 %i.bv, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %i.bw = zext nneg i32 %.0253366 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %stbtt__csctx_rline_to.exit
  %indvars.iv429 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next430, %stbtt__csctx_rline_to.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv429
  %i.by = load <2 x float>, ptr %i.bx, align 8, !tbaa !54
  %i.bz = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.ca = fadd <2 x float> %i.by, %i.bz           ; 2 uses
  store <2 x float> %i.ca, ptr %i.ag, align 8, !tbaa !54
  %i.cb = fptosi <2 x float> %i.ca to <2 x i32>   ; 3 uses
  %i.cc = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.cd = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.ce = extractelement <2 x i32> %i.cb, i64 0   ; 4 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.ce, ptr %i.ai, align 4, !tbaa !660
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ch = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.ci = extractelement <2 x i32> %i.cb, i64 1   ; 4 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ci, ptr %i.ak, align 4, !tbaa !662
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = load i32, ptr %i.al, align 8, !tbaa !663
  %i.cm = icmp sgt i32 %i.cl, %i.ce
  br i1 %i.cm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.ce, ptr %i.al, align 8, !tbaa !663
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.co = load i32, ptr %i.am, align 8, !tbaa !664
  %i.cp = icmp sgt i32 %i.co, %i.ci
  br i1 %i.cp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not22.i.i.i, label %bb.x, label %stbtt__track_vertex.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ci, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i

stbtt__track_vertex.exit.i.i:                     ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit

bb.y:                                             ; preds = %.preheader
  %i.cr = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.cs = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [14 x i8], ptr %i.cr, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i8 2, ptr %i.cv, align 2, !tbaa !273
  %i.cw = trunc <2 x i32> %i.cb to <2 x i16>
  store <2 x i16> %i.cw, ptr %i.cu, align 2, !tbaa !106
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i64 0, ptr %i.cx, align 2
  br label %stbtt__csctx_rline_to.exit

stbtt__csctx_rline_to.exit:                       ; preds = %stbtt__track_vertex.exit.i.i, %bb.y
  %i.cy = phi i32 [ %.pre.i, %stbtt__track_vertex.exit.i.i ], [ %i.cs, %bb.y ]
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 2 ; 2 uses
  %5 = or disjoint i64 %indvars.iv.next430, 1
  %i.da = icmp samesign ult i64 %5, %i.bw
  br i1 %i.da, label %.preheader, label %.thread, !llvm.loop !1228

bb.z:                                             ; preds = %stbtt__buf_get8.exit
  %i.db = icmp slt i32 %.0253366, 1
  br i1 %i.db, label %.critedge, label %bb.aq

bb.aa:                                            ; preds = %stbtt__buf_get8.exit
  %i.dc = icmp slt i32 %.0253366, 1
  br i1 %i.dc, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %stbtt__csctx_rline_to.exit293
  %.1250 = phi i32 [ %i.fo, %stbtt__csctx_rline_to.exit293 ], [ 0, %bb.aa ] ; 3 uses
  %.not273 = icmp slt i32 %.1250, %.0253366
  br i1 %.not273, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dd = sext i32 %.1250 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !54
  %i.dg = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.dh = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  %i.di = fadd <2 x float> %i.dg, %i.dh           ; 2 uses
  store <2 x float> %i.di, ptr %i.ag, align 8, !tbaa !54
  %i.dj = fptosi <2 x float> %i.di to <2 x i32>   ; 3 uses
  %i.dk = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i276 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i276, label %bb.ap, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.dm = extractelement <2 x i32> %i.dj, i64 0   ; 4 uses
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.do = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i277 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i277, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i32 %i.dm, ptr %i.ai, align 4, !tbaa !660
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dp = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.dq = extractelement <2 x i32> %i.dj, i64 1   ; 4 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i278 = icmp eq i32 %i.ds, 0
  br i1 %.not20.i.i.i278, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i32 %i.dq, ptr %i.ak, align 4, !tbaa !662
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dt = load i32, ptr %i.al, align 8, !tbaa !663
  %i.du = icmp sgt i32 %i.dt, %i.dm
  br i1 %i.du, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i279 = icmp eq i32 %i.dv, 0
  br i1 %.not21.i.i.i279, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i32 %i.dm, ptr %i.al, align 8, !tbaa !663
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dw = load i32, ptr %i.am, align 8, !tbaa !664
  %i.dx = icmp sgt i32 %i.dw, %i.dq
  br i1 %i.dx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i280 = icmp eq i32 %i.dy, 0
  br i1 %.not22.i.i.i280, label %bb.ao, label %stbtt__track_vertex.exit.i.i281

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i32 %i.dq, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i281

stbtt__track_vertex.exit.i.i281:                  ; preds = %bb.ao, %bb.an
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i283 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit284

bb.ap:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.ea = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [14 x i8], ptr %i.dz, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i8 2, ptr %i.ed, align 2, !tbaa !273
  %i.ee = trunc <2 x i32> %i.dj to <2 x i16>
  store <2 x i16> %i.ee, ptr %i.ec, align 2, !tbaa !106
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i64 0, ptr %i.ef, align 2
  br label %stbtt__csctx_rline_to.exit284

stbtt__csctx_rline_to.exit284:                    ; preds = %stbtt__track_vertex.exit.i.i281, %bb.ap
  %i.eg = phi i32 [ %.pre.i283, %stbtt__track_vertex.exit.i.i281 ], [ %i.ea, %bb.ap ]
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %i.ei = add nsw i32 %.1250, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.z, %stbtt__csctx_rline_to.exit284
  %.2251 = phi i32 [ 0, %bb.z ], [ %i.ei, %stbtt__csctx_rline_to.exit284 ] ; 3 uses
  %.not272 = icmp slt i32 %.2251, %.0253366
  br i1 %.not272, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ej = sext i32 %.2251 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !54
  %i.em = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.en = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.el, i64 1
  %i.eo = fadd <2 x float> %i.em, %i.en           ; 2 uses
  store <2 x float> %i.eo, ptr %i.ag, align 8, !tbaa !54
  %i.ep = fptosi <2 x float> %i.eo to <2 x i32>   ; 3 uses
  %i.eq = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i285 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i285, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.er = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.es = extractelement <2 x i32> %i.ep, i64 0   ; 4 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eu = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i286 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i.i286, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  store i32 %i.es, ptr %i.ai, align 4, !tbaa !660
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ev = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.ew = extractelement <2 x i32> %i.ep, i64 1   ; 4 uses
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i287 = icmp eq i32 %i.ey, 0
  br i1 %.not20.i.i.i287, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %i.ew, ptr %i.ak, align 4, !tbaa !662
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ez = load i32, ptr %i.al, align 8, !tbaa !663
  %i.fa = icmp sgt i32 %i.ez, %i.es
  br i1 %i.fa, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i288 = icmp eq i32 %i.fb, 0
  br i1 %.not21.i.i.i288, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 %i.es, ptr %i.al, align 8, !tbaa !663
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fc = load i32, ptr %i.am, align 8, !tbaa !664
  %i.fd = icmp sgt i32 %i.fc, %i.ew
  br i1 %i.fd, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fe = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i289 = icmp eq i32 %i.fe, 0
  br i1 %.not22.i.i.i289, label %bb.bd, label %stbtt__track_vertex.exit.i.i290

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i32 %i.ew, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i290

stbtt__track_vertex.exit.i.i290:                  ; preds = %bb.bd, %bb.bc
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i292 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit293

bb.be:                                            ; preds = %bb.ar
  %i.ff = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.fg = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [14 x i8], ptr %i.ff, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i8 2, ptr %i.fj, align 2, !tbaa !273
end_hunk_0
begin_hunk_1_@stbtt__run_charstring:bb.a
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bf, %bb.bk
  %.4 = phi i32 [ 0, %bb.bf ], [ %i.gh, %bb.bk ]  ; 4 uses
  %i.gi = add nsw i32 %.4, 3                      ; 2 uses
  %.not270 = icmp slt i32 %i.gi, %.0253366
  br i1 %.not270, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gj = sext i32 %.4 to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gj ; 4 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !54
  %i.gm = getelementptr i8, ptr %i.gk, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !54
  %i.go = getelementptr i8, ptr %i.gk, i64 8
  %i.gp = load float, ptr %i.go, align 4, !tbaa !54
  %i.gq = sub nsw i32 %.0253366, %.4
  %i.gr = icmp eq i32 %i.gq, 5
  br i1 %i.gr, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gs = getelementptr i8, ptr %i.gk, i64 16
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !54
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.gu = phi float [ %i.gt, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.gv = sext i32 %i.gi to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.gl, float noundef 0.000000e+00, float noundef %i.gn, float noundef %i.gp, float noundef %i.gu, float noundef %i.gx)
  %i.gy = add nsw i32 %.4, 4
  br label %bb.bh

bb.bp:                                            ; preds = %stbtt__buf_get8.exit
  %i.gz = icmp slt i32 %.0253366, 6
  br i1 %i.gz, label %.critedge, label %.preheader349.preheader

.preheader349.preheader:                          ; preds = %bb.bp
  %i.ha = zext nneg i32 %.0253366 to i64
  br label %.preheader349

.preheader349:                                    ; preds = %.preheader349.preheader, %.preheader349
  %indvars.iv426 = phi i64 [ 0, %.preheader349.preheader ], [ %indvars.iv.next427, %.preheader349 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv426 ; 6 uses
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !54
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.he = load float, ptr %i.hd, align 4, !tbaa !54
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !54
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !54
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hk = load float, ptr %i.hj, align 8, !tbaa !54
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.hc, float noundef %i.he, float noundef %i.hg, float noundef %i.hi, float noundef %i.hk, float noundef %i.hm)
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 6
  %i.hn = add nuw nsw i64 %indvars.iv426, 11
  %i.ho = icmp samesign ult i64 %i.hn, %i.ha
  br i1 %i.ho, label %.preheader349, label %.thread, !llvm.loop !1229

bb.bq:                                            ; preds = %stbtt__buf_get8.exit
  %i.hp = icmp slt i32 %.0253366, 8
  br i1 %i.hp, label %.critedge, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %bb.bq
  %i.hq = add nsw i32 %.0253366, -2
  %i.hr = zext nneg i32 %i.hq to i64
  br label %.lr.ph360

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %.lr.ph360
  %indvars.iv423 = phi i64 [ 0, %.lr.ph360.preheader ], [ %indvars.iv.next424, %.lr.ph360 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv423 ; 6 uses
  %i.ht = load float, ptr %i.hs, align 8, !tbaa !54
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !54
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hx = load float, ptr %i.hw, align 8, !tbaa !54
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !54
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !54
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  %i.id = load float, ptr %i.ic, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.ht, float noundef %i.hv, float noundef %i.hx, float noundef %i.hz, float noundef %i.ib, float noundef %i.id)
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 6 ; 3 uses
  %i.ie = add nuw nsw i64 %indvars.iv423, 11
  %i.if = icmp samesign ult i64 %i.ie, %i.hr
  br i1 %i.if, label %.lr.ph360, label %._crit_edge361, !llvm.loop !1230

._crit_edge361:                                   ; preds = %.lr.ph360
  %i.ig = trunc nuw nsw i64 %indvars.iv.next424 to i32
  %i.ih = or disjoint i32 %i.ig, 1
  %.not269 = icmp slt i32 %i.ih, %.0253366
  br i1 %.not269, label %bb.br, label %.critedge

bb.br:                                            ; preds = %._crit_edge361
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next424
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !54
  %i.ik = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.il = fadd <2 x float> %i.ij, %i.ik           ; 2 uses
  store <2 x float> %i.il, ptr %i.ag, align 8, !tbaa !54
  %i.im = fptosi <2 x float> %i.il to <2 x i32>   ; 3 uses
  %i.in = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i294 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i294, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.io = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.ip = extractelement <2 x i32> %i.im, i64 0   ; 4 uses
  %i.iq = icmp slt i32 %i.io, %i.ip
  br i1 %i.iq, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ir = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i295 = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i.i295, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.ip, ptr %i.ai, align 4, !tbaa !660
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.is = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.it = extractelement <2 x i32> %i.im, i64 1   ; 4 uses
  %i.iu = icmp slt i32 %i.is, %i.it
  br i1 %i.iu, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iv = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i296 = icmp eq i32 %i.iv, 0
  br i1 %.not20.i.i.i296, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 %i.it, ptr %i.ak, align 4, !tbaa !662
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.iw = load i32, ptr %i.al, align 8, !tbaa !663
  %i.ix = icmp sgt i32 %i.iw, %i.ip
  br i1 %i.ix, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iy = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i297 = icmp eq i32 %i.iy, 0
  br i1 %.not21.i.i.i297, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %i.ip, ptr %i.al, align 8, !tbaa !663
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.iz = load i32, ptr %i.am, align 8, !tbaa !664
  %i.ja = icmp sgt i32 %i.iz, %i.it
  br i1 %i.ja, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jb = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i298 = icmp eq i32 %i.jb, 0
  br i1 %.not22.i.i.i298, label %bb.cd, label %stbtt__track_vertex.exit.i.i299

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.it, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i299

stbtt__track_vertex.exit.i.i299:                  ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i301 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit302

bb.ce:                                            ; preds = %bb.br
  %i.jc = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.jd = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [14 x i8], ptr %i.jc, i64 %i.je ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  store i8 2, ptr %i.jg, align 2, !tbaa !273
  %i.jh = trunc <2 x i32> %i.im to <2 x i16>
  store <2 x i16> %i.jh, ptr %i.jf, align 2, !tbaa !106
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i64 0, ptr %i.ji, align 2
  br label %stbtt__csctx_rline_to.exit302

stbtt__csctx_rline_to.exit302:                    ; preds = %stbtt__track_vertex.exit.i.i299, %bb.ce
  %i.jj = phi i32 [ %.pre.i301, %stbtt__track_vertex.exit.i.i299 ], [ %i.jd, %bb.ce ]
  %i.jk = add nsw i32 %i.jj, 1
  store i32 %i.jk, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %.thread

bb.cf:                                            ; preds = %stbtt__buf_get8.exit
  %i.jl = icmp slt i32 %.0253366, 8
  br i1 %i.jl, label %.critedge, label %.lr.ph357.preheader

.lr.ph357.preheader:                              ; preds = %bb.cf
  %i.jm = add nsw i32 %.0253366, -6
  %i.jn = zext nneg i32 %i.jm to i64
  br label %.lr.ph357

.lr.ph357:                                        ; preds = %.lr.ph357.preheader, %stbtt__csctx_rline_to.exit311
  %indvars.iv420 = phi i64 [ 0, %.lr.ph357.preheader ], [ %indvars.iv.next421, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv420
  %i.jp = load <2 x float>, ptr %i.jo, align 8, !tbaa !54
  %i.jq = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.jr = fadd <2 x float> %i.jp, %i.jq           ; 2 uses
  store <2 x float> %i.jr, ptr %i.ag, align 8, !tbaa !54
  %i.js = fptosi <2 x float> %i.jr to <2 x i32>   ; 3 uses
  %i.jt = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i303 = icmp eq i32 %i.jt, 0
  br i1 %.not.i.i303, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph357
  %i.ju = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.jv = extractelement <2 x i32> %i.js, i64 0   ; 4 uses
  %i.jw = icmp slt i32 %i.ju, %i.jv
  br i1 %i.jw, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jx = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i304 = icmp eq i32 %i.jx, 0
  br i1 %.not.i.i.i304, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i32 %i.jv, ptr %i.ai, align 4, !tbaa !660
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.jy = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.jz = extractelement <2 x i32> %i.js, i64 1   ; 4 uses
  %i.ka = icmp slt i32 %i.jy, %i.jz
  br i1 %i.ka, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kb = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i305 = icmp eq i32 %i.kb, 0
  br i1 %.not20.i.i.i305, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 %i.jz, ptr %i.ak, align 4, !tbaa !662
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.kc = load i32, ptr %i.al, align 8, !tbaa !663
  %i.kd = icmp sgt i32 %i.kc, %i.jv
  br i1 %i.kd, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ke = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i306 = icmp eq i32 %i.ke, 0
  br i1 %.not21.i.i.i306, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 %i.jv, ptr %i.al, align 8, !tbaa !663
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.kf = load i32, ptr %i.am, align 8, !tbaa !664
  %i.kg = icmp sgt i32 %i.kf, %i.jz
  br i1 %i.kg, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kh = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i307 = icmp eq i32 %i.kh, 0
  br i1 %.not22.i.i.i307, label %bb.cr, label %stbtt__track_vertex.exit.i.i308

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %i.jz, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i308

stbtt__track_vertex.exit.i.i308:                  ; preds = %bb.cr, %bb.cq
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i310 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit311

bb.cs:                                            ; preds = %.lr.ph357
  %i.ki = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.kj = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [14 x i8], ptr %i.ki, i64 %i.kk ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  store i8 2, ptr %i.km, align 2, !tbaa !273
  %i.kn = trunc <2 x i32> %i.js to <2 x i16>
  store <2 x i16> %i.kn, ptr %i.kl, align 2, !tbaa !106
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  store i64 0, ptr %i.ko, align 2
  br label %stbtt__csctx_rline_to.exit311

stbtt__csctx_rline_to.exit311:                    ; preds = %stbtt__track_vertex.exit.i.i308, %bb.cs
  %i.kp = phi i32 [ %.pre.i310, %stbtt__track_vertex.exit.i.i308 ], [ %i.kj, %bb.cs ]
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 2 ; 4 uses
  %6 = or disjoint i64 %indvars.iv.next421, 1
  %i.kr = icmp samesign ult i64 %6, %i.jn
  br i1 %i.kr, label %.lr.ph357, label %._crit_edge, !llvm.loop !1231

._crit_edge:                                      ; preds = %stbtt__csctx_rline_to.exit311
  %i.ks = trunc nuw nsw i64 %indvars.iv.next421 to i32
  %i.kt = add nuw nsw i32 %i.ks, 5                ; 2 uses
  %.not268 = icmp slt i32 %i.kt, %.0253366
  br i1 %.not268, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %._crit_edge
  %i.ku = add nuw i32 %.0253366, 2147483640
  %i.kv = and i32 %i.ku, 2147483646
  %narrow = add nuw i32 %i.kv, 3
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next421 ; 4 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !54
  %i.ky = zext nneg i32 %narrow to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !54
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !54
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  %i.le = load float, ptr %i.ld, align 4, !tbaa !54
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !54
  %i.lh = zext nneg i32 %i.kt to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.kx, float noundef %i.la, float noundef %i.lc, float noundef %i.le, float noundef %i.lg, float noundef %i.lj)
  br label %.thread

bb.cu:                                            ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.lk = icmp slt i32 %.0253366, 4
  br i1 %i.lk, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.8 = and i32 %.0253366, 1
  %i.ll = add nuw nsw i32 %.8, 3
  %i.lm = icmp samesign ult i32 %i.ll, %.0253366
  br i1 %i.lm, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.cv
  %.not267 = trunc i32 %.0253366 to i1            ; 6 uses
  %i.ln = load float, ptr %i.a, align 16
  %.0242 = select i1 %.not267, float %i.ln, float 0.000000e+00 ; 2 uses
  %i.lo = icmp eq i8 %i.au, 27
  %.not267.mask465 = and i32 %.0253366, 1
  %i.lp = zext nneg i32 %.not267.mask465 to i64   ; 6 uses
  %i.lq = zext nneg i32 %.0253366 to i64          ; 3 uses
  %.val466 = load float, ptr %i.o, align 4        ; 3 uses
  %.val467 = load float, ptr %i.a, align 16
  %i.lr = select i1 %.not267, float %.val466, float %.val467 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lp
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !54 ; 2 uses
  %i.lv = add nuw nsw i64 %i.lp, 7
  %i.lw = icmp samesign ult i64 %i.lv, %i.lq      ; 2 uses
  br i1 %i.lo, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep433.val = load float, ptr %.sroa.gep.sroa.gep433, align 8 ; 2 uses
  %i.lx = select i1 %.not267, float %.sroa.gep.sroa.gep433.val, float %.val466
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.ly = select i1 %.not267, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep433.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %.0242, float noundef %i.lr, float noundef %i.lx, float noundef %i.ly, float noundef 0.000000e+00, float noundef %i.lu)
  br i1 %i.lw, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.lp, 7
  %indvars.iv.next407.peel = or disjoint i64 %i.lp, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep436.sroa.gep439.val = load float, ptr %.sroa.gep436.sroa.gep439, align 8 ; 2 uses
  %i.lz = select i1 %.not267, float %.sroa.gep436.sroa.gep439.val, float %.val466
  %.sroa.gep436.sroa.gep.val = load float, ptr %.sroa.gep436.sroa.gep, align 4
  %i.ma = select i1 %.not267, float %.sroa.gep436.sroa.gep.val, float %.sroa.gep436.sroa.gep439.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.lr, float noundef %.0242, float noundef %i.lz, float noundef %i.ma, float noundef %i.lu, float noundef 0.000000e+00)
  br i1 %i.lw, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next413.peel = add nuw nsw i64 %i.lp, 7
  %indvars.iv.next415.peel = or disjoint i64 %i.lp, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next415, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv412 = phi i64 [ %indvars.iv.next413.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next413, %.lr.ph.split.us ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv414 ; 3 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !54
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !54
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !54
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv412
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.mc, float noundef 0.000000e+00, float noundef %i.me, float noundef %i.mg, float noundef %i.mi, float noundef 0.000000e+00)
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 4
  %i.mj = add nuw nsw i64 %indvars.iv414, 7
  %i.mk = icmp samesign ult i64 %i.mj, %i.lq
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 4
  br i1 %i.mk, label %.lr.ph.split.us, label %.thread, !llvm.loop !1232

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next407, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv406 ; 3 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !54
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !54
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !54
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.mm, float noundef %i.mo, float noundef %i.mq, float noundef 0.000000e+00, float noundef %i.ms)
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 4
  %i.mt = add nuw nsw i64 %indvars.iv406, 7
  %i.mu = icmp samesign ult i64 %i.mt, %i.lq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.mu, label %.lr.ph.split, label %.thread, !llvm.loop !1233

bb.cw:                                            ; preds = %stbtt__buf_get8.exit
  %.not = icmp eq i32 %.0246369, 0
  br i1 %.not, label %bb.cx, label %bb.dh

bb.cx:                                            ; preds = %bb.cw
  %i.mv = load i32, ptr %i.z, align 4, !tbaa !1237 ; 13 uses
  %.not266 = icmp eq i32 %i.mv, 0
  br i1 %.not266, label %bb.dh, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !60 ; 9 uses
  %i.mw = tail call i32 @llvm.smin.i32(i32 %i.mv, i32 0) ; 2 uses
  %.not.i.i312 = icmp sgt i32 %i.mv, 0
  br i1 %.not.i.i312, label %stbtt__buf_get8.exit.i, label %stbtt__buf_get8.exit.thread.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.cy
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !56
  switch i8 %i.mz, label %stbtt__cid_get_glyph_subrs.exit [
    i8 0, label %stbtt__buf_get8.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %stbtt__buf_get8.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.mv, 1
  br i1 %.not.i.i.not.i, label %stbtt__buf_get8.exit.i.i, label %bb.da

stbtt__buf_get8.exit.thread.i:                    ; preds = %stbtt__buf_get8.exit.i, %bb.cy
  %.sroa.9.164.i = phi i32 [ 1, %stbtt__buf_get8.exit.i ], [ %i.mw, %bb.cy ]
  %i.na = add nsw i32 %.sroa.9.164.i, %1          ; 2 uses
  %i.nb = icmp slt i32 %i.na, 0
  %i.nc = tail call i32 @llvm.smin.i32(i32 %i.na, i32 %i.mv)
  %..i.i.i = select i1 %i.nb, i32 %i.mv, i32 %i.nc ; 2 uses
  %.not.i25.i = icmp slt i32 %..i.i.i, %i.mv
  br i1 %.not.i25.i, label %bb.cz, label %stbtt__cid_get_glyph_subrs.exit

bb.cz:                                            ; preds = %stbtt__buf_get8.exit.thread.i
  %i.nd = sext i32 %..i.i.i to i64
  %i.ne = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !56
  %i.ng = zext i8 %i.nf to i32
  br label %stbtt__cid_get_glyph_subrs.exit

bb.da:                                            ; preds = %.preheader.preheader.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !56
  %i.nj = zext i8 %i.ni to i32
  %i.nk = shl nuw nsw i32 %i.nj, 8
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.da, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.da ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.nk, %bb.da ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.mv
  br i1 %.not.i.i.1.i, label %bb.db, label %stbtt__buf_get8.exit.i.1.i

bb.db:                                            ; preds = %stbtt__buf_get8.exit.i.i
  %i.nl = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.nm = zext nneg i32 %.sroa.9.3.i to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !56
  %i.np = zext i8 %i.no to i32
  %i.nq = or disjoint i32 %.0.i.i.i, %i.np
  br label %stbtt__buf_get8.exit.i.1.i

stbtt__buf_get8.exit.i.1.i:                       ; preds = %bb.db, %stbtt__buf_get8.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.nl, %bb.db ], [ %.sroa.9.3.i, %stbtt__buf_get8.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.nq, %bb.db ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i.i31.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.mv
  br i1 %.not.i.i31.i, label %bb.dc, label %stbtt__buf_get8.exit.i32.i

bb.dc:                                            ; preds = %stbtt__buf_get8.exit.i.1.i
  %i.nr = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.ns = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !56
  %i.nv = zext i8 %i.nu to i32
  %i.nw = shl nuw nsw i32 %i.nv, 8
  br label %stbtt__buf_get8.exit.i32.i
end_hunk_1
