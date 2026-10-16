Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorequal?download=true
inline.NumInlined: 278
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_periodic_RBF_interpolate:bb.a
  %.idx.i.i = shl nuw nsw i64 %.02432.i.i, 5
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yj, i64 %.idx.i.i
  %.phi.trans.insert52.i.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert51.i.i, i64 %.02432.i.i
  %.pre53.i.i = load float, ptr %.phi.trans.insert52.i.i, align 4, !tbaa !12, !alias.scope !507
  %broadcast.splatinsert614 = insertelement <8 x float> poison, float %.pre53.i.i, i64 0
  %broadcast.splat615 = shufflevector <8 x float> %broadcast.splatinsert614, <8 x float> poison, <8 x i32> zeroinitializer
  %.phi.trans.insert49.i.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert48.i.i, i64 %.02432.i.i
  %.pre50.i.i = load float, ptr %.phi.trans.insert49.i.i, align 4, !tbaa !12, !alias.scope !507
  %broadcast.splatinsert612 = insertelement <8 x float> poison, float %.pre50.i.i, i64 0
  %broadcast.splat613 = shufflevector <8 x float> %broadcast.splatinsert612, <8 x float> poison, <8 x i32> zeroinitializer
  %.phi.trans.insert46.i.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert45.i.i, i64 %.02432.i.i
  %.pre47.i.i = load float, ptr %.phi.trans.insert46.i.i, align 4, !tbaa !12, !alias.scope !507
  %broadcast.splatinsert610 = insertelement <8 x float> poison, float %.pre47.i.i, i64 0
  %broadcast.splat611 = shufflevector <8 x float> %broadcast.splatinsert610, <8 x float> poison, <8 x i32> zeroinitializer
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert42.i.i, i64 %.02432.i.i
  %.pre44.i.i = load float, ptr %.phi.trans.insert43.i.i, align 4, !tbaa !12, !alias.scope !507
  %broadcast.splatinsert608 = insertelement <8 x float> poison, float %.pre44.i.i, i64 0
  %broadcast.splat609 = shufflevector <8 x float> %broadcast.splatinsert608, <8 x float> poison, <8 x i32> zeroinitializer
  %.phi.trans.insert40.i.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert39.i.i, i64 %.02432.i.i
  %.pre41.i.i = load float, ptr %.phi.trans.insert40.i.i, align 4, !tbaa !12, !alias.scope !507
  %broadcast.splatinsert606 = insertelement <8 x float> poison, float %.pre41.i.i, i64 0
  %broadcast.splat607 = shufflevector <8 x float> %broadcast.splatinsert606, <8 x float> poison, <8 x i32> zeroinitializer
  %.phi.trans.insert37.i.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert36.i.i, i64 %.02432.i.i
  %.pre38.i.i = load float, ptr %.phi.trans.insert37.i.i, align 4, !tbaa !12, !alias.scope !507
  %broadcast.splatinsert604 = insertelement <8 x float> poison, float %.pre38.i.i, i64 0
  %broadcast.splat605 = shufflevector <8 x float> %broadcast.splatinsert604, <8 x float> poison, <8 x i32> zeroinitializer
  %.phi.trans.insert34.i.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert.i.i, i64 %.02432.i.i
  %.pre35.i.i = load float, ptr %.phi.trans.insert34.i.i, align 4, !tbaa !12, !alias.scope !507
  %broadcast.splatinsert602 = insertelement <8 x float> poison, float %.pre35.i.i, i64 0
  %broadcast.splat603 = shufflevector <8 x float> %broadcast.splatinsert602, <8 x float> poison, <8 x i32> zeroinitializer
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02432.i.i
  %.pre.i.i = load float, ptr %i.yr, align 4, !tbaa !12, !alias.scope !507
  %broadcast.splatinsert600 = insertelement <8 x float> poison, float %.pre.i.i, i64 0
  %broadcast.splat601 = shufflevector <8 x float> %broadcast.splatinsert600, <8 x float> poison, <8 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %indvars.iv.i.i, -1
  %broadcast.splatinsert598 = insertelement <8 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat599 = shufflevector <8 x i64> %broadcast.splatinsert598, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ys = icmp uge <8 x i64> %broadcast.splat599, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.yt = fmul reassoc nsz arcp contract afn <8 x float> %unmaskedload, %broadcast.splat601
  %i.yu = fmul reassoc nsz arcp contract afn <8 x float> %unmaskedload1094, %broadcast.splat603
  %i.yv = fadd reassoc nsz arcp contract afn <8 x float> %i.yu, %i.yt
  %i.yw = fmul reassoc nsz arcp contract afn <8 x float> %unmaskedload1095, %broadcast.splat605
  %i.yx = fadd reassoc nsz arcp contract afn <8 x float> %i.yv, %i.yw
  %i.yy = fmul reassoc nsz arcp contract afn <8 x float> %unmaskedload1096, %broadcast.splat607
  %i.yz = fadd reassoc nsz arcp contract afn <8 x float> %i.yx, %i.yy
  %i.za = fmul reassoc nsz arcp contract afn <8 x float> %unmaskedload1097, %broadcast.splat609
  %i.zb = fadd reassoc nsz arcp contract afn <8 x float> %i.yz, %i.za
  %i.zc = fmul reassoc nsz arcp contract afn <8 x float> %unmaskedload1098, %broadcast.splat611
  %i.zd = fadd reassoc nsz arcp contract afn <8 x float> %i.zb, %i.zc
  %i.ze = fmul reassoc nsz arcp contract afn <8 x float> %unmaskedload1099, %broadcast.splat613
  %i.zf = fadd reassoc nsz arcp contract afn <8 x float> %i.zd, %i.ze
  %i.zg = fmul reassoc nsz arcp contract afn <8 x float> %unmaskedload1100, %broadcast.splat615
  %i.zh = fadd reassoc nsz arcp contract afn <8 x float> %i.zf, %i.zg
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.zh, ptr align 32 %i.yq, <8 x i1> %i.ys), !tbaa !12, !alias.scope !506, !noalias !503
  %i.zi = add nuw nsw i64 %.02432.i.i, 1          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond33.not.i.i = icmp eq i64 %i.zi, 8
  br i1 %exitcond33.not.i.i, label %_transpose_dot_matrix.exit.i, label %.preheader28.i.i

