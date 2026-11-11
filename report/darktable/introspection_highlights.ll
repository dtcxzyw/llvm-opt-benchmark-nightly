Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@process:bb.a
  %i.aag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aah = load <2 x i32>, ptr %i.aag, align 4, !tbaa !15, !noalias !423 ; 3 uses
  %i.aai = extractelement <2 x i32> %i.aah, i64 0 ; 8 uses
  %i.aaj = extractelement <2 x i32> %i.aah, i64 1 ; 4 uses
  %i.aak = sext i32 %i.aaj to i64                 ; 8 uses
  %i.aal = sext i32 %i.aai to i64                 ; 17 uses
  %i.aam = lshr i64 %i.aak, 2                     ; 5 uses
  %i.aan = lshr i64 %i.aal, 2                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33, !noalias !423
  %i.aao = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, i32 noundef 1048580, ptr noundef nonnull %i.b, i32 noundef 1048580, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null) #33, !noalias !423
  %.not.i355 = icmp eq i32 %i.aao, 0
  br i1 %.not.i355, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !424, !noalias !423
  %i.aar = sext i32 %i.aaq to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.aar, ptr noundef nonnull %4, ptr noundef %5) #33
  br label %process_laplacian_bayer.exit

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !423
  store i32 0, ptr %6, align 4, !tbaa !74, !noalias !423
  %i.aas = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.aas, align 4, !tbaa !75, !noalias !423
  %i.aat = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aau = ashr <2 x i32> %i.aah, splat (i32 2)
  store <2 x i32> %i.aau, ptr %i.aat, align 4, !tbaa !15, !noalias !423
  %i.aav = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float 0.000000e+00, ptr %i.aav, align 4, !tbaa !38, !noalias !423
  %i.aaw = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 1048580, ptr noundef nonnull %i.d, i32 noundef 1048580, ptr noundef nonnull %i.e, i32 noundef 1048580, ptr noundef nonnull %i.f, i32 noundef 1048580, ptr noundef nonnull %i.g, i32 noundef 1048580, ptr noundef nonnull %i.h, i32 noundef 1048580, ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef null) #33, !noalias !423
  %.not84.i = icmp eq i32 %i.aaw, 0
  br i1 %.not84.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.aax = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aax) #33, !noalias !423
  %i.aay = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aay) #33, !noalias !423
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !424, !noalias !423
  %i.abb = sext i32 %i.aba to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.abb, ptr noundef nonnull %4, ptr noundef %5) #33
  br label %bb.fo

