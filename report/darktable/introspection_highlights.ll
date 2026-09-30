Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@process:bb.a
  br i1 %.not84.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.aaw = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aaw) #33, !noalias !423
  %i.aax = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aax) #33, !noalias !423
  %i.aay = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !424, !noalias !423
  %i.aba = sext i32 %i.aaz to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.aba, ptr noundef nonnull %4, ptr noundef %5) #33
  br label %bb.fo

bb.es:                                            ; preds = %bb.eq
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.abc = load float, ptr %i.abb, align 8, !tbaa !76, !noalias !423
  %i.abd = fmul reassoc nsz arcp contract afn float %i.abc, 4.000000e+00
  %i.abe = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !38, !noalias !423
  %i.abg = fdiv reassoc nsz arcp contract afn float %i.abd, %i.abf
  %i.abh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abg, float 1.000000e+00) ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.zu, i64 28
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !77, !noalias !423
  %i.abk = shl nuw i32 1, %i.abj
  %i.abl = sitofp reassoc nsz arcp contract afn i32 %i.abk to float
  %i.abm = fdiv reassoc nsz arcp contract afn float %i.abl, %i.abh
  %i.abn = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.abm)
  %i.abo = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.abn)
  %i.abp = fptosi float %i.abo to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.abp, i32 1)
  %i.abq = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 12) ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.zu, i64 20
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !140, !noalias !423
  %i.abt = fdiv reassoc nsz arcp contract afn float %i.abs, %i.abh ; 2 uses
  %i.abu = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423 ; 2 uses
  %i.abv = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %.not243.i.i = icmp eq i32 %i.aai, 0
  br i1 %.not243.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.es
  %.not244.i.i = icmp eq i32 %i.aah, 0
  %i.abw = add nsw i64 %i.aaj, -1
  %i.abx = add nsw i64 %i.aak, -1                 ; 4 uses
  br i1 %.not244.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.aby = shl nsw i64 %i.aak, 4
  %min.iters.check = icmp ult i32 %i.aah, 8
  %mul.result = shl nsw i64 %i.abx, 4
  %mul.overflow = icmp ugt i64 %i.abx, 1152921504606846975
  %n.vec = and i64 %i.aak, 2305843009213693944    ; 3 uses
  %broadcast.splatinsert521 = insertelement <8 x i32> poison, i32 %i.zv, i64 0
  %broadcast.splat522 = shufflevector <8 x i32> %broadcast.splatinsert521, <8 x i32> poison, <8 x i32> zeroinitializer ; 9 uses
  %broadcast.splatinsert523 = insertelement <8 x i64> poison, i64 %i.abx, i64 0
  %broadcast.splat524 = shufflevector <8 x i64> %broadcast.splatinsert523, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splat526 = shufflevector <4 x float> %i.zt, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat528 = shufflevector <4 x float> %i.zt, <4 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %broadcast.splatinsert529 = insertelement <8 x float> poison, float %i.zn, i64 0
  %broadcast.splat530 = shufflevector <8 x float> %broadcast.splatinsert529, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %broadcast.splatinsert531 = insertelement <8 x float> poison, float %i.aad, i64 0
  %broadcast.splat532 = shufflevector <8 x float> %broadcast.splatinsert531, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat534 = shufflevector <2 x float> %i.aae, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat536 = shufflevector <2 x float> %i.aae, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.abz = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat532
  %i.aca = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat534
  %i.acb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat536
  %cmp.n = icmp eq i64 %n.vec, %i.aak
  %i.acc = shufflevector <4 x float> %i.zt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.acd = extractelement <4 x float> %i.zt, i64 0
  %i.ace = extractelement <4 x float> %i.zt, i64 1
  %i.acf = extractelement <4 x float> %i.zt, i64 0 ; 3 uses
  %i.acg = extractelement <4 x float> %i.zt, i64 0
  %i.ach = extractelement <4 x float> %i.zt, i64 0
  %i.aci = extractelement <4 x float> %i.zt, i64 0
  %i.acj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aad, i64 0
  %i.ack = shufflevector <2 x float> %i.aae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acl = shufflevector <4 x float> %i.acj, <4 x float> %i.ack, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.acm = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.acl
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.0241.i.i = phi i64 [ %i.acv, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ] ; 7 uses
  %i.acn = mul i64 %i.aby, %.0241.i.i
  %i.aco = shl i64 %.0241.i.i, 1
  %i.acp = and i64 %i.aco, 14                     ; 6 uses
  %i.acq = mul i64 %.0241.i.i, %i.aak             ; 3 uses
  %i.acr = icmp eq i64 %.0241.i.i, 0              ; 2 uses
  %i.acs = icmp eq i64 %.0241.i.i, %i.abw         ; 2 uses
  %i.act = add i64 %.0241.i.i, -1                 ; 2 uses
  %i.acu = mul i64 %i.act, %i.aak
  %i.acv = add nuw i64 %.0241.i.i, 1              ; 4 uses
  %i.acw = mul i64 %i.acv, %i.aak
  %i.acx = getelementptr [4 x i8], ptr %2, i64 %i.acu ; 6 uses
  %i.acy = getelementptr [4 x i8], ptr %2, i64 %i.acw ; 6 uses
  %i.acz = getelementptr [4 x i8], ptr %2, i64 %i.acq ; 4 uses
  %i.ada = shl i64 %i.act, 1
  %i.adb = and i64 %i.ada, 14                     ; 3 uses
  %i.adc = shl i64 %i.acv, 1
  %i.add = and i64 %i.adc, 14                     ; 3 uses
  %i.ade = getelementptr i8, ptr %i.abv, i64 %i.acn ; 4 uses
  %i.adf = getelementptr i8, ptr %i.ade, i64 %mul.result
  %i.adg = icmp ult ptr %i.adf, %i.ade
  %i.adh = or i1 %i.adg, %mul.overflow
  %or.cond610 = select i1 %min.iters.check, i1 true, i1 %i.adh
  br i1 %or.cond610, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.acp, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert513 = insertelement <8 x i1> poison, i1 %i.acr, i64 0
  %broadcast.splat514 = shufflevector <8 x i1> %broadcast.splatinsert513, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert515 = insertelement <8 x i1> poison, i1 %i.acs, i64 0
  %broadcast.splat516 = shufflevector <8 x i1> %broadcast.splatinsert515, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert517 = insertelement <8 x i64> poison, i64 %i.adb, i64 0
  %broadcast.splat518 = shufflevector <8 x i64> %broadcast.splatinsert517, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <8 x i64> poison, i64 %i.add, i64 0
  %broadcast.splat520 = shufflevector <8 x i64> %broadcast.splatinsert519, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %i.adi = shl i64 %index, 4
  %i.adj = getelementptr i8, ptr %i.ade, i64 %i.adi
  %i.adk = and <8 x i64> %vec.ind, splat (i64 1)  ; 3 uses
  %i.adl = or disjoint <8 x i64> %i.adk, %broadcast.splat
  %i.adm = trunc nuw nsw <8 x i64> %i.adl to <8 x i32>
  %i.adn = shl nuw nsw <8 x i32> %i.adm, splat (i32 1)
  %i.ado = lshr <8 x i32> %broadcast.splat522, %i.adn
  %i.adp = and <8 x i32> %i.ado, splat (i32 3)    ; 4 uses
  %i.adq = add i64 %index, %i.acq                 ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adq
  %wide.load = load <8 x float>, ptr %i.adr, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 7 uses
  %i.ads = icmp eq <8 x i64> %vec.ind, zeroinitializer
  %i.adt = or <8 x i1> %broadcast.splat514, %i.ads
  %i.adu = select <8 x i1> %i.adt, <8 x i1> splat (i1 true), <8 x i1> %broadcast.splat516
  %i.adv = icmp eq <8 x i64> %vec.ind, %broadcast.splat524
  %i.adw = select <8 x i1> %i.adu, <8 x i1> splat (i1 true), <8 x i1> %i.adv ; 11 uses
  %i.adx = xor <8 x i1> %i.adw, splat (i1 true)   ; 9 uses
  %i.ady = add <8 x i64> %vec.ind, splat (i64 -1) ; 2 uses
  %i.adz = extractelement <8 x i64> %i.ady, i64 0 ; 3 uses
  %i.aea = add <8 x i64> %vec.ind, splat (i64 1)  ; 2 uses
  %i.aeb = extractelement <8 x i64> %i.aea, i64 0 ; 3 uses
  %i.aec = getelementptr [4 x i8], ptr %i.acx, i64 %index
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aec, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.aed = getelementptr [4 x i8], ptr %i.acy, i64 %index
  %wide.masked.load537 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aed, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.aee = getelementptr [4 x i8], ptr %i.acz, i64 %i.adz
  %wide.masked.load538 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aee, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 5 uses
  %i.aef = getelementptr [4 x i8], ptr %i.acz, i64 %i.aeb
  %wide.masked.load539 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aef, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 5 uses
  %i.aeg = getelementptr [4 x i8], ptr %i.acx, i64 %i.aeb
  %wide.masked.load540 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeg, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aeh = getelementptr [4 x i8], ptr %i.acx, i64 %i.adz
  %wide.masked.load541 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeh, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aei = getelementptr [4 x i8], ptr %i.acy, i64 %i.aeb
  %wide.masked.load542 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aei, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aej = getelementptr [4 x i8], ptr %i.acy, i64 %i.adz
  %wide.masked.load543 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aej, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aek = icmp eq <8 x i32> %i.adp, splat (i32 1) ; 2 uses
  %i.ael = select <8 x i1> %i.adw, <8 x i1> splat (i1 true), <8 x i1> %i.aek ; 2 uses
  %i.aem = xor <8 x i1> %i.ael, splat (i1 true)
  %i.aen = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load537, %wide.masked.load ; 2 uses
  %i.aeo = fadd reassoc nsz arcp contract afn <8 x float> %i.aen, %wide.masked.load538
  %i.aep = fadd reassoc nsz arcp contract afn <8 x float> %i.aeo, %wide.masked.load539
  %i.aeq = fmul reassoc nsz arcp contract afn <8 x float> %i.aep, splat (float 2.500000e-01)
  %i.aer = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat526
  %i.aes = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load537, %broadcast.splat526
  %i.aet = select <8 x i1> %i.aer, <8 x i1> splat (i1 true), <8 x i1> %i.aes
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat526
  %i.aev = select <8 x i1> %i.aet, <8 x i1> splat (i1 true), <8 x i1> %i.aeu
  %i.aew = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat526
  %i.aex = select <8 x i1> %i.aev, <8 x i1> splat (i1 true), <8 x i1> %i.aew
  %i.aey = icmp eq <8 x i32> %i.adp, zeroinitializer ; 2 uses
  %i.aez = select <8 x i1> %i.aem, <8 x i1> %i.aey, <8 x i1> zeroinitializer ; 5 uses
  %i.afa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat528
  %i.afb = or disjoint <8 x i64> %i.adk, %broadcast.splat518
  %i.afc = trunc nuw nsw <8 x i64> %i.afb to <8 x i32>
  %i.afd = shl nuw nsw <8 x i32> %i.afc, splat (i32 1) ; 2 uses
  %i.afe = select <8 x i1> %i.adx, <8 x i1> %i.aek, <8 x i1> zeroinitializer ; 3 uses
  %i.aff = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat526
  %i.afg = select <8 x i1> %i.ael, <8 x i1> splat (i1 true), <8 x i1> %i.aey
  %i.afh = xor <8 x i1> %i.afg, splat (i1 true)
  %i.afi = or <8 x i1> %i.afe, %i.afh             ; 4 uses
  %i.afj = shl nuw <8 x i32> splat (i32 3), %i.afd
  %i.afk = and <8 x i32> %i.afj, %broadcast.splat522
  %i.afl = icmp eq <8 x i32> %i.afk, zeroinitializer ; 2 uses
  %i.afm = select <8 x i1> %i.afi, <8 x i1> %i.afl, <8 x i1> zeroinitializer ; 2 uses
  %i.afn = or disjoint <8 x i64> %i.adk, %broadcast.splat520
  %i.afo = trunc nuw nsw <8 x i64> %i.afn to <8 x i32>
  %i.afp = shl nuw nsw <8 x i32> %i.afo, splat (i32 1) ; 2 uses
  %i.afq = shl nuw <8 x i32> splat (i32 3), %i.afp
  %i.afr = and <8 x i32> %i.afq, %broadcast.splat522
  %i.afs = icmp eq <8 x i32> %i.afr, zeroinitializer ; 2 uses
  %i.aft = xor <8 x i1> %i.afs, splat (i1 true)
  %i.afu = select <8 x i1> %i.afm, <8 x i1> %i.aft, <8 x i1> zeroinitializer
  %i.afv = xor <8 x i1> %i.afl, splat (i1 true)
  %7 = or <8 x i1> %i.afu, %i.afv
  %8 = select <8 x i1> %i.afi, <8 x i1> %7, <8 x i1> zeroinitializer
  %i.afw = and <8 x i64> %i.ady, splat (i64 1)
  %i.afx = or disjoint <8 x i64> %i.afw, %broadcast.splat
  %i.afy = trunc nuw nsw <8 x i64> %i.afx to <8 x i32>
  %i.afz = shl nuw nsw <8 x i32> %i.afy, splat (i32 1) ; 2 uses
  %i.aga = shl nuw <8 x i32> splat (i32 3), %i.afz
  %i.agb = and <8 x i32> %i.aga, %broadcast.splat522
  %i.agc = icmp eq <8 x i32> %i.agb, zeroinitializer
  %i.agd = select <8 x i1> %8, <8 x i1> %i.agc, <8 x i1> zeroinitializer
  %i.age = and <8 x i64> %i.aea, splat (i64 1)
  %i.agf = or disjoint <8 x i64> %i.age, %broadcast.splat
  %i.agg = trunc nuw nsw <8 x i64> %i.agf to <8 x i32>
  %i.agh = shl nuw nsw <8 x i32> %i.agg, splat (i32 1) ; 2 uses
  %i.agi = shl nuw <8 x i32> splat (i32 3), %i.agh
  %i.agj = and <8 x i32> %i.agi, %broadcast.splat522
  %i.agk = icmp eq <8 x i32> %i.agj, zeroinitializer
  %i.agl = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load541, %wide.masked.load540
  %i.agm = fadd reassoc nsz arcp contract afn <8 x float> %i.agl, %wide.masked.load542
  %i.agn = fadd reassoc nsz arcp contract afn <8 x float> %i.agm, %wide.masked.load543
  %i.ago = fmul reassoc nsz arcp contract afn <8 x float> %i.agn, splat (float 2.500000e-01) ; 2 uses
  %i.agp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat528
  %i.agq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat528
  %i.agr = select <8 x i1> %i.agp, <8 x i1> splat (i1 true), <8 x i1> %i.agq
  %i.ags = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat528
  %i.agt = select <8 x i1> %i.agr, <8 x i1> splat (i1 true), <8 x i1> %i.ags
  %i.agu = select <8 x i1> %i.agd, <8 x i1> %i.agk, <8 x i1> zeroinitializer ; 3 uses
  %i.agv = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load539, %wide.masked.load538
  %i.agw = fmul reassoc nsz arcp contract afn <8 x float> %i.agv, splat (float 5.000000e-01) ; 2 uses
  %i.agx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat528
  %i.agy = select <8 x i1> %i.afm, <8 x i1> %i.afs, <8 x i1> zeroinitializer ; 3 uses
  %i.agz = fmul reassoc nsz arcp contract afn <8 x float> %i.aen, splat (float 5.000000e-01) ; 2 uses
  %i.aha = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat528
  %predphi545 = select <8 x i1> %i.agu, <8 x float> %wide.masked.load539, <8 x float> %wide.masked.load542
  %predphi546 = select <8 x i1> %i.agy, <8 x float> %wide.masked.load537, <8 x float> %predphi545
  %predphi547 = select <8 x i1> %i.agu, <8 x i1> %i.agx, <8 x i1> %i.agt
  %predphi548 = select <8 x i1> %i.agy, <8 x i1> %i.aha, <8 x i1> %predphi547
  %predphi549 = select nsz <8 x i1> %i.agu, <8 x float> %i.agw, <8 x float> %i.ago
  %predphi550 = select nsz <8 x i1> %i.agy, <8 x float> %i.agz, <8 x float> %predphi549
  %i.ahb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi546, %broadcast.splat528
  %i.ahc = select <8 x i1> %predphi548, <8 x i1> splat (i1 true), <8 x i1> %i.ahb
  %i.ahd = icmp eq <8 x i32> %i.adp, splat (i32 2) ; 2 uses
  %i.ahe = xor <8 x i1> %i.ahd, splat (i1 true)
  %i.ahf = select <8 x i1> %i.afi, <8 x i1> %i.ahe, <8 x i1> %i.aez ; 2 uses
  %i.ahg = xor <8 x i1> %i.afe, splat (i1 true)
  %i.ahh = lshr <8 x i32> %broadcast.splat522, %i.afd
  %i.ahi = and <8 x i32> %i.ahh, splat (i32 3)
  %i.ahj = icmp eq <8 x i32> %i.ahi, splat (i32 2) ; 2 uses
  %i.ahk = select <8 x i1> %i.ahf, <8 x i1> %i.ahj, <8 x i1> zeroinitializer ; 2 uses
  %i.ahl = lshr <8 x i32> %broadcast.splat522, %i.afp
  %i.ahm = and <8 x i32> %i.ahl, splat (i32 3)
  %i.ahn = icmp eq <8 x i32> %i.ahm, splat (i32 2) ; 2 uses
  %i.aho = xor <8 x i1> %i.ahn, splat (i1 true)
  %i.ahp = select <8 x i1> %i.ahk, <8 x i1> %i.aho, <8 x i1> zeroinitializer
  %i.ahq = xor <8 x i1> %i.ahj, splat (i1 true)
  %9 = or <8 x i1> %i.ahp, %i.ahq
  %10 = select <8 x i1> %i.ahf, <8 x i1> %9, <8 x i1> zeroinitializer ; 2 uses
  %i.ahr = lshr <8 x i32> %broadcast.splat522, %i.afz
  %i.ahs = and <8 x i32> %i.ahr, splat (i32 3)
  %i.aht = icmp eq <8 x i32> %i.ahs, splat (i32 2) ; 2 uses
  %i.ahu = select <8 x i1> %10, <8 x i1> %i.aht, <8 x i1> zeroinitializer ; 2 uses
  %i.ahv = lshr <8 x i32> %broadcast.splat522, %i.agh
  %i.ahw = and <8 x i32> %i.ahv, splat (i32 3)
  %i.ahx = icmp eq <8 x i32> %i.ahw, splat (i32 2) ; 2 uses
  %i.ahy = xor <8 x i1> %i.aht, splat (i1 true)
  %i.ahz = xor <8 x i1> %i.ahx, splat (i1 true)
  %i.aia = select <8 x i1> %i.ahu, <8 x i1> %i.ahz, <8 x i1> zeroinitializer
  %i.aib = or <8 x i1> %i.aia, %i.ahy
  %11 = select <8 x i1> %10, <8 x i1> %i.aib, <8 x i1> zeroinitializer
  %i.aic = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat530
  %i.aid = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat530
  %i.aie = select <8 x i1> %i.aic, <8 x i1> splat (i1 true), <8 x i1> %i.aid
  %i.aif = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat530
  %i.aig = select <8 x i1> %i.aie, <8 x i1> splat (i1 true), <8 x i1> %i.aif
  %i.aih = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat530
  %i.aii = select <8 x i1> %i.aig, <8 x i1> splat (i1 true), <8 x i1> %i.aih
  %i.aij = select <8 x i1> %i.ahu, <8 x i1> %i.ahx, <8 x i1> zeroinitializer ; 2 uses
  %i.aik = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat530
  %i.ail = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat530
  %i.aim = select <8 x i1> %i.aik, <8 x i1> splat (i1 true), <8 x i1> %i.ail
  %i.ain = select <8 x i1> %i.ahk, <8 x i1> %i.ahn, <8 x i1> zeroinitializer ; 2 uses
  %i.aio = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat530
  %i.aip = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load537, %broadcast.splat530
  %i.aiq = select <8 x i1> %i.aio, <8 x i1> splat (i1 true), <8 x i1> %i.aip
  %i.air = select <8 x i1> %i.afi, <8 x i1> %i.ahd, <8 x i1> zeroinitializer ; 5 uses
  %i.ais = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat530
  %i.ait = zext nneg <8 x i32> %i.adp to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.k, <8 x i64> %i.ait
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !noalias !430
  %i.aiu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %wide.masked.gather ; 4 uses
  %i.aiv = zext <8 x i1> %i.aiu to <8 x i32>      ; 3 uses
  %not. = xor <8 x i1> %i.air, splat (i1 true)
  %i.aiw = select <8 x i1> %not., <8 x i1> %i.aez, <8 x i1> zeroinitializer
  %i.aix = select <8 x i1> %i.adw, <8 x i1> splat (i1 true), <8 x i1> %i.aiw
  %predphi556 = select nsz <8 x i1> %i.aix, <8 x float> %wide.load, <8 x float> %predphi550 ; 3 uses
  %i.aiy = select <8 x i1> %i.air, <8 x i1> splat (i1 true), <8 x i1> %i.aez
  %not.594 = xor <8 x i1> %i.aiy, splat (i1 true)
  %i.aiz = select <8 x i1> %not.594, <8 x i1> %i.afe, <8 x i1> zeroinitializer
  %i.aja = select <8 x i1> %i.adw, <8 x i1> splat (i1 true), <8 x i1> %i.aiz
  %predphi558 = select nsz <8 x i1> %i.aja, <8 x float> %wide.load, <8 x float> %i.aeq ; 3 uses
  %predphi559 = select nsz <8 x i1> %11, <8 x float> %i.ago, <8 x float> %wide.load
  %predphi560 = select nsz <8 x i1> %i.aij, <8 x float> %i.agw, <8 x float> %predphi559
  %predphi561 = select nsz <8 x i1> %i.ain, <8 x float> %i.agz, <8 x float> %predphi560 ; 3 uses
  %i.ajb = xor <8 x i1> %i.aez, splat (i1 true)
  %i.ajc = select <8 x i1> %i.air, <8 x i1> splat (i1 true), <8 x i1> %i.ajb
  %predphi562.v = select <8 x i1> %i.ajc, <8 x i1> %i.ahc, <8 x i1> %i.afa ; 2 uses
  %predphi562 = zext <8 x i1> %predphi562.v to <8 x i32>
  %predphi563 = select <8 x i1> %i.adw, <8 x i32> %i.aiv, <8 x i32> %predphi562
  %i.ajd = select <8 x i1> %i.air, <8 x i1> splat (i1 true), <8 x i1> %i.aez
  %i.aje = select <8 x i1> %i.ajd, <8 x i1> splat (i1 true), <8 x i1> %i.ahg
  %predphi564.v = select <8 x i1> %i.aje, <8 x i1> %i.aex, <8 x i1> %i.aff ; 2 uses
  %predphi564 = zext <8 x i1> %predphi564.v to <8 x i32>
  %predphi565 = select <8 x i1> %i.adw, <8 x i32> %i.aiv, <8 x i32> %predphi564
  %predphi566.v = select <8 x i1> %i.aij, <8 x i1> %i.aim, <8 x i1> %i.aii
  %predphi567.v = select <8 x i1> %i.ain, <8 x i1> %i.aiq, <8 x i1> %predphi566.v
  %predphi568.v = select <8 x i1> %i.air, <8 x i1> %i.ais, <8 x i1> %predphi567.v ; 2 uses
  %predphi568 = zext <8 x i1> %predphi568.v to <8 x i32>
  %predphi569 = select <8 x i1> %i.adw, <8 x i32> %i.aiv, <8 x i32> %predphi568
  %i.ajf = fmul reassoc nsz arcp contract afn <8 x float> %predphi556, %predphi556
  %i.ajg = fmul reassoc nsz arcp contract afn <8 x float> %predphi558, %predphi558
  %i.ajh = fadd reassoc nsz arcp contract afn <8 x float> %i.ajg, %i.ajf
  %i.aji = fmul reassoc nsz arcp contract afn <8 x float> %predphi561, %predphi561
  %i.ajj = fadd reassoc nsz arcp contract afn <8 x float> %i.ajh, %i.aji
  %i.ajk = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ajj)
  %i.ajl = uitofp nneg <8 x i32> %predphi569 to <8 x float>
  %i.ajm = select <8 x i1> %i.adw, <8 x i1> %i.aiu, <8 x i1> %predphi562.v
  %i.ajn = select <8 x i1> %i.adw, <8 x i1> %i.aiu, <8 x i1> %predphi564.v
  %i.ajo = select <8 x i1> %i.ajm, <8 x i1> splat (i1 true), <8 x i1> %i.ajn
  %i.ajp = select <8 x i1> %i.adw, <8 x i1> %i.aiu, <8 x i1> %predphi568.v
  %i.ajq = select <8 x i1> %i.ajo, <8 x i1> splat (i1 true), <8 x i1> %i.ajp
  %i.ajr = select <8 x i1> %i.ajq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajs = shufflevector <8 x i32> %predphi563, <8 x i32> %predphi565, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajt = uitofp nneg <16 x i32> %i.ajs to <16 x float>
  %i.aju = shufflevector <8 x float> %i.ajl, <8 x float> %i.ajr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ajt, <16 x float> %i.aju, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.adj, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %i.ajv = fmul reassoc nsz arcp contract afn <8 x float> %predphi556, %i.abz
  %i.ajw = shl i64 %i.adq, 4
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.ajw
  %i.ajy = fmul reassoc nsz arcp contract afn <8 x float> %predphi558, %i.aca
  %i.ajz = fmul reassoc nsz arcp contract afn <8 x float> %predphi561, %i.acb
  %i.aka = shufflevector <8 x float> %i.ajv, <8 x float> %i.ajy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akb = shufflevector <8 x float> %i.ajz, <8 x float> %i.ajk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akc = shufflevector <16 x float> %i.aka, <16 x float> %i.akb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec570 = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.akc, <32 x float> zeroinitializer)
  store <32 x float> %interleaved.vec570, ptr %i.ajx, align 4, !tbaa !12, !alias.scope !426, !noalias !432
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i64> %vec.ind, splat (i64 8)
  %i.akd = icmp eq i64 %index.next, %n.vec
  br i1 %i.akd, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.0190240.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %bb.fk, %middle.block
  %exitcond245.not.i.i = icmp eq i64 %i.acv, %i.aaj
  br i1 %exitcond245.not.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.fk
  %.0190240.i.i = phi i64 [ %.pre-phi.i.i, %bb.fk ], [ %.0190240.i.i.ph, %scalar.ph.preheader ] ; 10 uses
  %i.ake = shl i64 %.0190240.i.i, 4
  %scevgep.i.i = getelementptr i8, ptr %i.ade, i64 %i.ake ; 4 uses
  %i.akf = and i64 %.0190240.i.i, 1               ; 5 uses
  %i.akg = or disjoint i64 %i.akf, %i.acp
  %.tr.i.i.i = trunc nuw nsw i64 %i.akg to i32
  %i.akh = shl nuw nsw i32 %.tr.i.i.i, 1
  %i.aki = lshr i32 %i.zv, %i.akh
  %i.akj = and i32 %i.aki, 3                      ; 4 uses
  %i.akk = add i64 %.0190240.i.i, %i.acq          ; 2 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.akk
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 10 uses
  %i.akn = icmp eq i64 %.0190240.i.i, 0
  %or.cond.i.i = or i1 %i.acr, %i.akn
  %or.cond201.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.acs
  %i.ako = icmp eq i64 %.0190240.i.i, %i.abx
  %or.cond203.i.i = select i1 %or.cond201.i.i, i1 true, i1 %i.ako
  br i1 %or.cond203.i.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %scalar.ph
  %i.akp = zext nneg i32 %i.akj to i64
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.akp
  %i.akr = load float, ptr %i.akq, align 4, !tbaa !12, !noalias !430
  %i.aks = fcmp reassoc nsz arcp contract afn ogt float %i.akm, %i.akr
  %i.akt = zext i1 %i.aks to i32                  ; 3 uses
  %.pre254.i.i = add nuw i64 %.0190240.i.i, 1
  br label %bb.fk