_transpose_dot_matrix.exit.i:                     ; preds = %.preheader28.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yk, i64 4 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yk, i64 12 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yk, i64 16 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yk, i64 20
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yk, i64 24 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yk, i64 28
  %i.zx = load float, ptr %0, align 4, !tbaa !12, !alias.scope !511
  %i.zy = load float, ptr %i.zj, align 4, !tbaa !12, !alias.scope !511
  %i.zz = load float, ptr %i.zk, align 4, !tbaa !12, !alias.scope !511
  %i.aaa = load float, ptr %i.zl, align 4, !tbaa !12, !alias.scope !511
  %i.aab = load float, ptr %i.zm, align 4, !tbaa !12, !alias.scope !511
  %i.aac = load float, ptr %i.zn, align 4, !tbaa !12, !alias.scope !511
  %i.aad = load float, ptr %i.zo, align 4, !tbaa !12, !alias.scope !511
  %i.aae = load float, ptr %i.zp, align 4, !tbaa !12, !alias.scope !511
  %i.aaf = load <8 x float>, ptr %i.a, align 64, !tbaa !12, !alias.scope !512
  %i.aag = insertelement <8 x float> poison, float %i.zx, i64 0
  %i.aah = shufflevector <8 x float> %i.aag, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aai = fmul reassoc nsz arcp contract afn <8 x float> %i.aaf, %i.aah
  %i.aaj = load <8 x float>, ptr %.phi.trans.insert.i.i, align 32, !tbaa !12, !alias.scope !512
  %i.aak = insertelement <8 x float> poison, float %i.zy, i64 0
  %i.aal = shufflevector <8 x float> %i.aak, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aam = fmul reassoc nsz arcp contract afn <8 x float> %i.aaj, %i.aal
  %i.aan = fadd reassoc nsz arcp contract afn <8 x float> %i.aam, %i.aai
  %i.aao = load <8 x float>, ptr %.phi.trans.insert36.i.i, align 64, !tbaa !12, !alias.scope !512
  %i.aap = insertelement <8 x float> poison, float %i.zz, i64 0
  %i.aaq = shufflevector <8 x float> %i.aap, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aar = fmul reassoc nsz arcp contract afn <8 x float> %i.aao, %i.aaq
  %i.aas = fadd reassoc nsz arcp contract afn <8 x float> %i.aan, %i.aar
  %i.aat = load <8 x float>, ptr %.phi.trans.insert39.i.i, align 32, !tbaa !12, !alias.scope !512
  %i.aau = insertelement <8 x float> poison, float %i.aaa, i64 0
  %i.aav = shufflevector <8 x float> %i.aau, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aaw = fmul reassoc nsz arcp contract afn <8 x float> %i.aat, %i.aav
  %i.aax = fadd reassoc nsz arcp contract afn <8 x float> %i.aas, %i.aaw
  %i.aay = load <8 x float>, ptr %.phi.trans.insert42.i.i, align 64, !tbaa !12, !alias.scope !512
  %i.aaz = insertelement <8 x float> poison, float %i.aab, i64 0
  %i.aba = shufflevector <8 x float> %i.aaz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abb = fmul reassoc nsz arcp contract afn <8 x float> %i.aay, %i.aba
  %i.abc = fadd reassoc nsz arcp contract afn <8 x float> %i.aax, %i.abb
  %i.abd = load <8 x float>, ptr %.phi.trans.insert45.i.i, align 32, !tbaa !12, !alias.scope !512
  %i.abe = insertelement <8 x float> poison, float %i.aac, i64 0
  %i.abf = shufflevector <8 x float> %i.abe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abg = fmul reassoc nsz arcp contract afn <8 x float> %i.abd, %i.abf
  %i.abh = fadd reassoc nsz arcp contract afn <8 x float> %i.abc, %i.abg
  %i.abi = load <8 x float>, ptr %.phi.trans.insert48.i.i, align 64, !tbaa !12, !alias.scope !512
  %i.abj = insertelement <8 x float> poison, float %i.aad, i64 0
  %i.abk = shufflevector <8 x float> %i.abj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abl = fmul reassoc nsz arcp contract afn <8 x float> %i.abi, %i.abk
  %i.abm = fadd reassoc nsz arcp contract afn <8 x float> %i.abh, %i.abl
  %i.abn = load <8 x float>, ptr %.phi.trans.insert51.i.i, align 32, !tbaa !12, !alias.scope !512
  %i.abo = insertelement <8 x float> poison, float %i.aae, i64 0
  %i.abp = shufflevector <8 x float> %i.abo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abq = fmul reassoc nsz arcp contract afn <8 x float> %i.abn, %i.abp
  %i.abr = fadd reassoc nsz arcp contract afn <8 x float> %i.abm, %i.abq ; 4 uses
  store <8 x float> %i.abr, ptr %i.yk, align 64, !tbaa !12, !alias.scope !510, !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.abs = tail call ptr @dt_alloc_aligned(i64 noundef 32) #32, !noalias !515 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abs, i64 64) ]
  %i.abt = tail call ptr @dt_alloc_aligned(i64 noundef 256) #32, !noalias !515 ; 67 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abt, i64 64) ]
  %i.abu = icmp ne ptr %i.abs, null
  %i.abv = icmp ne ptr %i.abt, null
  %or.cond.i.i = select i1 %i.abu, i1 %i.abv, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_transpose_dot_matrix.exit.i
  tail call void @free(ptr noundef %i.abs) #32, !noalias !515
  tail call void @free(ptr noundef %i.abt) #32, !noalias !515
  %i.abw = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 5) #32, !noalias !515
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.abw) #32, !noalias !515
  %i.abx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !132, !noalias !516
  %i.aby = and i32 %i.abx, 33554432
  %.not.i.i = icmp eq i32 %i.aby, 0
  br i1 %.not.i.i, label %_solve_hermitian.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.106) #32, !noalias !515
  br label %_solve_hermitian.exit.thread.i

