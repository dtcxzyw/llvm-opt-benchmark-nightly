Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_draw_vertex_element:bb.a
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
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
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
  %i.ao = phi i32 [ %i.m, %stbtt__buf_get8.exit.lr.ph ], [ %i.wn, %.thread ] ; 9 uses
  %i.ap = phi i32 [ %i.k, %stbtt__buf_get8.exit.lr.ph ], [ %i.wm, %.thread ] ; 6 uses
  %.0234374 = phi i32 [ 1, %stbtt__buf_get8.exit.lr.ph ], [ %.1235348, %.thread ] ; 22 uses
  %.0237373 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2239347, %.thread ] ; 26 uses
  %.0240372 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.1241346, %.thread ] ; 28 uses
  %.sroa.073.0371 = phi ptr [ %.sroa.073.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.073.3345, %.thread ] ; 27 uses
  %.sroa.5.0370 = phi i64 [ %.sroa.5.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.5.3344, %.thread ] ; 27 uses
  %.0246369 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2248343, %.thread ] ; 26 uses
  %.0253366 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %i.wl, %.thread ] ; 45 uses
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
  %i.bx = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %.pre452 = load i32, ptr %2, align 8, !tbaa !659
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %stbtt__csctx_rline_to.exit
  %i.by = phi i32 [ %.pre452, %.preheader.preheader ], [ %i.da, %stbtt__csctx_rline_to.exit ] ; 2 uses
  %indvars.iv429 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next430, %stbtt__csctx_rline_to.exit ] ; 2 uses
  %i.bz = phi <2 x float> [ %i.bx, %.preheader.preheader ], [ %i.dc, %stbtt__csctx_rline_to.exit ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv429
  %i.cb = load <2 x float>, ptr %i.ca, align 8, !tbaa !54
  %i.cc = fadd <2 x float> %i.cb, %i.bz           ; 3 uses
  store <2 x float> %i.cc, ptr %i.ag, align 8, !tbaa !54
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>   ; 3 uses
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.ce = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.cf = extractelement <2 x i32> %i.cd, i64 0   ; 4 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.cf, ptr %i.ai, align 4, !tbaa !660
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ci = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.cj = extractelement <2 x i32> %i.cd, i64 1   ; 4 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.cj, ptr %i.ak, align 4, !tbaa !662
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cm = load i32, ptr %i.al, align 8, !tbaa !663
  %i.cn = icmp sgt i32 %i.cm, %i.cf
  br i1 %i.cn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.cf, ptr %i.al, align 8, !tbaa !663
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cp = load i32, ptr %i.am, align 8, !tbaa !664
  %i.cq = icmp sgt i32 %i.cp, %i.cj
  br i1 %i.cq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not22.i.i.i, label %bb.x, label %stbtt__track_vertex.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.cj, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i

stbtt__track_vertex.exit.i.i:                     ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit

bb.y:                                             ; preds = %.preheader
  %i.cs = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.ct = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [14 x i8], ptr %i.cs, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i8 2, ptr %i.cw, align 2, !tbaa !273
  %i.cx = trunc <2 x i32> %i.cd to <2 x i16>
  store <2 x i16> %i.cx, ptr %i.cv, align 2, !tbaa !106
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i64 0, ptr %i.cy, align 2
  %i.cz = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %.pre451 = load i32, ptr %2, align 8, !tbaa !659
  br label %stbtt__csctx_rline_to.exit

stbtt__csctx_rline_to.exit:                       ; preds = %stbtt__track_vertex.exit.i.i, %bb.y
  %i.da = phi i32 [ %i.by, %stbtt__track_vertex.exit.i.i ], [ %.pre451, %bb.y ]
  %i.db = phi i32 [ %.pre.i, %stbtt__track_vertex.exit.i.i ], [ %i.ct, %bb.y ]
  %i.dc = phi <2 x float> [ %i.cc, %stbtt__track_vertex.exit.i.i ], [ %i.cz, %bb.y ]
  %i.dd = add nsw i32 %i.db, 1
  store i32 %i.dd, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 2 ; 2 uses
  %5 = or disjoint i64 %indvars.iv.next430, 1
  %i.de = icmp samesign ult i64 %5, %i.bw
  br i1 %i.de, label %.preheader, label %.thread, !llvm.loop !1227

bb.z:                                             ; preds = %stbtt__buf_get8.exit
  %i.df = icmp slt i32 %.0253366, 1
  br i1 %i.df, label %.critedge, label %bb.aq

bb.aa:                                            ; preds = %stbtt__buf_get8.exit
  %i.dg = icmp slt i32 %.0253366, 1
  br i1 %i.dg, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %stbtt__csctx_rline_to.exit293
  %.1250 = phi i32 [ %i.fs, %stbtt__csctx_rline_to.exit293 ], [ 0, %bb.aa ] ; 3 uses
  %.not273 = icmp slt i32 %.1250, %.0253366
  br i1 %.not273, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dh = sext i32 %.1250 to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !54
  %i.dk = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.dl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dj, i64 0
  %i.dm = fadd <2 x float> %i.dk, %i.dl           ; 2 uses
  store <2 x float> %i.dm, ptr %i.ag, align 8, !tbaa !54
  %i.dn = fptosi <2 x float> %i.dm to <2 x i32>   ; 3 uses
  %i.do = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i276 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i276, label %bb.ap, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.dq = extractelement <2 x i32> %i.dn, i64 0   ; 4 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i277 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i277, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i32 %i.dq, ptr %i.ai, align 4, !tbaa !660
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dt = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.du = extractelement <2 x i32> %i.dn, i64 1   ; 4 uses
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i278 = icmp eq i32 %i.dw, 0
  br i1 %.not20.i.i.i278, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i32 %i.du, ptr %i.ak, align 4, !tbaa !662
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dx = load i32, ptr %i.al, align 8, !tbaa !663
  %i.dy = icmp sgt i32 %i.dx, %i.dq
  br i1 %i.dy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dz = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i279 = icmp eq i32 %i.dz, 0
  br i1 %.not21.i.i.i279, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i32 %i.dq, ptr %i.al, align 8, !tbaa !663
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ea = load i32, ptr %i.am, align 8, !tbaa !664
  %i.eb = icmp sgt i32 %i.ea, %i.du
  br i1 %i.eb, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i280 = icmp eq i32 %i.ec, 0
  br i1 %.not22.i.i.i280, label %bb.ao, label %stbtt__track_vertex.exit.i.i281

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i32 %i.du, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i281

stbtt__track_vertex.exit.i.i281:                  ; preds = %bb.ao, %bb.an
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i283 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit284

bb.ap:                                            ; preds = %bb.ac
  %i.ed = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.ee = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [14 x i8], ptr %i.ed, i64 %i.ef ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i8 2, ptr %i.eh, align 2, !tbaa !273
  %i.ei = trunc <2 x i32> %i.dn to <2 x i16>
  store <2 x i16> %i.ei, ptr %i.eg, align 2, !tbaa !106
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i64 0, ptr %i.ej, align 2
  br label %stbtt__csctx_rline_to.exit284

stbtt__csctx_rline_to.exit284:                    ; preds = %stbtt__track_vertex.exit.i.i281, %bb.ap
  %i.ek = phi i32 [ %.pre.i283, %stbtt__track_vertex.exit.i.i281 ], [ %i.ee, %bb.ap ]
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %i.em = add nsw i32 %.1250, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.z, %stbtt__csctx_rline_to.exit284
  %.2251 = phi i32 [ 0, %bb.z ], [ %i.em, %stbtt__csctx_rline_to.exit284 ] ; 3 uses
  %.not272 = icmp slt i32 %.2251, %.0253366
  br i1 %.not272, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.en = sext i32 %.2251 to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !54
  %i.eq = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.er = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ep, i64 1
  %i.es = fadd <2 x float> %i.eq, %i.er           ; 2 uses
  store <2 x float> %i.es, ptr %i.ag, align 8, !tbaa !54
  %i.et = fptosi <2 x float> %i.es to <2 x i32>   ; 3 uses
  %i.eu = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i285 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i285, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ev = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.ew = extractelement <2 x i32> %i.et, i64 0   ; 4 uses
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i286 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i.i286, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  store i32 %i.ew, ptr %i.ai, align 4, !tbaa !660
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ez = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.fa = extractelement <2 x i32> %i.et, i64 1   ; 4 uses
  %i.fb = icmp slt i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fc = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i287 = icmp eq i32 %i.fc, 0
  br i1 %.not20.i.i.i287, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %i.fa, ptr %i.ak, align 4, !tbaa !662
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fd = load i32, ptr %i.al, align 8, !tbaa !663
  %i.fe = icmp sgt i32 %i.fd, %i.ew
  br i1 %i.fe, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i288 = icmp eq i32 %i.ff, 0
  br i1 %.not21.i.i.i288, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 %i.ew, ptr %i.al, align 8, !tbaa !663
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fg = load i32, ptr %i.am, align 8, !tbaa !664
  %i.fh = icmp sgt i32 %i.fg, %i.fa
  br i1 %i.fh, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fi = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i289 = icmp eq i32 %i.fi, 0
  br i1 %.not22.i.i.i289, label %bb.bd, label %stbtt__track_vertex.exit.i.i290

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i32 %i.fa, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i290

stbtt__track_vertex.exit.i.i290:                  ; preds = %bb.bd, %bb.bc
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i292 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit293

bb.be:                                            ; preds = %bb.ar
  %i.fj = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.fk = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [14 x i8], ptr %i.fj, i64 %i.fl ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i8 2, ptr %i.fn, align 2, !tbaa !273
end_hunk_0
begin_hunk_1_@stbtt__run_charstring:bb.a
  %.4 = phi i32 [ 0, %bb.bf ], [ %i.gl, %bb.bk ]  ; 4 uses
  %i.gm = add nsw i32 %.4, 3                      ; 2 uses
  %.not270 = icmp slt i32 %i.gm, %.0253366
  br i1 %.not270, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gn = sext i32 %.4 to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gn ; 4 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !54
  %i.gq = getelementptr i8, ptr %i.go, i64 4
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !54
  %i.gs = getelementptr i8, ptr %i.go, i64 8
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !54
  %i.gu = sub nsw i32 %.0253366, %.4
  %i.gv = icmp eq i32 %i.gu, 5
  br i1 %i.gv, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gw = getelementptr i8, ptr %i.go, i64 16
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !54
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.gy = phi float [ %i.gx, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.gz = sext i32 %i.gm to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.gp, float noundef 0.000000e+00, float noundef %i.gr, float noundef %i.gt, float noundef %i.gy, float noundef %i.hb)
  %i.hc = add nsw i32 %.4, 4
  br label %bb.bh

bb.bp:                                            ; preds = %stbtt__buf_get8.exit
  %i.hd = icmp slt i32 %.0253366, 6
  br i1 %i.hd, label %.critedge, label %.preheader349.preheader

.preheader349.preheader:                          ; preds = %bb.bp
  %i.he = zext nneg i32 %.0253366 to i64
  br label %.preheader349

.preheader349:                                    ; preds = %.preheader349.preheader, %.preheader349
  %indvars.iv426 = phi i64 [ 0, %.preheader349.preheader ], [ %indvars.iv.next427, %.preheader349 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv426 ; 6 uses
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !54
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !54
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hk = load float, ptr %i.hj, align 8, !tbaa !54
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !54
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !54
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 20
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.hg, float noundef %i.hi, float noundef %i.hk, float noundef %i.hm, float noundef %i.ho, float noundef %i.hq)
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 6
  %i.hr = add nuw nsw i64 %indvars.iv426, 11
  %i.hs = icmp samesign ult i64 %i.hr, %i.he
  br i1 %i.hs, label %.preheader349, label %.thread, !llvm.loop !1228

bb.bq:                                            ; preds = %stbtt__buf_get8.exit
  %i.ht = icmp slt i32 %.0253366, 8
  br i1 %i.ht, label %.critedge, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %bb.bq
  %i.hu = add nsw i32 %.0253366, -2
  %i.hv = zext nneg i32 %i.hu to i64
  br label %.lr.ph360

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %.lr.ph360
  %indvars.iv423 = phi i64 [ 0, %.lr.ph360.preheader ], [ %indvars.iv.next424, %.lr.ph360 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv423 ; 6 uses
  %i.hx = load float, ptr %i.hw, align 8, !tbaa !54
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !54
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !54
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  %i.id = load float, ptr %i.ic, align 4, !tbaa !54
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.if = load float, ptr %i.ie, align 8, !tbaa !54
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.hx, float noundef %i.hz, float noundef %i.ib, float noundef %i.id, float noundef %i.if, float noundef %i.ih)
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 6 ; 3 uses
  %i.ii = add nuw nsw i64 %indvars.iv423, 11
  %i.ij = icmp samesign ult i64 %i.ii, %i.hv
  br i1 %i.ij, label %.lr.ph360, label %._crit_edge361, !llvm.loop !1229

._crit_edge361:                                   ; preds = %.lr.ph360
  %i.ik = trunc nuw nsw i64 %indvars.iv.next424 to i32
  %i.il = or disjoint i32 %i.ik, 1
  %.not269 = icmp slt i32 %i.il, %.0253366
  br i1 %.not269, label %bb.br, label %.critedge

bb.br:                                            ; preds = %._crit_edge361
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next424
  %i.in = load <2 x float>, ptr %i.im, align 4, !tbaa !54
  %i.io = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.ip = fadd <2 x float> %i.in, %i.io           ; 2 uses
  store <2 x float> %i.ip, ptr %i.ag, align 8, !tbaa !54
  %i.iq = fptosi <2 x float> %i.ip to <2 x i32>   ; 3 uses
  %i.ir = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i294 = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i294, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.is = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.it = extractelement <2 x i32> %i.iq, i64 0   ; 4 uses
  %i.iu = icmp slt i32 %i.is, %i.it
  br i1 %i.iu, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iv = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i295 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i.i295, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.it, ptr %i.ai, align 4, !tbaa !660
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.iw = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.ix = extractelement <2 x i32> %i.iq, i64 1   ; 4 uses
  %i.iy = icmp slt i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iz = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i296 = icmp eq i32 %i.iz, 0
  br i1 %.not20.i.i.i296, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 %i.ix, ptr %i.ak, align 4, !tbaa !662
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ja = load i32, ptr %i.al, align 8, !tbaa !663
  %i.jb = icmp sgt i32 %i.ja, %i.it
  br i1 %i.jb, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jc = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i297 = icmp eq i32 %i.jc, 0
  br i1 %.not21.i.i.i297, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %i.it, ptr %i.al, align 8, !tbaa !663
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.jd = load i32, ptr %i.am, align 8, !tbaa !664
  %i.je = icmp sgt i32 %i.jd, %i.ix
  br i1 %i.je, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jf = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i298 = icmp eq i32 %i.jf, 0
  br i1 %.not22.i.i.i298, label %bb.cd, label %stbtt__track_vertex.exit.i.i299

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.ix, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i299

stbtt__track_vertex.exit.i.i299:                  ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i301 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit302

bb.ce:                                            ; preds = %bb.br
  %i.jg = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.jh = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [14 x i8], ptr %i.jg, i64 %i.ji ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i8 2, ptr %i.jk, align 2, !tbaa !273
  %i.jl = trunc <2 x i32> %i.iq to <2 x i16>
  store <2 x i16> %i.jl, ptr %i.jj, align 2, !tbaa !106
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i64 0, ptr %i.jm, align 2
  br label %stbtt__csctx_rline_to.exit302

stbtt__csctx_rline_to.exit302:                    ; preds = %stbtt__track_vertex.exit.i.i299, %bb.ce
  %i.jn = phi i32 [ %.pre.i301, %stbtt__track_vertex.exit.i.i299 ], [ %i.jh, %bb.ce ]
  %i.jo = add nsw i32 %i.jn, 1
  store i32 %i.jo, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %.thread

bb.cf:                                            ; preds = %stbtt__buf_get8.exit
  %i.jp = icmp slt i32 %.0253366, 8
  br i1 %i.jp, label %.critedge, label %.lr.ph357.preheader

.lr.ph357.preheader:                              ; preds = %bb.cf
  %i.jq = add nsw i32 %.0253366, -6
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %.pre446 = load i32, ptr %2, align 8, !tbaa !659
  br label %.lr.ph357

.lr.ph357:                                        ; preds = %.lr.ph357.preheader, %stbtt__csctx_rline_to.exit311
  %i.jt = phi i32 [ %.pre446, %.lr.ph357.preheader ], [ %i.kv, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %indvars.iv420 = phi i64 [ 0, %.lr.ph357.preheader ], [ %indvars.iv.next421, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %i.ju = phi <2 x float> [ %i.js, %.lr.ph357.preheader ], [ %i.kx, %stbtt__csctx_rline_to.exit311 ]
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv420
  %i.jw = load <2 x float>, ptr %i.jv, align 8, !tbaa !54
  %i.jx = fadd <2 x float> %i.jw, %i.ju           ; 3 uses
  store <2 x float> %i.jx, ptr %i.ag, align 8, !tbaa !54
  %i.jy = fptosi <2 x float> %i.jx to <2 x i32>   ; 3 uses
  %.not.i.i303 = icmp eq i32 %i.jt, 0
  br i1 %.not.i.i303, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph357
  %i.jz = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.ka = extractelement <2 x i32> %i.jy, i64 0   ; 4 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kc = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i304 = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i.i304, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i32 %i.ka, ptr %i.ai, align 4, !tbaa !660
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.kd = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.ke = extractelement <2 x i32> %i.jy, i64 1   ; 4 uses
  %i.kf = icmp slt i32 %i.kd, %i.ke
  br i1 %i.kf, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kg = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i305 = icmp eq i32 %i.kg, 0
  br i1 %.not20.i.i.i305, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 %i.ke, ptr %i.ak, align 4, !tbaa !662
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.kh = load i32, ptr %i.al, align 8, !tbaa !663
  %i.ki = icmp sgt i32 %i.kh, %i.ka
  br i1 %i.ki, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kj = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i306 = icmp eq i32 %i.kj, 0
  br i1 %.not21.i.i.i306, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 %i.ka, ptr %i.al, align 8, !tbaa !663
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.kk = load i32, ptr %i.am, align 8, !tbaa !664
  %i.kl = icmp sgt i32 %i.kk, %i.ke
  br i1 %i.kl, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.km = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i307 = icmp eq i32 %i.km, 0
  br i1 %.not22.i.i.i307, label %bb.cr, label %stbtt__track_vertex.exit.i.i308

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %i.ke, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i308

stbtt__track_vertex.exit.i.i308:                  ; preds = %bb.cr, %bb.cq
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i310 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit311

bb.cs:                                            ; preds = %.lr.ph357
  %i.kn = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.ko = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [14 x i8], ptr %i.kn, i64 %i.kp ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i8 2, ptr %i.kr, align 2, !tbaa !273
  %i.ks = trunc <2 x i32> %i.jy to <2 x i16>
  store <2 x i16> %i.ks, ptr %i.kq, align 2, !tbaa !106
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  store i64 0, ptr %i.kt, align 2
  %i.ku = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %.pre445 = load i32, ptr %2, align 8, !tbaa !659
  br label %stbtt__csctx_rline_to.exit311

stbtt__csctx_rline_to.exit311:                    ; preds = %stbtt__track_vertex.exit.i.i308, %bb.cs
  %i.kv = phi i32 [ %i.jt, %stbtt__track_vertex.exit.i.i308 ], [ %.pre445, %bb.cs ]
  %i.kw = phi i32 [ %.pre.i310, %stbtt__track_vertex.exit.i.i308 ], [ %i.ko, %bb.cs ]
  %i.kx = phi <2 x float> [ %i.jx, %stbtt__track_vertex.exit.i.i308 ], [ %i.ku, %bb.cs ]
  %i.ky = add nsw i32 %i.kw, 1
  store i32 %i.ky, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 2 ; 4 uses
  %6 = or disjoint i64 %indvars.iv.next421, 1
  %i.kz = icmp samesign ult i64 %6, %i.jr
  br i1 %i.kz, label %.lr.ph357, label %._crit_edge, !llvm.loop !1230

._crit_edge:                                      ; preds = %stbtt__csctx_rline_to.exit311
  %i.la = trunc nuw nsw i64 %indvars.iv.next421 to i32
  %i.lb = add nuw nsw i32 %i.la, 5                ; 2 uses
  %.not268 = icmp slt i32 %i.lb, %.0253366
  br i1 %.not268, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %._crit_edge
  %i.lc = add nuw i32 %.0253366, 2147483640
  %i.ld = and i32 %i.lc, 2147483646
  %narrow = add nuw i32 %i.ld, 3
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next421 ; 4 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !54
  %i.lg = zext nneg i32 %narrow to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !54
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !54
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !54
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !54
  %i.lp = zext nneg i32 %i.lb to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.lf, float noundef %i.li, float noundef %i.lk, float noundef %i.lm, float noundef %i.lo, float noundef %i.lr)
  br label %.thread

bb.cu:                                            ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.ls = icmp slt i32 %.0253366, 4
  br i1 %i.ls, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.8 = and i32 %.0253366, 1
  %i.lt = add nuw nsw i32 %.8, 3
  %i.lu = icmp samesign ult i32 %i.lt, %.0253366
  br i1 %i.lu, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.cv
  %.not267 = trunc i32 %.0253366 to i1            ; 6 uses
  %i.lv = load float, ptr %i.a, align 16
  %.0242 = select i1 %.not267, float %i.lv, float 0.000000e+00 ; 2 uses
  %i.lw = icmp eq i8 %i.au, 27
  %.not267.mask478 = and i32 %.0253366, 1
  %i.lx = zext nneg i32 %.not267.mask478 to i64   ; 6 uses
  %i.ly = zext nneg i32 %.0253366 to i64          ; 3 uses
  %.val479 = load float, ptr %i.o, align 4        ; 3 uses
  %.val480 = load float, ptr %i.a, align 16
  %i.lz = select i1 %.not267, float %.val479, float %.val480 ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lx
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !54 ; 2 uses
  %i.md = add nuw nsw i64 %i.lx, 7
  %i.me = icmp samesign ult i64 %i.md, %i.ly      ; 2 uses
  br i1 %i.lw, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep433.val = load float, ptr %.sroa.gep.sroa.gep433, align 8 ; 2 uses
  %i.mf = select i1 %.not267, float %.sroa.gep.sroa.gep433.val, float %.val479
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.mg = select i1 %.not267, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep433.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %.0242, float noundef %i.lz, float noundef %i.mf, float noundef %i.mg, float noundef 0.000000e+00, float noundef %i.mc)
  br i1 %i.me, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.lx, 7
  %indvars.iv.next407.peel = or disjoint i64 %i.lx, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep436.sroa.gep439.val = load float, ptr %.sroa.gep436.sroa.gep439, align 8 ; 2 uses
  %i.mh = select i1 %.not267, float %.sroa.gep436.sroa.gep439.val, float %.val479
  %.sroa.gep436.sroa.gep.val = load float, ptr %.sroa.gep436.sroa.gep, align 4
  %i.mi = select i1 %.not267, float %.sroa.gep436.sroa.gep.val, float %.sroa.gep436.sroa.gep439.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.lz, float noundef %.0242, float noundef %i.mh, float noundef %i.mi, float noundef %i.mc, float noundef 0.000000e+00)
  br i1 %i.me, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next413.peel = add nuw nsw i64 %i.lx, 7
  %indvars.iv.next415.peel = or disjoint i64 %i.lx, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next415, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv412 = phi i64 [ %indvars.iv.next413.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next413, %.lr.ph.split.us ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv414 ; 3 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !54
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !54
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !54
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv412
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.mk, float noundef 0.000000e+00, float noundef %i.mm, float noundef %i.mo, float noundef %i.mq, float noundef 0.000000e+00)
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 4
  %i.mr = add nuw nsw i64 %indvars.iv414, 7
  %i.ms = icmp samesign ult i64 %i.mr, %i.ly
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 4
  br i1 %i.ms, label %.lr.ph.split.us, label %.thread, !llvm.loop !1231

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next407, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv406 ; 3 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !54
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !54
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.my = load float, ptr %i.mx, align 4, !tbaa !54
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.na = load float, ptr %i.mz, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.mu, float noundef %i.mw, float noundef %i.my, float noundef 0.000000e+00, float noundef %i.na)
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 4
  %i.nb = add nuw nsw i64 %indvars.iv406, 7
  %i.nc = icmp samesign ult i64 %i.nb, %i.ly
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.nc, label %.lr.ph.split, label %.thread, !llvm.loop !1232