bb.es:                                            ; preds = %bb.eq
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.abd = load float, ptr %i.abc, align 8, !tbaa !76, !noalias !423
  %i.abe = fmul reassoc nsz arcp contract afn float %i.abd, 4.000000e+00
  %i.abf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !38, !noalias !423
  %i.abh = fdiv reassoc nsz arcp contract afn float %i.abe, %i.abg
  %i.abi = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abh, float 1.000000e+00) ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.zv, i64 28
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !77, !noalias !423
  %i.abl = shl nuw i32 1, %i.abk
  %i.abm = sitofp reassoc nsz arcp contract afn i32 %i.abl to float
  %i.abn = fdiv reassoc nsz arcp contract afn float %i.abm, %i.abi
  %i.abo = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.abn)
  %i.abp = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.abo)
  %i.abq = fptosi float %i.abp to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.abq, i32 1)
  %i.abr = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 12) ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.zv, i64 20
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !140, !noalias !423
  %i.abu = fdiv reassoc nsz arcp contract afn float %i.abt, %i.abi ; 2 uses
  %i.abv = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423 ; 2 uses
  %i.abw = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %.not243.i.i = icmp ne i32 %i.aaj, 0            ; 2 uses
  br i1 %.not243.i.i, label %.preheader.lr.ph.i.i, label %_interpolate_and_mask.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.es
  %.not244.i.i = icmp eq i32 %i.aai, 0
  %i.abx = add nsw i64 %i.aak, -1
  %i.aby = add nsw i64 %i.aal, -1                 ; 4 uses
  br i1 %.not244.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.abz = shl nsw i64 %i.aal, 4
  %min.iters.check = icmp ult i32 %i.aai, 8
  %mul.result = shl nsw i64 %i.aby, 4
  %mul.overflow = icmp ugt i64 %i.aby, 1152921504606846975
  %n.vec = and i64 %i.aal, 2305843009213693944    ; 3 uses
  %broadcast.splatinsert522 = insertelement <8 x i32> poison, i32 %i.zw, i64 0
  %broadcast.splat523 = shufflevector <8 x i32> %broadcast.splatinsert522, <8 x i32> poison, <8 x i32> zeroinitializer ; 9 uses
  %broadcast.splatinsert524 = insertelement <8 x i64> poison, i64 %i.aby, i64 0
  %broadcast.splat525 = shufflevector <8 x i64> %broadcast.splatinsert524, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert526 = insertelement <8 x float> poison, float %i.zp, i64 0
  %broadcast.splat527 = shufflevector <8 x float> %broadcast.splatinsert526, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert528 = insertelement <8 x float> poison, float %i.zl, i64 0
  %broadcast.splat529 = shufflevector <8 x float> %broadcast.splatinsert528, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %broadcast.splatinsert530 = insertelement <8 x float> poison, float %i.zt, i64 0
  %broadcast.splat531 = shufflevector <8 x float> %broadcast.splatinsert530, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %broadcast.splatinsert532 = insertelement <8 x float> poison, float %i.aae, i64 0
  %broadcast.splat533 = shufflevector <8 x float> %broadcast.splatinsert532, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat535 = shufflevector <2 x float> %i.aaf, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat537 = shufflevector <2 x float> %i.aaf, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aca = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat533
  %i.acb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat535
  %i.acc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat537
  %cmp.n = icmp eq i64 %n.vec, %i.aal
  %i.acd = insertelement <4 x float> poison, float %i.zp, i64 0
  %i.ace = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acf = insertelement <4 x float> poison, float %i.zt, i64 0
  %i.acg = shufflevector <4 x float> %i.acf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ach = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aae, i64 0
  %i.aci = shufflevector <2 x float> %i.aaf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acj = shufflevector <4 x float> %i.ach, <4 x float> %i.aci, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ack = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.acj
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.0241.i.i = phi i64 [ %i.act, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ] ; 7 uses
  %i.acl = mul i64 %i.abz, %.0241.i.i
  %i.acm = shl i64 %.0241.i.i, 1
  %i.acn = and i64 %i.acm, 14                     ; 6 uses
  %i.aco = mul i64 %.0241.i.i, %i.aal             ; 3 uses
  %i.acp = icmp eq i64 %.0241.i.i, 0              ; 2 uses
  %i.acq = icmp eq i64 %.0241.i.i, %i.abx         ; 2 uses
  %i.acr = add i64 %.0241.i.i, -1                 ; 2 uses
  %i.acs = mul i64 %i.acr, %i.aal
  %i.act = add nuw i64 %.0241.i.i, 1              ; 4 uses
  %i.acu = mul i64 %i.act, %i.aal
  %i.acv = getelementptr [4 x i8], ptr %2, i64 %i.acs ; 6 uses
  %i.acw = getelementptr [4 x i8], ptr %2, i64 %i.acu ; 6 uses
  %i.acx = getelementptr [4 x i8], ptr %2, i64 %i.aco ; 4 uses
  %i.acy = shl i64 %i.acr, 1
  %i.acz = and i64 %i.acy, 14                     ; 3 uses
  %i.ada = shl i64 %i.act, 1
  %i.adb = and i64 %i.ada, 14                     ; 3 uses
  %i.adc = getelementptr i8, ptr %i.abw, i64 %i.acl ; 4 uses
  %i.add = getelementptr i8, ptr %i.adc, i64 %mul.result
  %i.ade = icmp ult ptr %i.add, %i.adc
  %i.adf = or i1 %i.ade, %mul.overflow
  %or.cond611 = select i1 %min.iters.check, i1 true, i1 %i.adf
  br i1 %or.cond611, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.acn, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert514 = insertelement <8 x i1> poison, i1 %i.acp, i64 0
  %broadcast.splat515 = shufflevector <8 x i1> %broadcast.splatinsert514, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert516 = insertelement <8 x i1> poison, i1 %i.acq, i64 0
  %broadcast.splat517 = shufflevector <8 x i1> %broadcast.splatinsert516, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert518 = insertelement <8 x i64> poison, i64 %i.acz, i64 0
  %broadcast.splat519 = shufflevector <8 x i64> %broadcast.splatinsert518, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert520 = insertelement <8 x i64> poison, i64 %i.adb, i64 0
  %broadcast.splat521 = shufflevector <8 x i64> %broadcast.splatinsert520, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %i.adg = shl i64 %index, 4
  %i.adh = getelementptr i8, ptr %i.adc, i64 %i.adg
  %i.adi = and <8 x i64> %vec.ind, splat (i64 1)  ; 3 uses
  %i.adj = or disjoint <8 x i64> %i.adi, %broadcast.splat
  %i.adk = trunc nuw nsw <8 x i64> %i.adj to <8 x i32>
  %i.adl = shl nuw nsw <8 x i32> %i.adk, splat (i32 1)
  %i.adm = lshr <8 x i32> %broadcast.splat523, %i.adl
  %i.adn = and <8 x i32> %i.adm, splat (i32 3)    ; 4 uses
  %i.ado = add i64 %index, %i.aco                 ; 2 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ado
  %wide.load = load <8 x float>, ptr %i.adp, align 4, !tbaa !12, !alias.scope !428 ; 7 uses
  %i.adq = icmp eq <8 x i64> %vec.ind, zeroinitializer
  %i.adr = or <8 x i1> %broadcast.splat515, %i.adq
  %i.ads = select <8 x i1> %i.adr, <8 x i1> splat (i1 true), <8 x i1> %broadcast.splat517
  %i.adt = icmp eq <8 x i64> %vec.ind, %broadcast.splat525
  %i.adu = select <8 x i1> %i.ads, <8 x i1> splat (i1 true), <8 x i1> %i.adt ; 11 uses
  %i.adv = xor <8 x i1> %i.adu, splat (i1 true)   ; 9 uses
  %i.adw = add <8 x i64> %vec.ind, splat (i64 -1) ; 2 uses
  %i.adx = extractelement <8 x i64> %i.adw, i64 0 ; 3 uses
  %i.ady = add <8 x i64> %vec.ind, splat (i64 1)  ; 2 uses
  %i.adz = extractelement <8 x i64> %i.ady, i64 0 ; 3 uses
  %i.aea = getelementptr [4 x i8], ptr %i.acv, i64 %index
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aea, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !alias.scope !428 ; 4 uses
  %i.aeb = getelementptr [4 x i8], ptr %i.acw, i64 %index
  %wide.masked.load538 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeb, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !alias.scope !428 ; 4 uses
  %i.aec = getelementptr [4 x i8], ptr %i.acx, i64 %i.adx
  %wide.masked.load539 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aec, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !alias.scope !428 ; 5 uses
  %i.aed = getelementptr [4 x i8], ptr %i.acx, i64 %i.adz
  %wide.masked.load540 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aed, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !alias.scope !428 ; 5 uses
  %i.aee = getelementptr [4 x i8], ptr %i.acv, i64 %i.adz
  %wide.masked.load541 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aee, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !alias.scope !428 ; 3 uses
  %i.aef = getelementptr [4 x i8], ptr %i.acv, i64 %i.adx
  %wide.masked.load542 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aef, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !alias.scope !428 ; 3 uses
  %i.aeg = getelementptr [4 x i8], ptr %i.acw, i64 %i.adz
  %wide.masked.load543 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeg, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !alias.scope !428 ; 3 uses
  %i.aeh = getelementptr [4 x i8], ptr %i.acw, i64 %i.adx
  %wide.masked.load544 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeh, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !alias.scope !428 ; 3 uses
  %i.aei = icmp eq <8 x i32> %i.adn, splat (i32 1) ; 2 uses
  %i.aej = select <8 x i1> %i.adu, <8 x i1> splat (i1 true), <8 x i1> %i.aei ; 2 uses
  %i.aek = xor <8 x i1> %i.aej, splat (i1 true)
  %i.ael = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load538, %wide.masked.load ; 2 uses
  %i.aem = fadd reassoc nsz arcp contract afn <8 x float> %i.ael, %wide.masked.load539
  %i.aen = fadd reassoc nsz arcp contract afn <8 x float> %i.aem, %wide.masked.load540
  %i.aeo = fmul reassoc nsz arcp contract afn <8 x float> %i.aen, splat (float 2.500000e-01)
  %i.aep = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat527
  %i.aeq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat527
  %i.aer = select <8 x i1> %i.aep, <8 x i1> splat (i1 true), <8 x i1> %i.aeq
  %i.aes = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat527
  %i.aet = select <8 x i1> %i.aer, <8 x i1> splat (i1 true), <8 x i1> %i.aes
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat527
  %i.aev = select <8 x i1> %i.aet, <8 x i1> splat (i1 true), <8 x i1> %i.aeu
  %i.aew = icmp eq <8 x i32> %i.adn, zeroinitializer ; 2 uses
  %i.aex = select <8 x i1> %i.aek, <8 x i1> %i.aew, <8 x i1> zeroinitializer ; 5 uses
  %i.aey = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat529
  %i.aez = or disjoint <8 x i64> %i.adi, %broadcast.splat519
  %i.afa = trunc nuw nsw <8 x i64> %i.aez to <8 x i32>
  %i.afb = shl nuw nsw <8 x i32> %i.afa, splat (i32 1) ; 2 uses
  %i.afc = select <8 x i1> %i.adv, <8 x i1> %i.aei, <8 x i1> zeroinitializer ; 3 uses
  %i.afd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat527
  %i.afe = select <8 x i1> %i.aej, <8 x i1> splat (i1 true), <8 x i1> %i.aew
  %i.aff = xor <8 x i1> %i.afe, splat (i1 true)
  %i.afg = or <8 x i1> %i.afc, %i.aff             ; 4 uses
  %i.afh = shl nuw <8 x i32> splat (i32 3), %i.afb
  %i.afi = and <8 x i32> %i.afh, %broadcast.splat523
  %i.afj = icmp eq <8 x i32> %i.afi, zeroinitializer ; 2 uses
  %i.afk = select <8 x i1> %i.afg, <8 x i1> %i.afj, <8 x i1> zeroinitializer ; 2 uses
  %i.afl = or disjoint <8 x i64> %i.adi, %broadcast.splat521
  %i.afm = trunc nuw nsw <8 x i64> %i.afl to <8 x i32>
  %i.afn = shl nuw nsw <8 x i32> %i.afm, splat (i32 1) ; 2 uses
  %i.afo = shl nuw <8 x i32> splat (i32 3), %i.afn
  %i.afp = and <8 x i32> %i.afo, %broadcast.splat523
  %i.afq = icmp eq <8 x i32> %i.afp, zeroinitializer ; 2 uses
  %i.afr = xor <8 x i1> %i.afq, splat (i1 true)
  %i.afs = select <8 x i1> %i.afk, <8 x i1> %i.afr, <8 x i1> zeroinitializer
  %i.aft = xor <8 x i1> %i.afj, splat (i1 true)
  %i.afu = select <8 x i1> %i.afg, <8 x i1> %i.aft, <8 x i1> zeroinitializer
  %i.afv = or <8 x i1> %i.afs, %i.afu
  %i.afw = and <8 x i64> %i.adw, splat (i64 1)
  %i.afx = or disjoint <8 x i64> %i.afw, %broadcast.splat
  %i.afy = trunc nuw nsw <8 x i64> %i.afx to <8 x i32>
  %i.afz = shl nuw nsw <8 x i32> %i.afy, splat (i32 1) ; 2 uses
  %i.aga = shl nuw <8 x i32> splat (i32 3), %i.afz
  %i.agb = and <8 x i32> %i.aga, %broadcast.splat523
  %i.agc = icmp eq <8 x i32> %i.agb, zeroinitializer
  %i.agd = select <8 x i1> %i.afv, <8 x i1> %i.agc, <8 x i1> zeroinitializer
  %i.age = and <8 x i64> %i.ady, splat (i64 1)
  %i.agf = or disjoint <8 x i64> %i.age, %broadcast.splat
  %i.agg = trunc nuw nsw <8 x i64> %i.agf to <8 x i32>
  %i.agh = shl nuw nsw <8 x i32> %i.agg, splat (i32 1) ; 2 uses
  %i.agi = shl nuw <8 x i32> splat (i32 3), %i.agh
  %i.agj = and <8 x i32> %i.agi, %broadcast.splat523
  %i.agk = icmp eq <8 x i32> %i.agj, zeroinitializer
  %i.agl = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load542, %wide.masked.load541
  %i.agm = fadd reassoc nsz arcp contract afn <8 x float> %i.agl, %wide.masked.load543
  %i.agn = fadd reassoc nsz arcp contract afn <8 x float> %i.agm, %wide.masked.load544
  %i.ago = fmul reassoc nsz arcp contract afn <8 x float> %i.agn, splat (float 2.500000e-01) ; 2 uses
  %i.agp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat529
  %i.agq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat529
  %i.agr = select <8 x i1> %i.agp, <8 x i1> splat (i1 true), <8 x i1> %i.agq
  %i.ags = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load544, %broadcast.splat529
  %i.agt = select <8 x i1> %i.agr, <8 x i1> splat (i1 true), <8 x i1> %i.ags
  %i.agu = select <8 x i1> %i.agd, <8 x i1> %i.agk, <8 x i1> zeroinitializer ; 3 uses
  %i.agv = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load540, %wide.masked.load539
  %i.agw = fmul reassoc nsz arcp contract afn <8 x float> %i.agv, splat (float 5.000000e-01) ; 2 uses
  %i.agx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat529
  %i.agy = select <8 x i1> %i.afk, <8 x i1> %i.afq, <8 x i1> zeroinitializer ; 3 uses
  %i.agz = fmul reassoc nsz arcp contract afn <8 x float> %i.ael, splat (float 5.000000e-01) ; 2 uses
  %i.aha = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat529
  %predphi546 = select <8 x i1> %i.agu, <8 x float> %wide.masked.load540, <8 x float> %wide.masked.load543
  %predphi547 = select <8 x i1> %i.agy, <8 x float> %wide.masked.load538, <8 x float> %predphi546
  %predphi548 = select <8 x i1> %i.agu, <8 x i1> %i.agx, <8 x i1> %i.agt
  %predphi549 = select <8 x i1> %i.agy, <8 x i1> %i.aha, <8 x i1> %predphi548
  %predphi550 = select nsz <8 x i1> %i.agu, <8 x float> %i.agw, <8 x float> %i.ago
  %predphi551 = select nsz <8 x i1> %i.agy, <8 x float> %i.agz, <8 x float> %predphi550
  %i.ahb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi547, %broadcast.splat529
  %i.ahc = select <8 x i1> %predphi549, <8 x i1> splat (i1 true), <8 x i1> %i.ahb
  %i.ahd = icmp eq <8 x i32> %i.adn, splat (i32 2) ; 2 uses
  %i.ahe = xor <8 x i1> %i.ahd, splat (i1 true)
  %i.ahf = select <8 x i1> %i.afg, <8 x i1> %i.ahe, <8 x i1> %i.aex ; 2 uses
  %i.ahg = xor <8 x i1> %i.afc, splat (i1 true)
  %i.ahh = lshr <8 x i32> %broadcast.splat523, %i.afb
  %i.ahi = and <8 x i32> %i.ahh, splat (i32 3)
  %i.ahj = icmp eq <8 x i32> %i.ahi, splat (i32 2) ; 2 uses
  %i.ahk = select <8 x i1> %i.ahf, <8 x i1> %i.ahj, <8 x i1> zeroinitializer ; 2 uses
  %i.ahl = lshr <8 x i32> %broadcast.splat523, %i.afn
  %i.ahm = and <8 x i32> %i.ahl, splat (i32 3)
  %i.ahn = icmp eq <8 x i32> %i.ahm, splat (i32 2) ; 2 uses
  %i.aho = xor <8 x i1> %i.ahn, splat (i1 true)
  %i.ahp = select <8 x i1> %i.ahk, <8 x i1> %i.aho, <8 x i1> zeroinitializer
  %i.ahq = xor <8 x i1> %i.ahj, splat (i1 true)
  %i.ahr = select <8 x i1> %i.ahf, <8 x i1> %i.ahq, <8 x i1> zeroinitializer
  %i.ahs = or <8 x i1> %i.ahp, %i.ahr             ; 2 uses
  %i.aht = lshr <8 x i32> %broadcast.splat523, %i.afz
  %i.ahu = and <8 x i32> %i.aht, splat (i32 3)
  %i.ahv = icmp eq <8 x i32> %i.ahu, splat (i32 2) ; 2 uses
  %i.ahw = select <8 x i1> %i.ahs, <8 x i1> %i.ahv, <8 x i1> zeroinitializer ; 2 uses
  %i.ahx = lshr <8 x i32> %broadcast.splat523, %i.agh
  %i.ahy = and <8 x i32> %i.ahx, splat (i32 3)
  %i.ahz = icmp eq <8 x i32> %i.ahy, splat (i32 2) ; 2 uses
  %i.aia = xor <8 x i1> %i.ahv, splat (i1 true)
  %i.aib = select <8 x i1> %i.ahs, <8 x i1> %i.aia, <8 x i1> zeroinitializer
  %i.aic = xor <8 x i1> %i.ahz, splat (i1 true)
  %i.aid = select <8 x i1> %i.ahw, <8 x i1> %i.aic, <8 x i1> zeroinitializer
  %i.aie = or <8 x i1> %i.aib, %i.aid
  %i.aif = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat531
  %i.aig = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat531
  %i.aih = select <8 x i1> %i.aif, <8 x i1> splat (i1 true), <8 x i1> %i.aig
  %i.aii = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load544, %broadcast.splat531
  %i.aij = select <8 x i1> %i.aih, <8 x i1> splat (i1 true), <8 x i1> %i.aii
  %i.aik = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat531
  %i.ail = select <8 x i1> %i.aij, <8 x i1> splat (i1 true), <8 x i1> %i.aik
  %i.aim = select <8 x i1> %i.ahw, <8 x i1> %i.ahz, <8 x i1> zeroinitializer ; 2 uses
  %i.ain = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat531
  %i.aio = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat531
  %i.aip = select <8 x i1> %i.ain, <8 x i1> splat (i1 true), <8 x i1> %i.aio
  %i.aiq = select <8 x i1> %i.ahk, <8 x i1> %i.ahn, <8 x i1> zeroinitializer ; 2 uses
  %i.air = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat531
  %i.ais = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat531
  %i.ait = select <8 x i1> %i.air, <8 x i1> splat (i1 true), <8 x i1> %i.ais
  %i.aiu = select <8 x i1> %i.afg, <8 x i1> %i.ahd, <8 x i1> zeroinitializer ; 5 uses
  %i.aiv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat531
  %i.aiw = zext nneg <8 x i32> %i.adn to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.k, <8 x i64> %i.aiw
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.adu, <8 x float> poison), !tbaa !12, !noalias !429
  %i.aix = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %wide.masked.gather ; 4 uses
  %i.aiy = zext <8 x i1> %i.aix to <8 x i32>      ; 3 uses
  %not. = xor <8 x i1> %i.aiu, splat (i1 true)
  %i.aiz = select <8 x i1> %not., <8 x i1> %i.aex, <8 x i1> zeroinitializer
  %i.aja = select <8 x i1> %i.adu, <8 x i1> splat (i1 true), <8 x i1> %i.aiz
  %predphi557 = select nsz <8 x i1> %i.aja, <8 x float> %wide.load, <8 x float> %predphi551 ; 3 uses
  %i.ajb = select <8 x i1> %i.aiu, <8 x i1> splat (i1 true), <8 x i1> %i.aex
  %not.595 = xor <8 x i1> %i.ajb, splat (i1 true)
  %i.ajc = select <8 x i1> %not.595, <8 x i1> %i.afc, <8 x i1> zeroinitializer
  %i.ajd = select <8 x i1> %i.adu, <8 x i1> splat (i1 true), <8 x i1> %i.ajc
  %predphi559 = select nsz <8 x i1> %i.ajd, <8 x float> %wide.load, <8 x float> %i.aeo ; 3 uses
  %predphi560 = select nsz <8 x i1> %i.aie, <8 x float> %i.ago, <8 x float> %wide.load
  %predphi561 = select nsz <8 x i1> %i.aim, <8 x float> %i.agw, <8 x float> %predphi560
  %predphi562 = select nsz <8 x i1> %i.aiq, <8 x float> %i.agz, <8 x float> %predphi561 ; 3 uses
  %i.aje = xor <8 x i1> %i.aex, splat (i1 true)
  %i.ajf = select <8 x i1> %i.aiu, <8 x i1> splat (i1 true), <8 x i1> %i.aje
  %predphi563.v = select <8 x i1> %i.ajf, <8 x i1> %i.ahc, <8 x i1> %i.aey ; 2 uses
  %predphi563 = zext <8 x i1> %predphi563.v to <8 x i32>
  %predphi564 = select <8 x i1> %i.adu, <8 x i32> %i.aiy, <8 x i32> %predphi563
  %i.ajg = select <8 x i1> %i.aiu, <8 x i1> splat (i1 true), <8 x i1> %i.aex
  %i.ajh = select <8 x i1> %i.ajg, <8 x i1> splat (i1 true), <8 x i1> %i.ahg
  %predphi565.v = select <8 x i1> %i.ajh, <8 x i1> %i.aev, <8 x i1> %i.afd ; 2 uses
  %predphi565 = zext <8 x i1> %predphi565.v to <8 x i32>
  %predphi566 = select <8 x i1> %i.adu, <8 x i32> %i.aiy, <8 x i32> %predphi565
  %predphi567.v = select <8 x i1> %i.aim, <8 x i1> %i.aip, <8 x i1> %i.ail
  %predphi568.v = select <8 x i1> %i.aiq, <8 x i1> %i.ait, <8 x i1> %predphi567.v
  %predphi569.v = select <8 x i1> %i.aiu, <8 x i1> %i.aiv, <8 x i1> %predphi568.v ; 2 uses
  %predphi569 = zext <8 x i1> %predphi569.v to <8 x i32>
  %predphi570 = select <8 x i1> %i.adu, <8 x i32> %i.aiy, <8 x i32> %predphi569
  %i.aji = fmul reassoc nsz arcp contract afn <8 x float> %predphi557, %predphi557
  %i.ajj = fmul reassoc nsz arcp contract afn <8 x float> %predphi559, %predphi559
  %i.ajk = fadd reassoc nsz arcp contract afn <8 x float> %i.ajj, %i.aji
  %i.ajl = fmul reassoc nsz arcp contract afn <8 x float> %predphi562, %predphi562
  %i.ajm = fadd reassoc nsz arcp contract afn <8 x float> %i.ajk, %i.ajl
  %i.ajn = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ajm)
  %i.ajo = uitofp nneg <8 x i32> %predphi570 to <8 x float>
  %i.ajp = select <8 x i1> %i.adu, <8 x i1> %i.aix, <8 x i1> %predphi563.v
  %i.ajq = select <8 x i1> %i.adu, <8 x i1> %i.aix, <8 x i1> %predphi565.v
  %i.ajr = select <8 x i1> %i.ajp, <8 x i1> splat (i1 true), <8 x i1> %i.ajq
  %i.ajs = select <8 x i1> %i.adu, <8 x i1> %i.aix, <8 x i1> %predphi569.v
  %i.ajt = select <8 x i1> %i.ajr, <8 x i1> splat (i1 true), <8 x i1> %i.ajs
  %i.aju = select <8 x i1> %i.ajt, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajv = shufflevector <8 x i32> %predphi564, <8 x i32> %predphi566, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajw = uitofp nneg <16 x i32> %i.ajv to <16 x float>
  %i.ajx = shufflevector <8 x float> %i.ajo, <8 x float> %i.aju, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ajw, <16 x float> %i.ajx, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.adh, align 4, !tbaa !12, !alias.scope !427, !noalias !423
  %i.ajy = fmul reassoc nsz arcp contract afn <8 x float> %predphi557, %i.aca
  %i.ajz = shl i64 %i.ado, 4
  %i.aka = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.ajz
  %i.akb = fmul reassoc nsz arcp contract afn <8 x float> %predphi559, %i.acb
  %i.akc = fmul reassoc nsz arcp contract afn <8 x float> %predphi562, %i.acc
  %i.akd = shufflevector <8 x float> %i.ajy, <8 x float> %i.akb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ake = shufflevector <8 x float> %i.akc, <8 x float> %i.ajn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akf = shufflevector <16 x float> %i.akd, <16 x float> %i.ake, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec571 = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.akf, <32 x float> zeroinitializer)
  store <32 x float> %interleaved.vec571, ptr %i.aka, align 4, !tbaa !12, !alias.scope !426, !noalias !423
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i64> %vec.ind, splat (i64 8)
  %i.akg = icmp eq i64 %index.next, %n.vec
  br i1 %i.akg, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.0190240.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %bb.fk, %middle.block
  %exitcond245.not.i.i = icmp eq i64 %i.act, %i.aak
  br i1 %exitcond245.not.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.fk
  %.0190240.i.i = phi i64 [ %.pre-phi.i.i, %bb.fk ], [ %.0190240.i.i.ph, %scalar.ph.preheader ] ; 10 uses
  %i.akh = shl i64 %.0190240.i.i, 4
  %scevgep.i.i = getelementptr i8, ptr %i.adc, i64 %i.akh ; 4 uses
  %i.aki = and i64 %.0190240.i.i, 1               ; 5 uses
  %i.akj = or disjoint i64 %i.aki, %i.acn
  %.tr.i.i.i = trunc nuw nsw i64 %i.akj to i32
  %i.akk = shl nuw nsw i32 %.tr.i.i.i, 1
  %i.akl = lshr i32 %i.zw, %i.akk
  %i.akm = and i32 %i.akl, 3                      ; 4 uses
  %i.akn = add i64 %.0190240.i.i, %i.aco          ; 2 uses
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.akn
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !12, !alias.scope !428 ; 10 uses
  %i.akq = icmp eq i64 %.0190240.i.i, 0
  %or.cond.i.i = or i1 %i.acp, %i.akq
  %or.cond201.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.acq
  %i.akr = icmp eq i64 %.0190240.i.i, %i.aby
  %or.cond203.i.i = select i1 %or.cond201.i.i, i1 true, i1 %i.akr
  br i1 %or.cond203.i.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %scalar.ph
  %i.aks = zext nneg i32 %i.akm to i64
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aks
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !12, !noalias !429
  %i.akv = fcmp reassoc nsz arcp contract afn ogt float %i.akp, %i.aku
  %i.akw = zext i1 %i.akv to i32                  ; 3 uses
  %.pre254.i.i = add nuw i64 %.0190240.i.i, 1
  br label %bb.fk