bb.h:                                             ; preds = %_transpose_dot_matrix.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.abz = load float, ptr %i.yj, align 64, !tbaa !12, !alias.scope !519, !noalias !503
  %i.aca = fcmp reassoc nsz arcp contract afn ugt float %i.abz, 0.000000e+00
  br i1 %i.aca, label %.preheader76.i.i.i.preheader, label %_solve_hermitian.exit.i

.preheader76.i.i.i.preheader:                     ; preds = %bb.h
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abt, i64 32
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abt, i64 36
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abt, i64 64
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abt, i64 72
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abt, i64 96
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abt, i64 108
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abt, i64 128
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abt, i64 144
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abt, i64 160
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abt, i64 180
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abt, i64 192
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abt, i64 216
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abt, i64 224
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abt, i64 252
  br label %.preheader76.i.i.i

.preheader76.i.i.i:                               ; preds = %.preheader76.i.i.i.preheader, %bb.j
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.j ], [ 1, %.preheader76.i.i.i.preheader ] ; 8 uses
  %.06583.i.i.i = phi i64 [ %i.acw, %bb.j ], [ 0, %.preheader76.i.i.i.preheader ] ; 13 uses
  %.06682.i.i.i = phi i32 [ %.4.i.i.i.lcssa, %bb.j ], [ 1, %.preheader76.i.i.i.preheader ] ; 2 uses
  %.idx74.i.i.i = shl nuw nsw i64 %.06583.i.i.i, 5
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abt, i64 %.idx74.i.i.i ; 15 uses
  %i.acq = shl nuw nsw i64 %.06583.i.i.i, 3       ; 10 uses
  %.idx73.i.i.i = mul nuw nsw i64 %.06583.i.i.i, 36
  %i.acr = getelementptr inbounds nuw i8, ptr %i.yj, i64 %.idx73.i.i.i ; 8 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.acq
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %.06583.i.i.i ; 16 uses
  %i.acu = icmp eq i64 %.06583.i.i.i, 0
  br i1 %i.acu, label %bb.k, label %bb.n

bb.i:                                             ; preds = %bb.j
  %i.acv = icmp eq i32 %.4.i.i.i.lcssa, 0
  br i1 %i.acv, label %.critedge.sink.split.i.i, label %_choleski_decompose.exit.i.i

bb.j:                                             ; preds = %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bg, %bb.az, %bb.as, %bb.al, %bb.ae, %bb.x, %bb.q
  %.4.i.i.i.lcssa = phi i32 [ %.4.i.i.i, %bb.q ], [ %.4.i.i.i.1, %bb.x ], [ %.4.i.i.i.2, %bb.ae ], [ %.4.i.i.i.3, %bb.al ], [ %.4.i.i.i.4, %bb.as ], [ %.4.i.i.i.5, %bb.az ], [ %.4.i.i.i.6, %bb.bg ], [ %.4.i.i.i.6, %bb.bl ], [ 0, %bb.bm ], [ 0, %bb.bj ], [ %.4.i.i.i.6, %bb.bi ] ; 2 uses
  %i.acw = add nuw nsw i64 %.06583.i.i.i, 1       ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %exitcond86.not.i.i.i = icmp eq i64 %i.acw, 8
  br i1 %exitcond86.not.i.i.i, label %bb.i, label %.preheader76.i.i.i

bb.k:                                             ; preds = %.preheader76.i.i.i
  %i.acx = load float, ptr %i.acr, align 64, !tbaa !12, !alias.scope !519, !noalias !503 ; 2 uses
  %i.acy = fcmp reassoc nsz arcp contract afn olt float %i.acx, 0.000000e+00
  br i1 %i.acy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float +qnan, ptr %i.act, align 64, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.acz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.acx)
  store float %i.acz, ptr %i.act, align 64, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.q

