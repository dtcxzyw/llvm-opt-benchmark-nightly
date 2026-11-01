Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render_gles2?download=true
inline.NumInlined: 74
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@GLES2_CacheShader:bb.a
  %.041.lcssa = phi i32 [ %i.af, %.lr.ph.split.us.peel.newph ], [ %i.x, %.lr.ph.split.us ], [ %i.n, %.lr.ph.split.peel ], [ %i.an, %.lr.ph.split ] ; 4 uses
  %.not46.lcssa = phi i1 [ %.not46.us, %.lr.ph.split.us.peel.newph ], [ false, %.lr.ph.split.us ], [ false, %.lr.ph.split.peel ], [ %.not46, %.lr.ph.split ]
  br i1 %.not46.lcssa, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(i32 noundef %.041.lcssa, i32 noundef 35716, ptr noundef nonnull %i.c) #10
  %i.au = load i32, ptr %i.c, align 4             ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.aw) #10 ; 4 uses
  %.not48 = icmp eq ptr %i.ax, null
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i32, ptr %i.c, align 4
  call void %i.az(i32 noundef %.041.lcssa, i32 noundef %i.ba, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ax) #10
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 6, ptr noundef nonnull @.str.103, i32 noundef %1, ptr noundef nonnull %i.ax) #10
  call void @SDL_free_REAL(ptr noundef nonnull %i.ax) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 6, ptr noundef nonnull @.str.104, i32 noundef %1) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(i32 noundef %.041.lcssa) #10
  %i.bd = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.104, i32 noundef %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.bf = zext i32 %1 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %.041.lcssa, ptr %i.bg, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.042 = phi i1 [ true, %bb.h ], [ %i.bd, %bb.g ], [ %i.ak, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.042
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GL_CheckAllErrors(ptr noundef %0, ptr nofree readonly captures(none) %.736.val, i32 noundef range(i32 1627, 2465) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.736.val, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.736.val, i64 200 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 %i.e() #10                 ; 2 uses
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.g = phi i32 [ %i.n, %bb.e ], [ %i.f, %.preheader ] ; 2 uses
  %.0166 = phi ptr [ %.117, %bb.e ], [ %0, %.preheader ] ; 3 uses
  %.not19 = icmp eq ptr %.0166, null
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i8, ptr %.0166, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117 = phi ptr [ @.str.105, %bb.c ], [ %.0166, %bb.b ] ; 2 uses
  %switch.tableidx = add i32 %i.g, -1280          ; 2 uses
  %i.j = icmp ult i32 %switch.tableidx, 6
  br i1 %i.j, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GL_CheckAllErrors, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.112, %bb.d ]
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.106, ptr noundef nonnull %.117, ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %.0.i, i32 noundef %i.g) #10 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = tail call i32 %i.m() #10                 ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  ret void
}

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetError_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_RecreateWindow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @SDL_GetBlendModeSrcColorFactor(i32 noundef) local_unnamed_addr #2

declare i32 @SDL_GetBlendModeSrcAlphaFactor(i32 noundef) local_unnamed_addr #2

declare i32 @SDL_GetBlendModeColorOperation(i32 noundef) local_unnamed_addr #2

declare i32 @SDL_GetBlendModeDstColorFactor(i32 noundef) local_unnamed_addr #2

declare i32 @SDL_GetBlendModeDstAlphaFactor(i32 noundef) local_unnamed_addr #2

declare i32 @SDL_GetBlendModeAlphaOperation(i32 noundef) local_unnamed_addr #2

declare ptr @SDL_GL_GetCurrentContext_REAL() local_unnamed_addr #2