bb.eu:                                            ; preds = %scalar.ph
  %i.akx = add i64 %.0190240.i.i, -1              ; 5 uses
  %i.aky = add nuw i64 %.0190240.i.i, 1           ; 9 uses
  %i.akz = getelementptr [4 x i8], ptr %i.acv, i64 %.0190240.i.i
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !12, !alias.scope !428 ; 6 uses
  %i.alb = getelementptr [4 x i8], ptr %i.acw, i64 %.0190240.i.i
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !12, !alias.scope !428 ; 6 uses
  %i.ald = getelementptr [4 x i8], ptr %i.acx, i64 %i.akx
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !12, !alias.scope !428 ; 6 uses
  %i.alf = getelementptr [4 x i8], ptr %i.acx, i64 %i.aky
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !12, !alias.scope !428 ; 6 uses
  %i.alh = getelementptr [4 x i8], ptr %i.acv, i64 %i.aky
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !12, !alias.scope !428 ; 4 uses
  %i.alj = getelementptr [4 x i8], ptr %i.acv, i64 %i.akx
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !12, !alias.scope !428 ; 4 uses
  %i.all = getelementptr [4 x i8], ptr %i.acw, i64 %i.aky
  %i.alm = load float, ptr %i.all, align 4, !tbaa !12, !alias.scope !428 ; 4 uses
  %i.aln = getelementptr [4 x i8], ptr %i.acw, i64 %i.akx
  %i.alo = load float, ptr %i.aln, align 4, !tbaa !12, !alias.scope !428 ; 4 uses
  %i.alp = icmp eq i32 %i.akm, 1
  br i1 %i.alp, label %.thread.i.i, label %bb.ev