bb.n:                                             ; preds = %.preheader76.i.i.i
  %i.ada = load float, ptr %i.abt, align 64, !tbaa !12, !alias.scope !518, !noalias !515 ; 2 uses
  %i.adb = fcmp reassoc nsz arcp contract afn oeq float %i.ada, 0.000000e+00
  br i1 %i.adb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float +qnan, ptr %i.acp, align 32, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.acq
  %i.add = load float, ptr %i.adc, align 32, !tbaa !12, !alias.scope !519, !noalias !503
  %i.ade = fdiv reassoc nsz arcp contract afn float %i.add, %i.ada
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.acq
  store float %i.ade, ptr %i.adf, align 32, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.4.i.i.i = phi i32 [ %.06682.i.i.i, %bb.m ], [ 0, %bb.l ], [ 0, %bb.o ], [ %.06682.i.i.i, %bb.p ] ; 3 uses
  %exitcond85.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 1
  br i1 %exitcond85.not.i.i.i, label %bb.j, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.q
  %wide.masked.load631.1 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 32 %i.acb, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %wide.masked.load630.1 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.acp, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %i.adg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load631.1, %wide.masked.load630.1
  %i.adh = shufflevector <8 x float> %i.adg, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.adh) ; 2 uses
  %i.adj = icmp eq i64 %.06583.i.i.i, 1
  br i1 %i.adj, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.1
  %i.adk = load float, ptr %i.acc, align 4, !tbaa !12, !alias.scope !518, !noalias !515 ; 2 uses
  %i.adl = fcmp reassoc nsz arcp contract afn oeq float %i.adk, 0.000000e+00
  br i1 %i.adl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.adm = or disjoint i64 %i.acq, 1              ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.adm
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !12, !alias.scope !519, !noalias !503
  %i.adp = fsub reassoc nsz arcp contract afn float %i.ado, %i.adi
  %i.adq = fdiv reassoc nsz arcp contract afn float %i.adp, %i.adk
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.adm
  store float %i.adq, ptr %i.adr, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  store float +qnan, ptr %i.ads, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph.i.i.i.1
  %i.adt = load float, ptr %i.acr, align 4, !tbaa !12, !alias.scope !519, !noalias !503
  %i.adu = fsub reassoc nsz arcp contract afn float %i.adt, %i.adi ; 2 uses
  %i.adv = fcmp reassoc nsz arcp contract afn olt float %i.adu, 0.000000e+00
  br i1 %i.adv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.adw = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.adu)
  store float %i.adw, ptr %i.act, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store float +qnan, ptr %i.act, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s
  %.4.i.i.i.1 = phi i32 [ %.4.i.i.i, %bb.v ], [ 0, %bb.w ], [ 0, %bb.t ], [ %.4.i.i.i, %bb.s ] ; 3 uses
  %exitcond85.not.i.i.i.1 = icmp eq i64 %indvars.iv.i.i.i, 2
  br i1 %exitcond85.not.i.i.i.1, label %bb.j, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.x
  %wide.masked.load631.2 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 64 %i.acd, <8 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %wide.masked.load630.2 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.acp, <8 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %i.adx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load631.2, %wide.masked.load630.2
  %i.ady = shufflevector <8 x float> %i.adx, <8 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ady) ; 2 uses
  %i.aea = icmp eq i64 %.06583.i.i.i, 2
  br i1 %i.aea, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.2
  %i.aeb = load float, ptr %i.ace, align 8, !tbaa !12, !alias.scope !518, !noalias !515 ; 2 uses
  %i.aec = fcmp reassoc nsz arcp contract afn oeq float %i.aeb, 0.000000e+00
  br i1 %i.aec, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aed = or disjoint i64 %i.acq, 2              ; 2 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.aed
  %i.aef = load float, ptr %i.aee, align 8, !tbaa !12, !alias.scope !519, !noalias !503
  %i.aeg = fsub reassoc nsz arcp contract afn float %i.aef, %i.adz
  %i.aeh = fdiv reassoc nsz arcp contract afn float %i.aeg, %i.aeb
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.aed
  store float %i.aeh, ptr %i.aei, align 8, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.aej = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  store float +qnan, ptr %i.aej, align 8, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.ae

bb.ab:                                            ; preds = %.lr.ph.i.i.i.2
  %i.aek = load float, ptr %i.acr, align 8, !tbaa !12, !alias.scope !519, !noalias !503
  %i.ael = fsub reassoc nsz arcp contract afn float %i.aek, %i.adz ; 2 uses
  %i.aem = fcmp reassoc nsz arcp contract afn olt float %i.ael, 0.000000e+00
  br i1 %i.aem, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aen = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ael)
  store float %i.aen, ptr %i.act, align 8, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store float +qnan, ptr %i.act, align 8, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z
  %.4.i.i.i.2 = phi i32 [ %.4.i.i.i.1, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.aa ], [ %.4.i.i.i.1, %bb.z ] ; 3 uses
  %exitcond85.not.i.i.i.2 = icmp eq i64 %indvars.iv.i.i.i, 3
  br i1 %exitcond85.not.i.i.i.2, label %bb.j, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.ae
  %wide.masked.load631.3 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 32 %i.acf, <8 x i1> <i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %wide.masked.load630.3 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.acp, <8 x i1> <i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %i.aeo = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load631.3, %wide.masked.load630.3
  %i.aep = shufflevector <8 x float> %i.aeo, <8 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aeq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.aep) ; 2 uses
  %i.aer = icmp eq i64 %.06583.i.i.i, 3
  br i1 %i.aer, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.3
  %i.aes = load float, ptr %i.acg, align 4, !tbaa !12, !alias.scope !518, !noalias !515 ; 2 uses
  %i.aet = fcmp reassoc nsz arcp contract afn oeq float %i.aes, 0.000000e+00
  br i1 %i.aet, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.aeu = or disjoint i64 %i.acq, 3              ; 2 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.aeu
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !12, !alias.scope !519, !noalias !503
  %i.aex = fsub reassoc nsz arcp contract afn float %i.aew, %i.aeq
  %i.aey = fdiv reassoc nsz arcp contract afn float %i.aex, %i.aes
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.aeu
  store float %i.aey, ptr %i.aez, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.afa = getelementptr inbounds nuw i8, ptr %i.acp, i64 12
  store float +qnan, ptr %i.afa, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.al