bb.cw:                                            ; preds = %stbtt__buf_get8.exit
  %.not = icmp eq i32 %.0246369, 0
  br i1 %.not, label %bb.cx, label %bb.dh

bb.cx:                                            ; preds = %bb.cw
  %i.nd = load i32, ptr %i.z, align 4, !tbaa !1236 ; 13 uses
  %.not266 = icmp eq i32 %i.nd, 0
  br i1 %.not266, label %bb.dh, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !60 ; 9 uses
  %i.ne = tail call i32 @llvm.smin.i32(i32 %i.nd, i32 0) ; 2 uses
  %.not.i.i312 = icmp sgt i32 %i.nd, 0
  br i1 %.not.i.i312, label %stbtt__buf_get8.exit.i, label %stbtt__buf_get8.exit.thread.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.cy
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !56
  switch i8 %i.nh, label %stbtt__cid_get_glyph_subrs.exit [
    i8 0, label %stbtt__buf_get8.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %stbtt__buf_get8.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.nd, 1
  br i1 %.not.i.i.not.i, label %stbtt__buf_get8.exit.i.i, label %bb.da

stbtt__buf_get8.exit.thread.i:                    ; preds = %stbtt__buf_get8.exit.i, %bb.cy
  %.sroa.9.164.i = phi i32 [ 1, %stbtt__buf_get8.exit.i ], [ %i.ne, %bb.cy ]
  %i.ni = add nsw i32 %.sroa.9.164.i, %1          ; 2 uses
  %i.nj = icmp slt i32 %i.ni, 0
  %i.nk = tail call i32 @llvm.smin.i32(i32 %i.ni, i32 %i.nd)
  %..i.i.i = select i1 %i.nj, i32 %i.nd, i32 %i.nk ; 2 uses
  %.not.i25.i = icmp slt i32 %..i.i.i, %i.nd
  br i1 %.not.i25.i, label %bb.cz, label %stbtt__cid_get_glyph_subrs.exit

bb.cz:                                            ; preds = %stbtt__buf_get8.exit.thread.i
  %i.nl = sext i32 %..i.i.i to i64
  %i.nm = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !56
  %i.no = zext i8 %i.nn to i32
  br label %stbtt__cid_get_glyph_subrs.exit

bb.da:                                            ; preds = %.preheader.preheader.i
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !56
  %i.nr = zext i8 %i.nq to i32
  %i.ns = shl nuw nsw i32 %i.nr, 8
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.da, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.da ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.ns, %bb.da ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.nd
  br i1 %.not.i.i.1.i, label %bb.db, label %stbtt__buf_get8.exit.i.1.i

bb.db:                                            ; preds = %stbtt__buf_get8.exit.i.i
  %i.nt = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.nu = zext nneg i32 %.sroa.9.3.i to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !56
  %i.nx = zext i8 %i.nw to i32
  %i.ny = or disjoint i32 %.0.i.i.i, %i.nx
  br label %stbtt__buf_get8.exit.i.1.i

stbtt__buf_get8.exit.i.1.i:                       ; preds = %bb.db, %stbtt__buf_get8.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.nt, %bb.db ], [ %.sroa.9.3.i, %stbtt__buf_get8.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.ny, %bb.db ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i.i31.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.nd
  br i1 %.not.i.i31.i, label %bb.dc, label %stbtt__buf_get8.exit.i32.i

bb.dc:                                            ; preds = %stbtt__buf_get8.exit.i.1.i
  %i.nz = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.oa = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !56
  %i.od = zext i8 %i.oc to i32
  %i.oe = shl nuw nsw i32 %i.od, 8
  br label %stbtt__buf_get8.exit.i32.i
end_hunk_1