.thread.i.i:                                      ; preds = %bb.eu
  %i.alq = fcmp reassoc nsz arcp contract afn ogt float %i.akp, %i.zp
  %i.alr = zext i1 %i.alq to i32
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.als = fadd reassoc nsz arcp contract afn float %i.alc, %i.ala
  %i.alt = fadd reassoc nsz arcp contract afn float %i.als, %i.ale
  %i.alu = fadd reassoc nsz arcp contract afn float %i.alt, %i.alg
  %i.alv = fmul reassoc nsz arcp contract afn float %i.alu, 2.500000e-01 ; 2 uses
  %i.alw = insertelement <4 x float> poison, float %i.ala, i64 0
  %i.alx = insertelement <4 x float> %i.alw, float %i.alc, i64 1
  %i.aly = insertelement <4 x float> %i.alx, float %i.alg, i64 2
  %i.alz = insertelement <4 x float> %i.aly, float %i.ale, i64 3
  %i.ama = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.alz, %i.ace
  %i.amb = freeze <4 x i1> %i.ama
  %i.amc = bitcast <4 x i1> %i.amb to i4
  %i.amd = icmp ne i4 %i.amc, 0
  %i.ame = zext i1 %i.amd to i32                  ; 2 uses
  %i.amf = icmp eq i32 %i.akm, 0
  br i1 %i.amf, label %.thread224.i.i, label %bb.ew