bb.ai:                                            ; preds = %.lr.ph.i.i.i.3
  %i.afb = load float, ptr %i.acr, align 4, !tbaa !12, !alias.scope !519, !noalias !503
  %i.afc = fsub reassoc nsz arcp contract afn float %i.afb, %i.aeq ; 2 uses
  %i.afd = fcmp reassoc nsz arcp contract afn olt float %i.afc, 0.000000e+00
  br i1 %i.afd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.afe = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.afc)
  store float %i.afe, ptr %i.act, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  store float +qnan, ptr %i.act, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.ag
  %.4.i.i.i.3 = phi i32 [ %.4.i.i.i.2, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.ah ], [ %.4.i.i.i.2, %bb.ag ] ; 3 uses
  %exitcond85.not.i.i.i.3 = icmp eq i64 %indvars.iv.i.i.i, 4
  br i1 %exitcond85.not.i.i.i.3, label %bb.j, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.al
  %wide.masked.load631.4 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 64 %i.ach, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %wide.masked.load630.4 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.acp, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %i.aff = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load631.4, %wide.masked.load630.4
  %i.afg = shufflevector <8 x float> %i.aff, <8 x float> <float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.afh = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.afg) ; 2 uses
  %i.afi = icmp eq i64 %.06583.i.i.i, 4
  br i1 %i.afi, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.4
  %i.afj = load float, ptr %i.aci, align 16, !tbaa !12, !alias.scope !518, !noalias !515 ; 2 uses
  %i.afk = fcmp reassoc nsz arcp contract afn oeq float %i.afj, 0.000000e+00
  br i1 %i.afk, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.afl = or disjoint i64 %i.acq, 4              ; 2 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.afl
  %i.afn = load float, ptr %i.afm, align 16, !tbaa !12, !alias.scope !519, !noalias !503
  %i.afo = fsub reassoc nsz arcp contract afn float %i.afn, %i.afh
  %i.afp = fdiv reassoc nsz arcp contract afn float %i.afo, %i.afj
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.afl
  store float %i.afp, ptr %i.afq, align 16, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  %i.afr = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  store float +qnan, ptr %i.afr, align 16, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.as

bb.ap:                                            ; preds = %.lr.ph.i.i.i.4
  %i.afs = load float, ptr %i.acr, align 16, !tbaa !12, !alias.scope !519, !noalias !503
  %i.aft = fsub reassoc nsz arcp contract afn float %i.afs, %i.afh ; 2 uses
  %i.afu = fcmp reassoc nsz arcp contract afn olt float %i.aft, 0.000000e+00
  br i1 %i.afu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.afv = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aft)
  store float %i.afv, ptr %i.act, align 16, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  store float +qnan, ptr %i.act, align 16, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an
  %.4.i.i.i.4 = phi i32 [ %.4.i.i.i.3, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.ao ], [ %.4.i.i.i.3, %bb.an ] ; 3 uses
  %exitcond85.not.i.i.i.4 = icmp eq i64 %indvars.iv.i.i.i, 5
  br i1 %exitcond85.not.i.i.i.4, label %bb.j, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %bb.as
  %wide.masked.load631.5 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 32 %i.acj, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %wide.masked.load630.5 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.acp, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %i.afw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load631.5, %wide.masked.load630.5
  %i.afx = shufflevector <8 x float> %i.afw, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.afy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.afx) ; 2 uses
  %i.afz = icmp eq i64 %.06583.i.i.i, 5
  br i1 %i.afz, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.5
  %i.aga = load float, ptr %i.ack, align 4, !tbaa !12, !alias.scope !518, !noalias !515 ; 2 uses
  %i.agb = fcmp reassoc nsz arcp contract afn oeq float %i.aga, 0.000000e+00
  br i1 %i.agb, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.agc = or disjoint i64 %i.acq, 5              ; 2 uses
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.agc
  %i.age = load float, ptr %i.agd, align 4, !tbaa !12, !alias.scope !519, !noalias !503
  %i.agf = fsub reassoc nsz arcp contract afn float %i.age, %i.afy
  %i.agg = fdiv reassoc nsz arcp contract afn float %i.agf, %i.aga
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.agc
  store float %i.agg, ptr %i.agh, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.az

bb.av:                                            ; preds = %bb.at
  %i.agi = getelementptr inbounds nuw i8, ptr %i.acp, i64 20
  store float +qnan, ptr %i.agi, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.az

bb.aw:                                            ; preds = %.lr.ph.i.i.i.5
  %i.agj = load float, ptr %i.acr, align 4, !tbaa !12, !alias.scope !519, !noalias !503
  %i.agk = fsub reassoc nsz arcp contract afn float %i.agj, %i.afy ; 2 uses
  %i.agl = fcmp reassoc nsz arcp contract afn olt float %i.agk, 0.000000e+00
  br i1 %i.agl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.agm = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.agk)
  store float %i.agm, ptr %i.act, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  store float +qnan, ptr %i.act, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.av, %bb.au
  %.4.i.i.i.5 = phi i32 [ %.4.i.i.i.4, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.av ], [ %.4.i.i.i.4, %bb.au ] ; 3 uses
  %exitcond85.not.i.i.i.5 = icmp eq i64 %indvars.iv.i.i.i, 6
  br i1 %exitcond85.not.i.i.i.5, label %bb.j, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %bb.az
  %wide.masked.load631.6 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 64 %i.acl, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %wide.masked.load630.6 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.acp, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %i.agn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load631.6, %wide.masked.load630.6
  %i.ago = shufflevector <8 x float> %i.agn, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.agp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ago) ; 2 uses
  %i.agq = icmp eq i64 %.06583.i.i.i, 6
  br i1 %i.agq, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.6
  %i.agr = load float, ptr %i.acm, align 8, !tbaa !12, !alias.scope !518, !noalias !515 ; 2 uses
  %i.ags = fcmp reassoc nsz arcp contract afn oeq float %i.agr, 0.000000e+00
  br i1 %i.ags, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.agt = or disjoint i64 %i.acq, 6              ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.agt
  %i.agv = load float, ptr %i.agu, align 8, !tbaa !12, !alias.scope !519, !noalias !503
  %i.agw = fsub reassoc nsz arcp contract afn float %i.agv, %i.agp
  %i.agx = fdiv reassoc nsz arcp contract afn float %i.agw, %i.agr
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.agt
  store float %i.agx, ptr %i.agy, align 8, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  %i.agz = getelementptr inbounds nuw i8, ptr %i.acp, i64 24
  store float +qnan, ptr %i.agz, align 8, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.bg