bb.eu:                                            ; preds = %scalar.ph
  %i.aku = add i64 %.0190240.i.i, -1              ; 5 uses
  %i.akv = add nuw i64 %.0190240.i.i, 1           ; 9 uses
  %i.akw = getelementptr [4 x i8], ptr %i.acx, i64 %.0190240.i.i
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.aky = getelementptr [4 x i8], ptr %i.acy, i64 %.0190240.i.i
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.ala = getelementptr [4 x i8], ptr %i.acz, i64 %i.aku
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.alc = getelementptr [4 x i8], ptr %i.acz, i64 %i.akv
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.ale = getelementptr [4 x i8], ptr %i.acx, i64 %i.akv
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alg = getelementptr [4 x i8], ptr %i.acx, i64 %i.aku
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.ali = getelementptr [4 x i8], ptr %i.acy, i64 %i.akv
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alk = getelementptr [4 x i8], ptr %i.acy, i64 %i.aku
  %i.all = load float, ptr %i.alk, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alm = icmp eq i32 %i.akj, 1
  br i1 %i.alm, label %.thread.i.i, label %bb.ev

.thread.i.i:                                      ; preds = %bb.eu
  %i.aln = fcmp reassoc nsz arcp contract afn ogt float %i.akm, %i.ace
  %i.alo = zext i1 %i.aln to i32
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.alp = fadd reassoc nsz arcp contract afn float %i.akz, %i.akx
  %i.alq = fadd reassoc nsz arcp contract afn float %i.alp, %i.alb
  %i.alr = fadd reassoc nsz arcp contract afn float %i.alq, %i.ald
  %i.als = fmul reassoc nsz arcp contract afn float %i.alr, 2.500000e-01 ; 2 uses
  %i.alt = insertelement <4 x float> poison, float %i.akx, i64 0
  %i.alu = insertelement <4 x float> %i.alt, float %i.akz, i64 1
  %i.alv = insertelement <4 x float> %i.alu, float %i.ald, i64 2
  %i.alw = insertelement <4 x float> %i.alv, float %i.alb, i64 3
  %i.alx = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.alw, %i.acc
  %i.aly = freeze <4 x i1> %i.alx
  %i.alz = bitcast <4 x i1> %i.aly to i4
  %i.ama = icmp ne i4 %i.alz, 0
  %i.amb = zext i1 %i.ama to i32                  ; 2 uses
  %i.amc = icmp eq i32 %i.akj, 0
  br i1 %i.amc, label %.thread224.i.i, label %bb.ew