.thread224.i.i:                                   ; preds = %bb.ev
  %i.amg = fcmp reassoc nsz arcp contract afn ogt float %i.akp, %i.zl
  %i.amh = zext i1 %i.amg to i32
  %.pre255.i.i = or disjoint i64 %i.aki, %i.acz
  %.pre257.i.i = trunc nuw nsw i64 %.pre255.i.i to i32
  %.pre258.i.i = shl nuw nsw i32 %.pre257.i.i, 1
  br label %bb.fe

bb.ew:                                            ; preds = %bb.ev, %.thread.i.i
  %.0180223.i.i = phi i32 [ %i.alr, %.thread.i.i ], [ %i.ame, %bb.ev ] ; 2 uses
  %.0186221.i.i = phi float [ %i.akp, %.thread.i.i ], [ %i.alv, %bb.ev ] ; 2 uses
  %i.ami = or disjoint i64 %i.aki, %i.acz
  %.tr.i210.i.i = trunc nuw nsw i64 %i.ami to i32
  %i.amj = shl nuw nsw i32 %.tr.i210.i.i, 1       ; 2 uses
  %i.amk = shl nuw i32 3, %i.amj
  %i.aml = and i32 %i.amk, %i.zw
  %i.amm = icmp eq i32 %i.aml, 0
  br i1 %i.amm, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.amn = or disjoint i64 %i.aki, %i.adb
  %.tr.i211.i.i = trunc nuw nsw i64 %i.amn to i32
  %i.amo = shl nuw nsw i32 %.tr.i211.i.i, 1
  %i.amp = shl nuw i32 3, %i.amo
  %i.amq = and i32 %i.amp, %i.zw
  %i.amr = icmp eq i32 %i.amq, 0
  br i1 %i.amr, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.ams = fadd reassoc nsz arcp contract afn float %i.alc, %i.ala
  %i.amt = fmul reassoc nsz arcp contract afn float %i.ams, 5.000000e-01
  %i.amu = fcmp reassoc nsz arcp contract afn ogt float %i.ala, %i.zl
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %i.amv = and i64 %i.akx, 1
  %i.amw = or disjoint i64 %i.amv, %i.acn
  %.tr.i212.i.i = trunc nuw nsw i64 %i.amw to i32
  %i.amx = shl nuw nsw i32 %.tr.i212.i.i, 1
  %i.amy = shl nuw i32 3, %i.amx
  %i.amz = and i32 %i.amy, %i.zw
  %i.ana = icmp eq i32 %i.amz, 0
  br i1 %i.ana, label %bb.fa, label %._crit_edge249.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.anb = and i64 %i.aky, 1
  %i.anc = or disjoint i64 %i.anb, %i.acn
  %.tr.i213.i.i = trunc nuw nsw i64 %i.anc to i32
  %i.and = shl nuw nsw i32 %.tr.i213.i.i, 1
  %i.ane = shl nuw i32 3, %i.and
  %i.anf = and i32 %i.ane, %i.zw
  %i.ang = icmp eq i32 %i.anf, 0
  br i1 %i.ang, label %bb.fb, label %._crit_edge249.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.anh = fadd reassoc nsz arcp contract afn float %i.alg, %i.ale
  %i.ani = fmul reassoc nsz arcp contract afn float %i.anh, 5.000000e-01
  %i.anj = fcmp reassoc nsz arcp contract afn ogt float %i.ale, %i.zl
  br label %bb.fc

._crit_edge249.i.i:                               ; preds = %bb.ez, %bb.fa
  %i.ank = fadd reassoc nsz arcp contract afn float %i.alk, %i.ali
  %i.anl = fadd reassoc nsz arcp contract afn float %i.ank, %i.alm
end_hunk_0
begin_hunk_1_@_provide_raster_mask:bb.a
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %fcol.exit.preheader

fcol.exit.preheader:                              ; preds = %.preheader104, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader104 ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %fcol.exit.prol.loopexit, label %fcol.exit.prol

fcol.exit.prol:                                   ; preds = %fcol.exit.preheader
  %i.io = add nuw nsw i64 %i.hs, %indvars.iv.ph   ; 2 uses
  %.tr.i.i.prol = or disjoint i32 %i.fi, %i.hv
  %i.ip = shl nuw nsw i32 %.tr.i.i.prol, 1
  %i.iq = lshr i32 %i.q, %i.ip
  %i.ir = and i32 %i.iq, 3
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !12
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, f0x3F733333 ; 2 uses
  %i.iw = fcmp reassoc nsz arcp contract afn olt float %i.iv, 5.000000e-01
  %spec.select101.prol = select i1 %i.iw, float 5.000000e-01, float %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.io
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !12
  %i.iz = fsub reassoc nsz arcp contract afn float %i.iy, %spec.select101.prol
  %i.ja = fdiv reassoc nsz arcp contract afn float %i.iz, %spec.select101.prol ; 2 uses
  %i.jb = fcmp reassoc nsz arcp contract afn olt float %i.ja, 0.000000e+00
  %i.jc = select reassoc nsz arcp contract afn i1 %i.jb, float 0.000000e+00, float %i.ja
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.io
  store float %i.jc, ptr %i.jd, align 4, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %fcol.exit.prol.loopexit

fcol.exit.prol.loopexit:                          ; preds = %fcol.exit.prol, %fcol.exit.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %fcol.exit.preheader ], [ %indvars.iv.next.prol, %fcol.exit.prol ] ; 2 uses
  %i.je = icmp eq i64 %indvars.iv.ph, %i.fj
  br i1 %i.je, label %._crit_edge.split, label %fcol.exit.preheader.new

fcol.exit.preheader.new:                          ; preds = %fcol.exit.prol.loopexit
  %i.jf = trunc nsw i64 %indvars.iv.unr to i32
  %i.jg = add i32 %i.fg, %i.jf
  %i.jh = and i32 %i.jg, 1
  %.tr.i.i = or disjoint i32 %i.jh, %i.hv
  %i.ji = shl nuw nsw i32 %.tr.i.i, 1
  %i.jj = lshr i32 %i.q, %i.ji
  %i.jk = and i32 %i.jj, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jl
  br label %fcol.exit

._crit_edge.split:                                ; preds = %fcol.exit.prol.loopexit, %fcol.exit, %middle.block
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.loopexit, label %.preheader104

fcol.exit:                                        ; preds = %fcol.exit, %fcol.exit.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %fcol.exit.preheader.new ], [ %indvars.iv.next.1, %fcol.exit ] ; 3 uses
  %i.jn = add nuw nsw i64 %i.hs, %indvars.iv      ; 2 uses
  %i.jo = load float, ptr %i.jm, align 4, !tbaa !12
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, f0x3F733333 ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn olt float %i.jp, 5.000000e-01
  %spec.select101 = select i1 %i.jq, float 5.000000e-01, float %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jn
  %i.js = load float, ptr %i.jr, align 4, !tbaa !12
  %i.jt = fsub reassoc nsz arcp contract afn float %i.js, %spec.select101
  %i.ju = fdiv reassoc nsz arcp contract afn float %i.jt, %spec.select101 ; 2 uses
  %i.jv = fcmp reassoc nsz arcp contract afn olt float %i.ju, 0.000000e+00
  %i.jw = select reassoc nsz arcp contract afn i1 %i.jv, float 0.000000e+00, float %i.ju
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jn
  store float %i.jw, ptr %i.jx, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jy = add nuw nsw i64 %i.hs, %indvars.iv.next ; 2 uses
  %i.jz = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.jz
  %i.ka = and i32 %.reass.1, 1
  %.tr.i.i.1 = or disjoint i32 %i.ka, %i.hv
  %i.kb = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.kc = lshr i32 %i.q, %i.kb
  %i.kd = and i32 %i.kc, 3
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, f0x3F733333 ; 2 uses
  %i.ki = fcmp reassoc nsz arcp contract afn olt float %i.kh, 5.000000e-01
  %spec.select101.1 = select i1 %i.ki, float 5.000000e-01, float %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jy
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !12
  %i.kl = fsub reassoc nsz arcp contract afn float %i.kk, %spec.select101.1
  %i.km = fdiv reassoc nsz arcp contract afn float %i.kl, %spec.select101.1 ; 2 uses
  %i.kn = fcmp reassoc nsz arcp contract afn olt float %i.km, 0.000000e+00
  %i.ko = select reassoc nsz arcp contract afn i1 %i.kn, float 0.000000e+00, float %i.km
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jy
  store float %i.ko, ptr %i.kp, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.split, label %fcol.exit, !llvm.loop !476

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %._crit_edge, %bb.d, %.preheader104.lr.ph, %.preheader103, %.preheader.lr.ph
  %i.kq = phi i32 [ %i.ev, %._crit_edge.split.us.us ], [ %i.af, %._crit_edge ], [ %i.af, %.preheader.lr.ph ], [ %i.ev, %bb.d ], [ %i.ev, %.preheader104.lr.ph ], [ %i.af, %.preheader103 ], [ %i.ev, %._crit_edge.split ]
  %i.kr = phi i32 [ %.pre, %._crit_edge.split.us.us ], [ %.pre152, %._crit_edge ], [ %.pre152, %.preheader.lr.ph ], [ %.pre, %bb.d ], [ %.pre, %.preheader104.lr.ph ], [ %.pre152, %.preheader103 ], [ %.pre, %._crit_edge.split ]
  tail call void @dt_gaussian_fast_blur(ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i32 noundef %i.kr, i32 noundef %i.kq, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 1) #33
  tail call void @free(ptr noundef nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  %.091 = phi ptr [ %i.k, %.loopexit ], [ null, %bb.b ]
  ret ptr %.091
}