bb.bd:                                            ; preds = %.lr.ph.i.i.i.6
  %i.aha = load float, ptr %i.acr, align 8, !tbaa !12, !alias.scope !519, !noalias !503
  %i.ahb = fsub reassoc nsz arcp contract afn float %i.aha, %i.agp ; 2 uses
  %i.ahc = fcmp reassoc nsz arcp contract afn olt float %i.ahb, 0.000000e+00
  br i1 %i.ahc, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ahd = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ahb)
  store float %i.ahd, ptr %i.act, align 8, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store float +qnan, ptr %i.act, align 8, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb
  %.4.i.i.i.6 = phi i32 [ %.4.i.i.i.5, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bc ], [ %.4.i.i.i.5, %bb.bb ] ; 3 uses
  %exitcond85.not.i.i.i.6 = icmp eq i64 %indvars.iv.i.i.i, 7
  br i1 %exitcond85.not.i.i.i.6, label %bb.j, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %bb.bg
  %wide.masked.load631.7 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 32 %i.acn, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %wide.masked.load630.7 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.acp, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false>, <8 x float> poison), !tbaa !12, !alias.scope !518, !noalias !515
  %i.ahe = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load631.7, %wide.masked.load630.7
  %i.ahf = insertelement <8 x float> %i.ahe, float 0.000000e+00, i64 7
  %i.ahg = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ahf) ; 2 uses
  %i.ahh = icmp eq i64 %.06583.i.i.i, 7
  br i1 %i.ahh, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i.7
  %i.ahi = load float, ptr %i.aco, align 4, !tbaa !12, !alias.scope !518, !noalias !515 ; 2 uses
  %i.ahj = fcmp reassoc nsz arcp contract afn oeq float %i.ahi, 0.000000e+00
  br i1 %i.ahj, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ahk = or disjoint i64 %i.acq, 7              ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.ahk
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !12, !alias.scope !519, !noalias !503
  %i.ahn = fsub reassoc nsz arcp contract afn float %i.ahm, %i.ahg
  %i.aho = fdiv reassoc nsz arcp contract afn float %i.ahn, %i.ahi
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.ahk
  store float %i.aho, ptr %i.ahp, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.j

bb.bj:                                            ; preds = %bb.bh
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.acp, i64 28
  store float +qnan, ptr %i.ahq, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.j

bb.bk:                                            ; preds = %.lr.ph.i.i.i.7
  %i.ahr = load float, ptr %i.acr, align 4, !tbaa !12, !alias.scope !519, !noalias !503
  %i.ahs = fsub reassoc nsz arcp contract afn float %i.ahr, %i.ahg ; 2 uses
  %i.aht = fcmp reassoc nsz arcp contract afn olt float %i.ahs, 0.000000e+00
  br i1 %i.aht, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ahu = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ahs)
  store float %i.ahu, ptr %i.act, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.j

bb.bm:                                            ; preds = %bb.bk
  store float +qnan, ptr %i.act, align 4, !tbaa !12, !alias.scope !518, !noalias !515
  br label %bb.j