declare i64 @SDL_GetNumberProperty_REAL(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SDL_GetTextureProperties_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetYCbCRtoRGBConversionMatrix(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @SDL_AllocateRenderVertices(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare float @SDL_atan2f_REAL(float noundef, float noundef) local_unnamed_addr #2

declare float @SDL_cosf_REAL(float noundef) local_unnamed_addr #2

declare float @SDL_sinf_REAL(float noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SetDrawState(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 1, 11) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.p = load i32, ptr %i.o, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 612
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = add i32 %i.t, %i.v
  %i.x = sub i32 %i.r, %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i32 [ %.pre, %bb.c ], [ %i.v, %bb.d ]
  %i.z = phi i32 [ %i.p, %bb.c ], [ %i.x, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8
  tail call void %i.k(i32 noundef %i.l, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.y) #10
  %i.ac = load i32, ptr %i.aa, align 8
  %.not105 = icmp eq i32 %i.ac, 0
  br i1 %.not105, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.ae = load i32, ptr %i.ad, align 4
  %.not106 = icmp eq i32 %i.ae, 0
  br i1 %.not106, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %4 = load <2 x i32>, ptr %i.aa, align 8
  %i.af = sitofp <2 x i32> %4 to <2 x float>
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ah = load ptr, ptr %i.m, align 8
  %.not107 = icmp eq ptr %i.ah, null              ; 2 uses
  %i.ai = select i1 %.not107, float -2.000000e+00, float 2.000000e+00
  %i.aj = insertelement <2 x float> <float 2.000000e+00, float poison>, float %i.ai, i64 1
  %i.ak = fdiv <2 x float> %i.aj, %i.af           ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  store float %i.al, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.an = extractelement <2 x float> %i.ak, i64 1
  store float %i.an, ptr %i.am, align 4
  %i.ao = select i1 %.not107, float 1.000000e+00, float -1.000000e+00
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 764
  store float %i.ao, ptr %i.ap, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i8 0, ptr %i.g, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !range !10, !noundef !11
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 645
  %i.au = load i8, ptr %i.at, align 1, !range !10, !noundef !11
  %i.av = trunc nuw i8 %i.au to i1
  %.145 = select i1 %i.av, i64 152, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.145
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(i32 noundef 3089) #10
  store i8 0, ptr %i.aq, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 645
  %i.az = load i8, ptr %i.ay, align 1, !range !10, !noundef !11
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !range !10, !noundef !11
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load i32, ptr %i.f, align 8
  %i.bi = load i32, ptr %i.be, align 8
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not109 = icmp eq ptr %i.bl, null
  br i1 %.not109, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add nsw i32 %i.bp, %i.bn
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.pre135 = load i32, ptr %.phi.trans.insert134, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = add i32 %i.bu, %i.bw
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = sub i32 %i.bs, %i.ca
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cc = phi i32 [ %.pre135, %bb.n ], [ %i.by, %bb.o ]
  %i.cd = phi i32 [ %i.bq, %bb.n ], [ %i.cb, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.cf = load i32, ptr %i.ce, align 8
  tail call void %i.bg(i32 noundef %i.bj, i32 noundef %i.cd, i32 noundef %i.cf, i32 noundef %i.cc) #10
  store i8 0, ptr %i.bb, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 665 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !range !10, !noundef !11
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = icmp ne ptr %i.c, null
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cl = load i8, ptr %i.ck, align 8, !range !10, !noundef !11
  %i.cm = zext i1 %i.cj to i8
  %.not110 = icmp eq i8 %i.cl, %i.cm
  br i1 %.not110, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not111 = icmp ne ptr %i.c, null               ; 2 uses
  %.146 = select i1 %.not111, i64 160, i64 136
  %.147 = zext i1 %.not111 to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.146
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(i32 noundef 2) #10
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i8 %.147, ptr %i.cp, align 8
  store i8 0, ptr %i.cg, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not112 = icmp eq ptr %i.c, null               ; 2 uses
  %. = select i1 %.not112, i32 24, i32 32         ; 2 uses
  br i1 %.not112, label %bb.u, label %.split

.split:                                           ; preds = %bb.t
  %i.cq = ptrtoint ptr %3 to i64
  %i.cr = load i64, ptr %i.a, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = add i64 %i.cq, 24
  %i.cv = add i64 %i.cu, %i.cr
  %i.cw = inttoptr i64 %i.cv to ptr
  tail call void %i.ct(i32 noundef 2, i32 noundef 2, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 32, ptr noundef %i.cw) #10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = tail call fastcc zeroext i1 @GLES2_SelectProgram(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef %2, i32 noundef %i.da, i32 noundef %i.cy)
  br i1 %i.db, label %bb.v, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = tail call fastcc zeroext i1 @GLES2_SelectProgram(ptr noundef nonnull %0, ptr noundef null, i32 noundef %2, i32 noundef %i.dd, i32 noundef 301991328)
  br i1 %i.de, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %.split, %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %.not113 = icmp eq i32 %i.di, -1
  br i1 %.not113, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 44 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.dl = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dk, i64 noundef 64) #10
  %.not114 = icmp eq i32 %i.dl, 0
  br i1 %.not114, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load i32, ptr %i.dh, align 4
  tail call void %i.dn(i32 noundef %i.do, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.dk) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dj, ptr noundef nonnull align 8 dereferenceable(64) %i.dk, i64 64, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8
  %.not115 = icmp eq i32 %i.e, %i.dq
  br i1 %.not115, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = icmp eq i32 %i.e, 0
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void %i.dt(i32 noundef 3042) #10
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dv(i32 noundef 3042) #10
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = tail call i32 @SDL_GetBlendModeSrcColorFactor(i32 noundef %i.e) #10
  %switch.tableidx = add i32 %i.dy, -1            ; 2 uses
  %i.dz = icmp ult i32 %switch.tableidx, 10
  br i1 %i.dz, label %switch.lookup, label %GetBlendFunc.exit

switch.lookup:                                    ; preds = %bb.ab
  %i.ea = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.SetDrawState.16, i64 %i.ea
end_hunk_0