declare void @dt_iop_piece_set_raster(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @interpolate_color_xtrans(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 -1, 2) %5, i32 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef range(i32 0, 4) %9) unnamed_addr #16 {
bb.a:
  %i.a = alloca [3 x [3 x i32]], align 16         ; 12 uses
  %i.b = alloca [4 x float], align 16             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -3, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 3, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_laplacian_bayer.wb, i64 16, i1 false)
  %i.i = icmp eq i32 %4, 0                        ; 13 uses
  %i.j = select i1 %i.i, i32 0, i32 %6
  %i.k = select i1 %i.i, i32 %6, i32 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !79   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %.inv175 = icmp slt i32 %5, 0
  %i.p = select i1 %.inv175, i64 %i.o, i64 %i.n   ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.inv175187 = icmp slt i32 %5, 0
  %i.r = select i1 %.inv175187, i64 -1, i64 1     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !79   ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = sub nsw i64 %i.r, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.in176.v = phi i64 [ 8, %bb.c ], [ 12, %bb.b ]
  %i.w = phi i32 [ %i.t, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.x = phi i64 [ %i.v, %bb.c ], [ %i.q, %bb.b ]
  %i.y = phi i64 [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 5 uses
  %i.z = phi i64 [ %i.u, %bb.c ], [ 1, %bb.b ]
  %i.aa = icmp eq i32 %5, 1                       ; 2 uses
  %.in176 = getelementptr inbounds nuw i8, ptr %3, i64 %.in176.v
  %i.ab = load i32, ptr %.in176, align 4, !tbaa !15 ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1
  %.0163 = select i1 %i.aa, i32 0, i32 %i.ac      ; 4 uses
  %.0162 = select i1 %i.aa, i32 %i.ab, i32 -1     ; 2 uses
  %.not178191 = icmp eq i32 %.0163, %.0162
  br i1 %.not178191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.0163.sink = select i1 %i.i, i32 %.0163, i32 %6
  %i.ad = sext i32 %.0163.sink to i64             ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79
  %i.ah = sext i32 %i.ag to i64
  %.sink222 = select i1 %i.i, i32 %6, i32 %.0163
  %i.ai = sext i32 %.sink222 to i64               ; 2 uses
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  %i.am = sext i32 %i.w to i64
  %i.an = mul nsw i64 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = icmp eq i32 %9, 3                       ; 2 uses
  %i.at = add nsw i32 %i.w, -1
  br label %bb.e

._crit_edge:                                      ; preds = %bb.af, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.af
  %.0158197 = phi i32 [ %.0163, %.lr.ph ], [ %12, %bb.af ] ; 3 uses
  %.1196 = phi ptr [ %i.ao, %.lr.ph ], [ %i.hh, %bb.af ] ; 4 uses
  %.1161194 = phi ptr [ %i.ak, %.lr.ph ], [ %i.hi, %bb.af ] ; 7 uses
  %.0164193 = phi i32 [ %i.k, %.lr.ph ], [ %.0164..0158.a, %bb.af ] ; 4 uses
  %.0166192 = phi i32 [ %i.j, %.lr.ph ], [ %.0158..0166, %bb.af ] ; 4 uses
  %i.au = add nsw i32 %.0164193, -1
  %i.av = add nsw i32 %.0166192, -1
  %i.aw = add nsw i32 %.0164193, 1
  %i.ax = add nsw i32 %.0166192, 1
  %.0158..0166 = select i1 %i.i, i32 %.0158197, i32 %.0166192 ; 5 uses
  %.0164..0158.a = select i1 %i.i, i32 %.0164193, i32 %.0158197 ; 5 uses
  %10 = add nsw i32 %.0164..0158.a, %5            ; 3 uses
  %i.ay = select i1 %i.i, i32 %.0164193, i32 %10
  %11 = add nsw i32 %.0158..0166, %5              ; 3 uses
  %i.az = select i1 %i.i, i32 %11, i32 %.0166192
  %i.ba = select i1 %i.i, i32 %i.au, i32 %10
  %i.bb = select i1 %i.i, i32 %11, i32 %i.av
  %i.bc = select i1 %i.i, i32 %i.aw, i32 %10
  %i.bd = select i1 %i.i, i32 %11, i32 %i.ax
  %i.be = insertelement <8 x i32> poison, i32 %.0164..0158.a, i64 0
  %i.bf = insertelement <8 x i32> %i.be, i32 %.0158..0166, i64 1
  %i.bg = insertelement <8 x i32> %i.bf, i32 %i.ay, i64 2
  %i.bh = insertelement <8 x i32> %i.bg, i32 %i.az, i64 3
  %i.bi = insertelement <8 x i32> %i.bh, i32 %i.ba, i64 4
  %i.bj = insertelement <8 x i32> %i.bi, i32 %i.bb, i64 5
  %i.bk = insertelement <8 x i32> %i.bj, i32 %i.bc, i64 6
  %i.bl = insertelement <8 x i32> %i.bk, i32 %i.bd, i64 7
  %i.bm = add nsw <8 x i32> %i.bl, splat (i32 600)
  %i.bn = srem <8 x i32> %i.bm, splat (i32 6)     ; 8 uses
  %i.bo = extractelement <8 x i32> %i.bn, i64 0
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [6 x i8], ptr %8, i64 %i.bp
  %i.br = extractelement <8 x i32> %i.bn, i64 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !97  ; 3 uses
  %i.bv = extractelement <8 x i32> %i.bn, i64 2
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [6 x i8], ptr %8, i64 %i.bw
  %i.by = extractelement <8 x i32> %i.bn, i64 3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !97  ; 2 uses
  %i.cc = extractelement <8 x i32> %i.bn, i64 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [6 x i8], ptr %8, i64 %i.cd
  %i.cf = extractelement <8 x i32> %i.bn, i64 5
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !97  ; 2 uses
  %i.cj = extractelement <8 x i32> %i.bn, i64 6
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [6 x i8], ptr %8, i64 %i.ck
  %i.cm = extractelement <8 x i32> %i.bn, i64 7
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !97
  %i.cq = zext i8 %i.cp to i64                    ; 2 uses
  %i.cr = zext i8 %i.bu to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !12 ; 6 uses
  %i.cu = zext i8 %i.cb to i64                    ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !12 ; 3 uses
  %i.cx = zext i8 %i.ci to i64                    ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !12 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cq
  %i.db = load float, ptr %i.da, align 4, !tbaa !12 ; 2 uses
  %i.dc = load float, ptr %7, align 4, !tbaa !12
  %i.dd = load float, ptr %i.ap, align 4, !tbaa !12
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dc, float %i.dd)
  %i.df = load float, ptr %i.aq, align 4, !tbaa !12
  %i.dg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float %i.df) ; 2 uses
  %i.dh = icmp eq i32 %.0158..0166, 0
  br i1 %i.dh, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = icmp eq i32 %.0158..0166, %i.at
  %i.dj = icmp eq i32 %.0164..0158.a, 0
  %or.cond = or i1 %i.dj, %i.di
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = load i32, ptr %i.ar, align 4, !tbaa !78
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = icmp eq i32 %.0164..0158.a, %i.dl
  br i1 %i.dm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %i.as, label %bb.i, label %bb.af