.thread224.i.i:                                   ; preds = %bb.ev
  %i.amd = fcmp reassoc nsz arcp contract afn ogt float %i.akm, %i.acd
  %i.ame = zext i1 %i.amd to i32
  %.pre255.i.i = or disjoint i64 %i.akf, %i.adb
  %.pre257.i.i = trunc nuw nsw i64 %.pre255.i.i to i32
  %.pre258.i.i = shl nuw nsw i32 %.pre257.i.i, 1
  br label %bb.fe

bb.ew:                                            ; preds = %bb.ev, %.thread.i.i
  %.0180223.i.i = phi i32 [ %i.alo, %.thread.i.i ], [ %i.amb, %bb.ev ] ; 2 uses
  %.0186221.i.i = phi float [ %i.akm, %.thread.i.i ], [ %i.als, %bb.ev ] ; 2 uses
  %i.amf = or disjoint i64 %i.akf, %i.adb
  %.tr.i210.i.i = trunc nuw nsw i64 %i.amf to i32
  %i.amg = shl nuw nsw i32 %.tr.i210.i.i, 1       ; 2 uses
  %i.amh = shl nuw i32 3, %i.amg
  %i.ami = and i32 %i.amh, %i.zv
  %i.amj = icmp eq i32 %i.ami, 0
  br i1 %i.amj, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.amk = or disjoint i64 %i.akf, %i.add
  %.tr.i211.i.i = trunc nuw nsw i64 %i.amk to i32
  %i.aml = shl nuw nsw i32 %.tr.i211.i.i, 1
  %i.amm = shl nuw i32 3, %i.aml
  %i.amn = and i32 %i.amm, %i.zv
  %i.amo = icmp eq i32 %i.amn, 0
  br i1 %i.amo, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.amp = fadd reassoc nsz arcp contract afn float %i.akz, %i.akx
  %i.amq = fmul reassoc nsz arcp contract afn float %i.amp, 5.000000e-01
  %i.amr = fcmp reassoc nsz arcp contract afn ogt float %i.akx, %i.ach
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %i.ams = and i64 %i.aku, 1
  %i.amt = or disjoint i64 %i.ams, %i.acp
  %.tr.i212.i.i = trunc nuw nsw i64 %i.amt to i32
  %i.amu = shl nuw nsw i32 %.tr.i212.i.i, 1
  %i.amv = shl nuw i32 3, %i.amu
  %i.amw = and i32 %i.amv, %i.zv
  %i.amx = icmp eq i32 %i.amw, 0
  br i1 %i.amx, label %bb.fa, label %._crit_edge249.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.amy = and i64 %i.akv, 1
  %i.amz = or disjoint i64 %i.amy, %i.acp
  %.tr.i213.i.i = trunc nuw nsw i64 %i.amz to i32
  %i.ana = shl nuw nsw i32 %.tr.i213.i.i, 1
  %i.anb = shl nuw i32 3, %i.ana
  %i.anc = and i32 %i.anb, %i.zv
  %i.and = icmp eq i32 %i.anc, 0
  br i1 %i.and, label %bb.fb, label %._crit_edge249.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.ane = fadd reassoc nsz arcp contract afn float %i.ald, %i.alb
  %i.anf = fmul reassoc nsz arcp contract afn float %i.ane, 5.000000e-01
  %i.ang = fcmp reassoc nsz arcp contract afn ogt float %i.alb, %i.acg
  br label %bb.fc

._crit_edge249.i.i:                               ; preds = %bb.ez, %bb.fa
  %i.anh = fadd reassoc nsz arcp contract afn float %i.alh, %i.alf
  %i.ani = fadd reassoc nsz arcp contract afn float %i.anh, %i.alj
  %i.anj = fadd reassoc nsz arcp contract afn float %i.ani, %i.all
  %i.ank = fmul reassoc nsz arcp contract afn float %i.anj, 2.500000e-01
  %i.anl = fcmp reassoc nsz arcp contract afn ogt float %i.alh, %i.acf
end_hunk_0