_choleski_decompose.exit.i.i:                     ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.ahv = load float, ptr %i.abt, align 64, !tbaa !12, !alias.scope !520, !noalias !515 ; 2 uses
  %i.ahw = fcmp reassoc nsz arcp contract afn une float %i.ahv, 0.000000e+00 ; 2 uses
  %i.ahx = extractelement <8 x float> %i.abr, i64 0
  %i.ahy = fdiv reassoc nsz arcp contract afn float %i.ahx, %i.ahv
  %i.ahz = select i1 %i.ahw, float %i.ahy, float +qnan ; 9 uses
  store float %i.ahz, ptr %i.abs, align 64, !tbaa !12, !alias.scope !522, !noalias !515
  %i.aia = load float, ptr %i.zq, align 4, !tbaa !12, !alias.scope !523, !noalias !503
  %i.aib = getelementptr inbounds nuw i8, ptr %i.abt, i64 32 ; 2 uses
  %i.aic = load float, ptr %i.aib, align 32, !tbaa !12, !alias.scope !520, !noalias !515
  %i.aid = fmul reassoc nsz arcp contract afn float %i.aic, %i.ahz
  %i.aie = fsub reassoc nsz arcp contract afn float %i.aia, %i.aid
  %i.aif = getelementptr inbounds nuw i8, ptr %i.abt, i64 36 ; 2 uses
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !12, !alias.scope !520, !noalias !515 ; 2 uses
  %i.aih = fcmp reassoc nsz arcp contract afn une float %i.aig, 0.000000e+00 ; 2 uses
  %i.aii = fdiv reassoc nsz arcp contract afn float %i.aie, %i.aig
  %i.aij = select i1 %i.aih, float %i.aii, float +qnan ; 8 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  store float %i.aij, ptr %i.aik, align 4, !tbaa !12, !alias.scope !522, !noalias !515
  %i.ail = load float, ptr %i.zr, align 8, !tbaa !12, !alias.scope !523, !noalias !503
  %i.aim = getelementptr inbounds nuw i8, ptr %i.abt, i64 64 ; 2 uses
  %i.ain = load float, ptr %i.aim, align 64, !tbaa !12, !alias.scope !520, !noalias !515
  %i.aio = getelementptr inbounds nuw i8, ptr %i.abt, i64 68 ; 2 uses
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %.neg.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ain, %i.ahz
  %.neg39.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.aip, %i.aij
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg39.i.neg.i.neg, %.neg.i.neg.i.neg
  %i.aiq = fsub reassoc nsz arcp contract afn float %i.ail, %reass.add
  %i.air = getelementptr inbounds nuw i8, ptr %i.abt, i64 72 ; 2 uses
  %i.ais = load float, ptr %i.air, align 8, !tbaa !12, !alias.scope !520, !noalias !515 ; 2 uses
  %i.ait = fcmp reassoc nsz arcp contract afn une float %i.ais, 0.000000e+00 ; 2 uses
  %i.aiu = fdiv reassoc nsz arcp contract afn float %i.aiq, %i.ais
  %i.aiv = select i1 %i.ait, float %i.aiu, float +qnan ; 7 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store float %i.aiv, ptr %i.aiw, align 8, !tbaa !12, !alias.scope !522, !noalias !515
  %i.aix = load float, ptr %i.zs, align 4, !tbaa !12, !alias.scope !523, !noalias !503
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.abt, i64 96 ; 2 uses
  %i.aiz = load float, ptr %i.aiy, align 32, !tbaa !12, !alias.scope !520, !noalias !515
  %i.aja = getelementptr inbounds nuw i8, ptr %i.abt, i64 100 ; 2 uses
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.abt, i64 104 ; 2 uses
  %i.ajd = load float, ptr %i.ajc, align 8, !tbaa !12, !alias.scope !520, !noalias !515
  %.neg41.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.aiz, %i.ahz
  %.neg42.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ajb, %i.aij
  %.neg44.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ajd, %i.aiv
  %reass.add54 = fadd reassoc nsz arcp contract afn float %.neg42.i.neg.i.neg, %.neg41.i.neg.i.neg
  %reass.add55 = fadd reassoc nsz arcp contract afn float %reass.add54, %.neg44.i.neg.i.neg
  %i.aje = fsub reassoc nsz arcp contract afn float %i.aix, %reass.add55
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.abt, i64 108 ; 2 uses
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !12, !alias.scope !520, !noalias !515 ; 2 uses
  %i.ajh = fcmp reassoc nsz arcp contract afn une float %i.ajg, 0.000000e+00 ; 2 uses
  %i.aji = fdiv reassoc nsz arcp contract afn float %i.aje, %i.ajg
  %i.ajj = select i1 %i.ajh, float %i.aji, float +qnan ; 6 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.abs, i64 12
  store float %i.ajj, ptr %i.ajk, align 4, !tbaa !12, !alias.scope !522, !noalias !515
  %i.ajl = load float, ptr %i.zt, align 16, !tbaa !12, !alias.scope !523, !noalias !503
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.abt, i64 128 ; 2 uses
  %i.ajn = load float, ptr %i.ajm, align 64, !tbaa !12, !alias.scope !520, !noalias !515
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.abt, i64 132 ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.abt, i64 136 ; 2 uses
  %i.ajr = load float, ptr %i.ajq, align 8, !tbaa !12, !alias.scope !520, !noalias !515
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.abt, i64 140 ; 2 uses
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %.neg46.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ajn, %i.ahz
  %.neg47.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ajp, %i.aij
  %.neg49.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ajr, %i.aiv
  %.neg51.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ajt, %i.ajj
  %reass.add57 = fadd reassoc nsz arcp contract afn float %.neg47.i.neg.i.neg, %.neg46.i.neg.i.neg
  %reass.add58 = fadd reassoc nsz arcp contract afn float %reass.add57, %.neg49.i.neg.i.neg
  %reass.add59 = fadd reassoc nsz arcp contract afn float %reass.add58, %.neg51.i.neg.i.neg
  %i.aju = fsub reassoc nsz arcp contract afn float %i.ajl, %reass.add59
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.abt, i64 144 ; 2 uses
  %i.ajw = load float, ptr %i.ajv, align 16, !tbaa !12, !alias.scope !520, !noalias !515 ; 2 uses
  %i.ajx = fcmp reassoc nsz arcp contract afn une float %i.ajw, 0.000000e+00 ; 2 uses
  %i.ajy = fdiv reassoc nsz arcp contract afn float %i.aju, %i.ajw
  %i.ajz = select i1 %i.ajx, float %i.ajy, float +qnan ; 5 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  store float %i.ajz, ptr %i.aka, align 16, !tbaa !12, !alias.scope !522, !noalias !515
  %i.akb = getelementptr inbounds nuw i8, ptr %i.abt, i64 160 ; 2 uses
  %i.akc = load float, ptr %i.akb, align 32, !tbaa !12, !alias.scope !520, !noalias !515
  %i.akd = getelementptr inbounds nuw i8, ptr %i.abt, i64 164 ; 2 uses
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %i.akf = getelementptr inbounds nuw i8, ptr %i.abt, i64 168 ; 2 uses
  %i.akg = load float, ptr %i.akf, align 8, !tbaa !12, !alias.scope !520, !noalias !515
  %i.akh = getelementptr inbounds nuw i8, ptr %i.abt, i64 172 ; 2 uses
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %i.akj = getelementptr inbounds nuw i8, ptr %i.abt, i64 176 ; 2 uses
  %i.akk = load float, ptr %i.akj, align 16, !tbaa !12, !alias.scope !520, !noalias !515
  %.neg53.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.akc, %i.ahz
  %.neg54.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ake, %i.aij
  %.neg56.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.akg, %i.aiv
  %.neg58.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.aki, %i.ajj
  %.neg60.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.akk, %i.ajz
  %reass.add61 = fadd reassoc nsz arcp contract afn float %.neg54.i.neg.i.neg, %.neg53.i.neg.i.neg
  %reass.add62 = fadd reassoc nsz arcp contract afn float %reass.add61, %.neg56.i.neg.i.neg
  %reass.add63 = fadd reassoc nsz arcp contract afn float %reass.add62, %.neg58.i.neg.i.neg
  %reass.add64 = fadd reassoc nsz arcp contract afn float %reass.add63, %.neg60.i.neg.i.neg
  %i.akl = extractelement <8 x float> %i.abr, i64 5
  %i.akm = fsub reassoc nsz arcp contract afn float %i.akl, %reass.add64
  %i.akn = getelementptr inbounds nuw i8, ptr %i.abt, i64 180 ; 2 uses
  %i.ako = load float, ptr %i.akn, align 4, !tbaa !12, !alias.scope !520, !noalias !515 ; 2 uses
  %i.akp = fcmp reassoc nsz arcp contract afn une float %i.ako, 0.000000e+00 ; 2 uses
  %i.akq = fdiv reassoc nsz arcp contract afn float %i.akm, %i.ako
  %i.akr = select i1 %i.akp, float %i.akq, float +qnan ; 4 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.abs, i64 20
  store float %i.akr, ptr %i.aks, align 4, !tbaa !12, !alias.scope !522, !noalias !515
  %i.akt = load float, ptr %i.zv, align 8, !tbaa !12, !alias.scope !523, !noalias !503
  %i.aku = getelementptr inbounds nuw i8, ptr %i.abt, i64 192 ; 2 uses
  %i.akv = load float, ptr %i.aku, align 64, !tbaa !12, !alias.scope !520, !noalias !515
  %i.akw = getelementptr inbounds nuw i8, ptr %i.abt, i64 196 ; 2 uses
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %i.aky = getelementptr inbounds nuw i8, ptr %i.abt, i64 200 ; 2 uses
  %i.akz = load float, ptr %i.aky, align 8, !tbaa !12, !alias.scope !520, !noalias !515
  %i.ala = getelementptr inbounds nuw i8, ptr %i.abt, i64 204 ; 2 uses
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %i.alc = getelementptr inbounds nuw i8, ptr %i.abt, i64 208 ; 2 uses
  %i.ald = load float, ptr %i.alc, align 16, !tbaa !12, !alias.scope !520, !noalias !515
  %i.ale = getelementptr inbounds nuw i8, ptr %i.abt, i64 212 ; 2 uses
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !12, !alias.scope !520, !noalias !515
  %.neg62.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.akv, %i.ahz
  %.neg63.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.akx, %i.aij
  %.neg65.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.akz, %i.aiv
  %.neg67.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.alb, %i.ajj
  %.neg69.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.ald, %i.ajz
  %.neg71.i.neg.i.neg = fmul reassoc nsz arcp contract afn float %i.alf, %i.akr
  %reass.add66 = fadd reassoc nsz arcp contract afn float %.neg63.i.neg.i.neg, %.neg62.i.neg.i.neg
  %reass.add67 = fadd reassoc nsz arcp contract afn float %reass.add66, %.neg65.i.neg.i.neg
  %reass.add68 = fadd reassoc nsz arcp contract afn float %reass.add67, %.neg67.i.neg.i.neg
  %reass.add69 = fadd reassoc nsz arcp contract afn float %reass.add68, %.neg69.i.neg.i.neg
  %reass.add70 = fadd reassoc nsz arcp contract afn float %reass.add69, %.neg71.i.neg.i.neg
  %i.alg = fsub reassoc nsz arcp contract afn float %i.akt, %reass.add70
  %i.alh = getelementptr inbounds nuw i8, ptr %i.abt, i64 216 ; 2 uses
  %i.ali = load float, ptr %i.alh, align 8, !tbaa !12, !alias.scope !520, !noalias !515 ; 2 uses
  %i.alj = fcmp reassoc nsz arcp contract afn une float %i.ali, 0.000000e+00 ; 2 uses
  %i.alk = fdiv reassoc nsz arcp contract afn float %i.alg, %i.ali
  %i.all = select i1 %i.alj, float %i.alk, float +qnan ; 3 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.abs, i64 24
  store float %i.all, ptr %i.alm, align 8, !tbaa !12, !alias.scope !522, !noalias !515
  %i.aln = getelementptr inbounds nuw i8, ptr %i.abt, i64 252 ; 2 uses
  %i.alo = load float, ptr %i.aln, align 4, !tbaa !12, !alias.scope !520, !noalias !515 ; 2 uses
  %i.alp = fcmp reassoc nsz arcp contract afn une float %i.alo, 0.000000e+00
  br i1 %i.alp, label %bb.bn, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_choleski_decompose.exit.i.i
  %i.alq = getelementptr inbounds nuw i8, ptr %i.abs, i64 28
end_hunk_0