bb.i:                                             ; preds = %bb.h
  %i.dn = load float, ptr %.1161194, align 4, !tbaa !12
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dg, float %i.dn)
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %.not179 = icmp eq i8 %i.bu, %i.cb
  %i.dp = load float, ptr %.1161194, align 4, !tbaa !12 ; 7 uses
  br i1 %.not179, label %.thread189, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %i.dp, %i.ct
  %i.dr = fcmp reassoc nsz arcp contract afn ogt float %i.dp, f0x3727C5AC
  %or.cond181 = and i1 %i.dq, %i.dr
  br i1 %or.cond181, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds [4 x i8], ptr %.1161194, i64 %i.y
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !12 ; 4 uses
  %i.du = fcmp reassoc nsz arcp contract afn olt float %i.dt, %i.cw
  %i.dv = fcmp reassoc nsz arcp contract afn ogt float %i.dt, f0x3727C5AC
  %or.cond182 = and i1 %i.du, %i.dv
  br i1 %or.cond182, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.cr
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.cu
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !15 ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ea ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, 3.000000e+00
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.dt, %i.dp
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ed, %i.ee
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, 2.500000e-01
  store float %i.eg, ptr %i.eb, align 4, !tbaa !12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.eh = sub nsw i32 0, %i.dy
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !12
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, 3.000000e+00
  %i.em = fdiv reassoc nsz arcp contract afn float %i.dp, %i.dt
  %i.en = fadd reassoc nsz arcp contract afn float %i.el, %i.em
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, 2.500000e-01
  store float %i.eo, ptr %i.ej, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l, %bb.k
  %i.ep = fadd reassoc nsz arcp contract afn float %i.ct, f0xB727C5AC
  %i.eq = fcmp reassoc nsz arcp contract afn ult float %i.dp, %i.ep
  br i1 %i.eq, label %bb.ae, label %bb.q

.thread189:                                       ; preds = %bb.j
  %i.er = fadd reassoc nsz arcp contract afn float %i.ct, f0xB727C5AC
  %i.es = fcmp reassoc nsz arcp contract afn ult float %i.dp, %i.er
  br i1 %i.es, label %bb.ae, label %.thread190

bb.q:                                             ; preds = %bb.p
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.cr
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.cu
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !15 ; 3 uses
  %i.ew = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ct, float %i.cw) ; 3 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %.1161194, i64 %i.y
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12 ; 3 uses
  %i.ez = fadd reassoc nsz arcp contract afn float %i.cw, f0xB727C5AC
  %i.fa = fcmp reassoc nsz arcp contract afn ult float %i.ey, %i.ez
  br i1 %i.fa, label %bb.r, label %interp_pix_xtrans.exit

bb.r:                                             ; preds = %bb.q
  %i.fb = icmp sgt i32 %i.ev, 0
  br i1 %i.fb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fc = zext nneg i32 %i.ev to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !12
  %i.ff = fdiv reassoc nsz arcp contract afn float %i.ey, %i.fe
  %i.fg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ff, float %i.ew)
  br label %interp_pix_xtrans.exit

bb.t:                                             ; preds = %bb.r
  %i.fh = sub nsw i32 0, %i.ev
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !12
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.ey
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fl, float %i.ew)
  br label %interp_pix_xtrans.exit

.thread190:                                       ; preds = %.thread189
  %.not180 = icmp eq i8 %i.ci, %i.bu
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.cr ; 2 uses
  br i1 %.not180, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.thread190
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.cx
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !15 ; 3 uses
  %i.fq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ct, float %i.cz) ; 3 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %.1161194, i64 %i.x
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !12 ; 3 uses
  %i.ft = fadd reassoc nsz arcp contract afn float %i.cz, f0xB727C5AC
  %i.fu = fcmp reassoc nsz arcp contract afn ult float %i.fs, %i.ft
  br i1 %i.fu, label %bb.v, label %interp_pix_xtrans.exit

bb.v:                                             ; preds = %bb.u
  %i.fv = icmp sgt i32 %i.fp, 0
  br i1 %i.fv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fw = zext nneg i32 %i.fp to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !12
  %i.fz = fdiv reassoc nsz arcp contract afn float %i.fs, %i.fy
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fz, float %i.fq)
  br label %interp_pix_xtrans.exit

bb.x:                                             ; preds = %bb.v
  %i.gb = sub nsw i32 0, %i.fp
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.fs
  %i.gg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gf, float %i.fq)
  br label %interp_pix_xtrans.exit

bb.y:                                             ; preds = %.thread190
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.cq
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !15 ; 3 uses
  %i.gj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ct, float %i.db) ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %.1161194, i64 %i.y
  %i.gl = getelementptr [4 x i8], ptr %i.gk, i64 %i.z
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !12 ; 3 uses
  %i.gn = fadd reassoc nsz arcp contract afn float %i.db, f0xB727C5AC
  %i.go = fcmp reassoc nsz arcp contract afn ult float %i.gm, %i.gn
  br i1 %i.go, label %bb.z, label %interp_pix_xtrans.exit

bb.z:                                             ; preds = %bb.y
  %i.gp = icmp sgt i32 %i.gi, 0
  br i1 %i.gp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gq = zext nneg i32 %i.gi to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !12
  %i.gt = fdiv reassoc nsz arcp contract afn float %i.gm, %i.gs
  %i.gu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gt, float %i.gj)
  br label %interp_pix_xtrans.exit

bb.ab:                                            ; preds = %bb.z
  %i.gv = sub nsw i32 0, %i.gi
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !12
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.gm
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gz, float %i.gj)
  br label %interp_pix_xtrans.exit

interp_pix_xtrans.exit:                           ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q
  %.0 = phi nsz float [ %i.fq, %bb.u ], [ %i.ew, %bb.q ], [ %i.fm, %bb.t ], [ %i.fg, %bb.s ], [ %i.gg, %bb.x ], [ %i.ga, %bb.w ], [ %i.ha, %bb.ab ], [ %i.gu, %bb.aa ], [ %i.gj, %bb.y ] ; 3 uses
  switch i32 %9, label %bb.ad [
    i32 0, label %.sink.split
    i32 3, label %bb.ac
  ]

bb.ac:                                            ; preds = %interp_pix_xtrans.exit
  %i.hb = load float, ptr %.1196, align 4, !tbaa !12
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, %.0
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, 2.500000e-01
  %i.he = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dg, float %i.hd)
  br label %.sink.split

bb.ad:                                            ; preds = %interp_pix_xtrans.exit
  %i.hf = load float, ptr %.1196, align 4, !tbaa !12
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, %.0
  br label %.sink.split

bb.ae:                                            ; preds = %.thread189, %bb.p
  br i1 %i.as, label %.sink.split, label %bb.af

.sink.split:                                      ; preds = %bb.ae, %interp_pix_xtrans.exit, %bb.i, %bb.ac, %bb.ad
  %.0.sink = phi float [ %i.do, %bb.i ], [ %i.hg, %bb.ad ], [ %i.he, %bb.ac ], [ %.0, %interp_pix_xtrans.exit ], [ %i.dp, %bb.ae ]
  store float %.0.sink, ptr %.1196, align 4, !tbaa !12
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ae, %bb.h
  %i.hh = getelementptr inbounds [4 x i8], ptr %.1196, i64 %i.y
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1161194, i64 %i.y
  %12 = add nsw i32 %.0158197, %5                 ; 2 uses
  %.not178 = icmp eq i32 %12, %.0162
  br i1 %.not178, label %._crit_edge, label %bb.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @process_lch_xtrans(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 14 uses
  %i.b = alloca [4 x float], align 16             ; 15 uses
  %i.c = alloca [3 x i32], align 8                ; 14 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph28, label %._crit_edge29.split

.lr.ph28:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79   ; 16 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !79   ; 4 uses
  %i.n = sext i32 %i.m to i64                     ; 24 uses
  %i.o = icmp sgt i32 %i.j, 0
  %i.p = sub nsw i32 0, %i.m
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i32 %i.j, -3
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge29.split

.lr.ph.preheader:                                 ; preds = %.lr.ph28
  %i.y = add nsw i32 %i.g, -3
  %i.z = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 3 uses
  %.idx = mul nsw i64 %i.n, -8
  %i.aa = sub nsw i64 0, %i.n
  %.idx104 = mul nsw i64 %i.n, -8
  %i.ab = sub nsw i64 0, %i.n
  %.idx123 = mul nsw i64 %i.n, -8
  %i.ac = sub nsw i64 0, %i.n
  %i.ad = sub nsw i64 0, %i.n
  %i.ae = sub nsw i64 0, %i.n
  %i.af = sub nsw i64 0, %i.n
  %.idx197 = shl nsw i64 %i.n, 3
  %.idx216 = shl nsw i64 %i.n, 3
  %.idx235 = shl nsw i64 %i.n, 3
  %i.ag = sub nsw i64 0, %i.n
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ai = mul nsw i64 %i.ah, %i.n
  %i.aj = add nsw i32 %i.j, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = add i64 %i.ai, %i.ak
  %i.am = shl i64 %i.al, 2
  %i.an = getelementptr i8, ptr %1, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.an, i64 4
  %i.ao = mul nsw i64 %i.ah, %i.k
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = shl i64 %i.ap, 2
  %i.ar = getelementptr i8, ptr %2, i64 %i.aq
  %scevgep267 = getelementptr i8, ptr %i.ar, i64 4
  %i.as = zext nneg i32 %i.j to i64               ; 10 uses
  %i.at = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.au = mul nsw i64 %i.at, %i.n
  %i.av = add nsw i32 %i.j, -1
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = add i64 %i.au, %i.aw
  %i.ay = shl i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  %scevgep291 = getelementptr i8, ptr %i.az, i64 4
  %i.ba = mul nsw i64 %i.at, %i.k
  %i.bb = add i64 %i.ba, %i.aw
  %i.bc = shl i64 %i.bb, 2
  %i.bd = getelementptr i8, ptr %2, i64 %i.bc
  %scevgep292 = getelementptr i8, ptr %i.bd, i64 4
  %i.be = insertelement <2 x float> poison, float %5, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = insertelement <8 x float> poison, float %5, i64 0
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %min.iters.check = icmp ult i32 %i.j, 8         ; 2 uses
  %bound0295 = icmp ult ptr %2, %scevgep291
  %bound1296 = icmp ult ptr %1, %scevgep292
  %found.conflict297 = and i1 %bound0295, %bound1296
  %stride.check298 = icmp slt i32 %i.m, 0
  %i.bi = or i1 %found.conflict297, %stride.check298
  %min.iters.check300 = icmp ult i32 %i.j, 32
  %i.bj = and i64 %i.as, 24
  %n.vec302 = and i64 %i.as, 2147483616           ; 5 uses
  %i.bk = trunc nuw nsw i64 %n.vec302 to i32
  %i.bl = shl nuw nsw i64 %n.vec302, 2            ; 2 uses
  %broadcast.splatinsert303 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat304 = shufflevector <8 x float> %broadcast.splatinsert303, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %cmp.n315 = icmp eq i64 %n.vec302, %i.as
  %min.epilog.iters.check319 = icmp eq i64 %i.bj, 0
  %n.vec322 = and i64 %i.as, 2147483640           ; 4 uses
  %i.bm = trunc nuw nsw i64 %n.vec322 to i32
  %i.bn = shl nuw nsw i64 %n.vec322, 2            ; 2 uses
  %broadcast.splatinsert323 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat324 = shufflevector <8 x float> %broadcast.splatinsert323, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n332 = icmp eq i64 %n.vec322, %i.as
  %bound0 = icmp ult ptr %2, %scevgep
  %bound1 = icmp ult ptr %1, %scevgep267
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.m, 0
  %i.bo = or i1 %found.conflict, %stride.check
  %min.iters.check268 = icmp ult i32 %i.j, 32
  %i.bp = and i64 %i.as, 24
  %n.vec = and i64 %i.as, 2147483616              ; 5 uses
  %i.bq = trunc nuw nsw i64 %n.vec to i32
  %i.br = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %cmp.n = icmp eq i64 %n.vec, %i.as
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  %n.vec273 = and i64 %i.as, 2147483640           ; 4 uses
  %i.bs = trunc nuw nsw i64 %n.vec273 to i32
  %i.bt = shl nuw nsw i64 %n.vec273, 2            ; 2 uses
  %broadcast.splatinsert274 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat275 = shufflevector <8 x float> %broadcast.splatinsert274, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n281 = icmp eq i64 %n.vec273, %i.as
  br label %.lr.ph

._crit_edge29.split:                              ; preds = %._crit_edge, %.lr.ph28, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.bu = mul nuw nsw i64 %indvars.iv, %i.k
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bu ; 11 uses
  %i.bw = mul nsw i64 %indvars.iv, %i.n
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw ; 11 uses
  %i.by = icmp samesign ult i64 %indvars.iv, 2    ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %i.z
  %.fr = freeze i1 %.not                          ; 2 uses
  %or.cond2 = or i1 %i.by, %.fr                   ; 2 uses
  %i.bz = trunc i64 %indvars.iv to i32
  %i.ca = add i32 %i.bz, 600                      ; 2 uses
  %i.cb = urem i32 %i.ca, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [6 x i8], ptr %i.e, i64 %i.cc
  %i.ce = or i1 %.fr, %i.by
  br i1 %i.ce, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = add i32 %i.cf, 599
  %i.ch = srem i32 %i.cg, 6
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [6 x i8], ptr %i.e, i64 %i.ci ; 3 uses
  %i.ck = srem i32 %i.ca, 6
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [6 x i8], ptr %i.e, i64 %i.cl ; 3 uses
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = add i32 %i.cn, 601
  %i.cp = srem i32 %i.co, 6
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [6 x i8], ptr %i.e, i64 %i.cq ; 3 uses
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %or.cond2, label %iter.check, label %iter.check316

iter.check316:                                    ; preds = %.lr.ph.split.us
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bi
  br i1 %brmerge, label %.lr.ph.split.us.split.preheader, label %vector.main.loop.iter.check299

vector.main.loop.iter.check299:                   ; preds = %iter.check316
  br i1 %min.iters.check300, label %vec.epilog.ph320, label %vector.ph301

vector.ph301:                                     ; preds = %vector.main.loop.iter.check299
  %i.cs = getelementptr i8, ptr %i.bx, i64 %i.bl
  %i.ct = getelementptr i8, ptr %i.bv, i64 %i.bl
  br label %vector.body305

vector.body305:                                   ; preds = %vector.ph301, %vector.body305
  %index306 = phi i64 [ 0, %vector.ph301 ], [ %index.next313, %vector.body305 ] ; 2 uses
  %i.cu = shl i64 %index306, 2                    ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.bx, i64 %i.cu ; 4 uses
  %next.gep308 = getelementptr i8, ptr %i.bv, i64 %i.cu ; 4 uses
  %i.cv = getelementptr i8, ptr %next.gep307, i64 32
  %i.cw = getelementptr i8, ptr %next.gep307, i64 64
  %i.cx = getelementptr i8, ptr %next.gep307, i64 96
  %wide.load309 = load <8 x float>, ptr %next.gep307, align 4, !tbaa !12, !alias.scope !493 ; 2 uses
  %wide.load310 = load <8 x float>, ptr %i.cv, align 4, !tbaa !12, !alias.scope !493 ; 2 uses
  %wide.load311 = load <8 x float>, ptr %i.cw, align 4, !tbaa !12, !alias.scope !493 ; 2 uses
  %wide.load312 = load <8 x float>, ptr %i.cx, align 4, !tbaa !12, !alias.scope !493 ; 2 uses
  %i.cy = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat304, %wide.load309
  %i.cz = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat304, %wide.load310
  %i.da = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat304, %wide.load311
  %i.db = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat304, %wide.load312
  %i.dc = select reassoc nsz arcp contract afn <8 x i1> %i.cy, <8 x float> %broadcast.splat304, <8 x float> %wide.load309
  %i.dd = select reassoc nsz arcp contract afn <8 x i1> %i.cz, <8 x float> %broadcast.splat304, <8 x float> %wide.load310
  %i.de = select reassoc nsz arcp contract afn <8 x i1> %i.da, <8 x float> %broadcast.splat304, <8 x float> %wide.load311
  %i.df = select reassoc nsz arcp contract afn <8 x i1> %i.db, <8 x float> %broadcast.splat304, <8 x float> %wide.load312
  %i.dg = getelementptr i8, ptr %next.gep308, i64 32
  %i.dh = getelementptr i8, ptr %next.gep308, i64 64
end_hunk_1
