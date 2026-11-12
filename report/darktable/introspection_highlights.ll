Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@process:bb.a
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
  %7 = or <8 x i1> %i.afs, %i.aft
  %8 = select <8 x i1> %i.afg, <8 x i1> %7, <8 x i1> zeroinitializer
  %i.afu = and <8 x i64> %i.adw, splat (i64 1)
  %i.afv = or disjoint <8 x i64> %i.afu, %broadcast.splat
  %i.afw = trunc nuw nsw <8 x i64> %i.afv to <8 x i32>
  %i.afx = shl nuw nsw <8 x i32> %i.afw, splat (i32 1) ; 2 uses
  %i.afy = shl nuw <8 x i32> splat (i32 3), %i.afx
  %i.afz = and <8 x i32> %i.afy, %broadcast.splat523
  %i.aga = icmp eq <8 x i32> %i.afz, zeroinitializer
  %i.agb = select <8 x i1> %8, <8 x i1> %i.aga, <8 x i1> zeroinitializer
  %i.agc = and <8 x i64> %i.ady, splat (i64 1)
  %i.agd = or disjoint <8 x i64> %i.agc, %broadcast.splat
  %i.age = trunc nuw nsw <8 x i64> %i.agd to <8 x i32>
  %i.agf = shl nuw nsw <8 x i32> %i.age, splat (i32 1) ; 2 uses
  %i.agg = shl nuw <8 x i32> splat (i32 3), %i.agf
  %i.agh = and <8 x i32> %i.agg, %broadcast.splat523
  %i.agi = icmp eq <8 x i32> %i.agh, zeroinitializer
  %i.agj = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load542, %wide.masked.load541
  %i.agk = fadd reassoc nsz arcp contract afn <8 x float> %i.agj, %wide.masked.load543
  %i.agl = fadd reassoc nsz arcp contract afn <8 x float> %i.agk, %wide.masked.load544
  %i.agm = fmul reassoc nsz arcp contract afn <8 x float> %i.agl, splat (float 2.500000e-01) ; 2 uses
  %i.agn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat529
  %i.ago = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat529
  %i.agp = select <8 x i1> %i.agn, <8 x i1> splat (i1 true), <8 x i1> %i.ago
  %i.agq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load544, %broadcast.splat529
  %i.agr = select <8 x i1> %i.agp, <8 x i1> splat (i1 true), <8 x i1> %i.agq
  %i.ags = select <8 x i1> %i.agb, <8 x i1> %i.agi, <8 x i1> zeroinitializer ; 3 uses
  %i.agt = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load540, %wide.masked.load539
  %i.agu = fmul reassoc nsz arcp contract afn <8 x float> %i.agt, splat (float 5.000000e-01) ; 2 uses
  %i.agv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat529
  %i.agw = select <8 x i1> %i.afk, <8 x i1> %i.afq, <8 x i1> zeroinitializer ; 3 uses
  %i.agx = fmul reassoc nsz arcp contract afn <8 x float> %i.ael, splat (float 5.000000e-01) ; 2 uses
  %i.agy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat529
  %predphi546 = select <8 x i1> %i.ags, <8 x float> %wide.masked.load540, <8 x float> %wide.masked.load543
  %predphi547 = select <8 x i1> %i.agw, <8 x float> %wide.masked.load538, <8 x float> %predphi546
  %predphi548 = select <8 x i1> %i.ags, <8 x i1> %i.agv, <8 x i1> %i.agr
  %predphi549 = select <8 x i1> %i.agw, <8 x i1> %i.agy, <8 x i1> %predphi548
  %predphi550 = select nsz <8 x i1> %i.ags, <8 x float> %i.agu, <8 x float> %i.agm
  %predphi551 = select nsz <8 x i1> %i.agw, <8 x float> %i.agx, <8 x float> %predphi550
  %i.agz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi547, %broadcast.splat529
  %i.aha = select <8 x i1> %predphi549, <8 x i1> splat (i1 true), <8 x i1> %i.agz
  %i.ahb = icmp eq <8 x i32> %i.adn, splat (i32 2) ; 2 uses
  %i.ahc = xor <8 x i1> %i.ahb, splat (i1 true)
  %i.ahd = select <8 x i1> %i.afg, <8 x i1> %i.ahc, <8 x i1> %i.aex ; 2 uses
  %i.ahe = xor <8 x i1> %i.afc, splat (i1 true)
  %i.ahf = lshr <8 x i32> %broadcast.splat523, %i.afb
  %i.ahg = and <8 x i32> %i.ahf, splat (i32 3)
  %i.ahh = icmp eq <8 x i32> %i.ahg, splat (i32 2) ; 2 uses
  %i.ahi = select <8 x i1> %i.ahd, <8 x i1> %i.ahh, <8 x i1> zeroinitializer ; 2 uses
  %i.ahj = lshr <8 x i32> %broadcast.splat523, %i.afn
  %i.ahk = and <8 x i32> %i.ahj, splat (i32 3)
  %i.ahl = icmp eq <8 x i32> %i.ahk, splat (i32 2) ; 2 uses
  %i.ahm = xor <8 x i1> %i.ahl, splat (i1 true)
  %i.ahn = select <8 x i1> %i.ahi, <8 x i1> %i.ahm, <8 x i1> zeroinitializer
  %i.aho = xor <8 x i1> %i.ahh, splat (i1 true)
  %9 = or <8 x i1> %i.ahn, %i.aho
  %10 = select <8 x i1> %i.ahd, <8 x i1> %9, <8 x i1> zeroinitializer ; 2 uses
  %i.ahp = lshr <8 x i32> %broadcast.splat523, %i.afx
  %i.ahq = and <8 x i32> %i.ahp, splat (i32 3)
  %i.ahr = icmp eq <8 x i32> %i.ahq, splat (i32 2) ; 2 uses
  %i.ahs = select <8 x i1> %10, <8 x i1> %i.ahr, <8 x i1> zeroinitializer ; 2 uses
  %i.aht = lshr <8 x i32> %broadcast.splat523, %i.agf
  %i.ahu = and <8 x i32> %i.aht, splat (i32 3)
  %i.ahv = icmp eq <8 x i32> %i.ahu, splat (i32 2) ; 2 uses
  %i.ahw = xor <8 x i1> %i.ahr, splat (i1 true)
  %i.ahx = xor <8 x i1> %i.ahv, splat (i1 true)
  %i.ahy = select <8 x i1> %i.ahs, <8 x i1> %i.ahx, <8 x i1> zeroinitializer
  %i.ahz = or <8 x i1> %i.ahy, %i.ahw
  %11 = select <8 x i1> %10, <8 x i1> %i.ahz, <8 x i1> zeroinitializer
  %i.aia = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat531
  %i.aib = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat531
  %i.aic = select <8 x i1> %i.aia, <8 x i1> splat (i1 true), <8 x i1> %i.aib
  %i.aid = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load544, %broadcast.splat531
  %i.aie = select <8 x i1> %i.aic, <8 x i1> splat (i1 true), <8 x i1> %i.aid
  %i.aif = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat531
  %i.aig = select <8 x i1> %i.aie, <8 x i1> splat (i1 true), <8 x i1> %i.aif
  %i.aih = select <8 x i1> %i.ahs, <8 x i1> %i.ahv, <8 x i1> zeroinitializer ; 2 uses
  %i.aii = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat531
  %i.aij = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat531
  %i.aik = select <8 x i1> %i.aii, <8 x i1> splat (i1 true), <8 x i1> %i.aij
  %i.ail = select <8 x i1> %i.ahi, <8 x i1> %i.ahl, <8 x i1> zeroinitializer ; 2 uses
  %i.aim = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat531
  %i.ain = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat531
  %i.aio = select <8 x i1> %i.aim, <8 x i1> splat (i1 true), <8 x i1> %i.ain
  %i.aip = select <8 x i1> %i.afg, <8 x i1> %i.ahb, <8 x i1> zeroinitializer ; 5 uses
  %i.aiq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat531
  %i.air = zext nneg <8 x i32> %i.adn to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.k, <8 x i64> %i.air
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.adu, <8 x float> poison), !tbaa !12, !noalias !429
  %i.ais = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %wide.masked.gather ; 4 uses
  %i.ait = zext <8 x i1> %i.ais to <8 x i32>      ; 3 uses
  %not. = xor <8 x i1> %i.aip, splat (i1 true)
  %i.aiu = select <8 x i1> %not., <8 x i1> %i.aex, <8 x i1> zeroinitializer
  %i.aiv = select <8 x i1> %i.adu, <8 x i1> splat (i1 true), <8 x i1> %i.aiu
  %predphi557 = select nsz <8 x i1> %i.aiv, <8 x float> %wide.load, <8 x float> %predphi551 ; 3 uses
  %i.aiw = select <8 x i1> %i.aip, <8 x i1> splat (i1 true), <8 x i1> %i.aex
  %not.595 = xor <8 x i1> %i.aiw, splat (i1 true)
  %i.aix = select <8 x i1> %not.595, <8 x i1> %i.afc, <8 x i1> zeroinitializer
  %i.aiy = select <8 x i1> %i.adu, <8 x i1> splat (i1 true), <8 x i1> %i.aix
  %predphi559 = select nsz <8 x i1> %i.aiy, <8 x float> %wide.load, <8 x float> %i.aeo ; 3 uses
  %predphi560 = select nsz <8 x i1> %11, <8 x float> %i.agm, <8 x float> %wide.load
  %predphi561 = select nsz <8 x i1> %i.aih, <8 x float> %i.agu, <8 x float> %predphi560
  %predphi562 = select nsz <8 x i1> %i.ail, <8 x float> %i.agx, <8 x float> %predphi561 ; 3 uses
  %i.aiz = xor <8 x i1> %i.aex, splat (i1 true)
  %i.aja = select <8 x i1> %i.aip, <8 x i1> splat (i1 true), <8 x i1> %i.aiz
  %predphi563.v = select <8 x i1> %i.aja, <8 x i1> %i.aha, <8 x i1> %i.aey ; 2 uses
  %predphi563 = zext <8 x i1> %predphi563.v to <8 x i32>
  %predphi564 = select <8 x i1> %i.adu, <8 x i32> %i.ait, <8 x i32> %predphi563
  %i.ajb = select <8 x i1> %i.aip, <8 x i1> splat (i1 true), <8 x i1> %i.aex
  %i.ajc = select <8 x i1> %i.ajb, <8 x i1> splat (i1 true), <8 x i1> %i.ahe
  %predphi565.v = select <8 x i1> %i.ajc, <8 x i1> %i.aev, <8 x i1> %i.afd ; 2 uses
  %predphi565 = zext <8 x i1> %predphi565.v to <8 x i32>
  %predphi566 = select <8 x i1> %i.adu, <8 x i32> %i.ait, <8 x i32> %predphi565
  %predphi567.v = select <8 x i1> %i.aih, <8 x i1> %i.aik, <8 x i1> %i.aig
  %predphi568.v = select <8 x i1> %i.ail, <8 x i1> %i.aio, <8 x i1> %predphi567.v
  %predphi569.v = select <8 x i1> %i.aip, <8 x i1> %i.aiq, <8 x i1> %predphi568.v ; 2 uses
  %predphi569 = zext <8 x i1> %predphi569.v to <8 x i32>
  %predphi570 = select <8 x i1> %i.adu, <8 x i32> %i.ait, <8 x i32> %predphi569
  %i.ajd = fmul reassoc nsz arcp contract afn <8 x float> %predphi557, %predphi557
  %i.aje = fmul reassoc nsz arcp contract afn <8 x float> %predphi559, %predphi559
  %i.ajf = fadd reassoc nsz arcp contract afn <8 x float> %i.aje, %i.ajd
  %i.ajg = fmul reassoc nsz arcp contract afn <8 x float> %predphi562, %predphi562
  %i.ajh = fadd reassoc nsz arcp contract afn <8 x float> %i.ajf, %i.ajg
  %i.aji = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ajh)
  %i.ajj = uitofp nneg <8 x i32> %predphi570 to <8 x float>
  %i.ajk = select <8 x i1> %i.adu, <8 x i1> %i.ais, <8 x i1> %predphi563.v
  %i.ajl = select <8 x i1> %i.adu, <8 x i1> %i.ais, <8 x i1> %predphi565.v
  %i.ajm = select <8 x i1> %i.ajk, <8 x i1> splat (i1 true), <8 x i1> %i.ajl
  %i.ajn = select <8 x i1> %i.adu, <8 x i1> %i.ais, <8 x i1> %predphi569.v
  %i.ajo = select <8 x i1> %i.ajm, <8 x i1> splat (i1 true), <8 x i1> %i.ajn
  %i.ajp = select <8 x i1> %i.ajo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajq = shufflevector <8 x i32> %predphi564, <8 x i32> %predphi566, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajr = uitofp nneg <16 x i32> %i.ajq to <16 x float>
  %i.ajs = shufflevector <8 x float> %i.ajj, <8 x float> %i.ajp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ajr, <16 x float> %i.ajs, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.adh, align 4, !tbaa !12, !alias.scope !427, !noalias !423
  %i.ajt = fmul reassoc nsz arcp contract afn <8 x float> %predphi557, %i.aca
  %i.aju = shl i64 %i.ado, 4
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.aju
  %i.ajw = fmul reassoc nsz arcp contract afn <8 x float> %predphi559, %i.acb
  %i.ajx = fmul reassoc nsz arcp contract afn <8 x float> %predphi562, %i.acc
  %i.ajy = shufflevector <8 x float> %i.ajt, <8 x float> %i.ajw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajz = shufflevector <8 x float> %i.ajx, <8 x float> %i.aji, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aka = shufflevector <16 x float> %i.ajy, <16 x float> %i.ajz, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec571 = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.aka, <32 x float> zeroinitializer)
  store <32 x float> %interleaved.vec571, ptr %i.ajv, align 4, !tbaa !12, !alias.scope !426, !noalias !423
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i64> %vec.ind, splat (i64 8)
  %i.akb = icmp eq i64 %index.next, %n.vec
  br i1 %i.akb, label %middle.block, label %vector.body, !llvm.loop !407

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
  %i.akc = shl i64 %.0190240.i.i, 4
  %scevgep.i.i = getelementptr i8, ptr %i.adc, i64 %i.akc ; 4 uses
  %i.akd = and i64 %.0190240.i.i, 1               ; 5 uses
  %i.ake = or disjoint i64 %i.akd, %i.acn
  %.tr.i.i.i = trunc nuw nsw i64 %i.ake to i32
  %i.akf = shl nuw nsw i32 %.tr.i.i.i, 1
  %i.akg = lshr i32 %i.zw, %i.akf
  %i.akh = and i32 %i.akg, 3                      ; 4 uses
  %i.aki = add i64 %.0190240.i.i, %i.aco          ; 2 uses
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aki
  %i.akk = load float, ptr %i.akj, align 4, !tbaa !12, !alias.scope !428 ; 10 uses
  %i.akl = icmp eq i64 %.0190240.i.i, 0
  %or.cond.i.i = or i1 %i.acp, %i.akl
  %or.cond201.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.acq
  %i.akm = icmp eq i64 %.0190240.i.i, %i.aby
  %or.cond203.i.i = select i1 %or.cond201.i.i, i1 true, i1 %i.akm
  br i1 %or.cond203.i.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %scalar.ph
  %i.akn = zext nneg i32 %i.akh to i64
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.akn
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !12, !noalias !429
  %i.akq = fcmp reassoc nsz arcp contract afn ogt float %i.akk, %i.akp
  %i.akr = zext i1 %i.akq to i32                  ; 3 uses
  %.pre254.i.i = add nuw i64 %.0190240.i.i, 1
  br label %bb.fk

bb.eu:                                            ; preds = %scalar.ph
  %i.aks = add i64 %.0190240.i.i, -1              ; 5 uses
  %i.akt = add nuw i64 %.0190240.i.i, 1           ; 9 uses
  %i.aku = getelementptr [4 x i8], ptr %i.acv, i64 %.0190240.i.i
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !12, !alias.scope !428 ; 6 uses
  %i.akw = getelementptr [4 x i8], ptr %i.acw, i64 %.0190240.i.i
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !12, !alias.scope !428 ; 6 uses
  %i.aky = getelementptr [4 x i8], ptr %i.acx, i64 %i.aks
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !12, !alias.scope !428 ; 6 uses
  %i.ala = getelementptr [4 x i8], ptr %i.acx, i64 %i.akt
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !12, !alias.scope !428 ; 6 uses
  %i.alc = getelementptr [4 x i8], ptr %i.acv, i64 %i.akt
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !12, !alias.scope !428 ; 4 uses
  %i.ale = getelementptr [4 x i8], ptr %i.acv, i64 %i.aks
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !12, !alias.scope !428 ; 4 uses
  %i.alg = getelementptr [4 x i8], ptr %i.acw, i64 %i.akt
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !12, !alias.scope !428 ; 4 uses
  %i.ali = getelementptr [4 x i8], ptr %i.acw, i64 %i.aks
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !12, !alias.scope !428 ; 4 uses
  %i.alk = icmp eq i32 %i.akh, 1
  br i1 %i.alk, label %.thread.i.i, label %bb.ev

.thread.i.i:                                      ; preds = %bb.eu
  %i.all = fcmp reassoc nsz arcp contract afn ogt float %i.akk, %i.zp
  %i.alm = zext i1 %i.all to i32
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aln = fadd reassoc nsz arcp contract afn float %i.akx, %i.akv
  %i.alo = fadd reassoc nsz arcp contract afn float %i.aln, %i.akz
  %i.alp = fadd reassoc nsz arcp contract afn float %i.alo, %i.alb
  %i.alq = fmul reassoc nsz arcp contract afn float %i.alp, 2.500000e-01 ; 2 uses
  %i.alr = insertelement <4 x float> poison, float %i.akv, i64 0
  %i.als = insertelement <4 x float> %i.alr, float %i.akx, i64 1
  %i.alt = insertelement <4 x float> %i.als, float %i.alb, i64 2
  %i.alu = insertelement <4 x float> %i.alt, float %i.akz, i64 3
  %i.alv = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.alu, %i.ace
  %i.alw = freeze <4 x i1> %i.alv
  %i.alx = bitcast <4 x i1> %i.alw to i4
  %i.aly = icmp ne i4 %i.alx, 0
  %i.alz = zext i1 %i.aly to i32                  ; 2 uses
  %i.ama = icmp eq i32 %i.akh, 0
  br i1 %i.ama, label %.thread224.i.i, label %bb.ew

.thread224.i.i:                                   ; preds = %bb.ev
  %i.amb = fcmp reassoc nsz arcp contract afn ogt float %i.akk, %i.zl
  %i.amc = zext i1 %i.amb to i32
  %.pre255.i.i = or disjoint i64 %i.akd, %i.acz
  %.pre257.i.i = trunc nuw nsw i64 %.pre255.i.i to i32
  %.pre258.i.i = shl nuw nsw i32 %.pre257.i.i, 1
  br label %bb.fe

bb.ew:                                            ; preds = %bb.ev, %.thread.i.i
  %.0180223.i.i = phi i32 [ %i.alm, %.thread.i.i ], [ %i.alz, %bb.ev ] ; 2 uses
  %.0186221.i.i = phi float [ %i.akk, %.thread.i.i ], [ %i.alq, %bb.ev ] ; 2 uses
  %i.amd = or disjoint i64 %i.akd, %i.acz
  %.tr.i210.i.i = trunc nuw nsw i64 %i.amd to i32
  %i.ame = shl nuw nsw i32 %.tr.i210.i.i, 1       ; 2 uses
  %i.amf = shl nuw i32 3, %i.ame
  %i.amg = and i32 %i.amf, %i.zw
  %i.amh = icmp eq i32 %i.amg, 0
  br i1 %i.amh, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.ami = or disjoint i64 %i.akd, %i.adb
  %.tr.i211.i.i = trunc nuw nsw i64 %i.ami to i32
  %i.amj = shl nuw nsw i32 %.tr.i211.i.i, 1
  %i.amk = shl nuw i32 3, %i.amj
  %i.aml = and i32 %i.amk, %i.zw
  %i.amm = icmp eq i32 %i.aml, 0
  br i1 %i.amm, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.amn = fadd reassoc nsz arcp contract afn float %i.akx, %i.akv
  %i.amo = fmul reassoc nsz arcp contract afn float %i.amn, 5.000000e-01
  %i.amp = fcmp reassoc nsz arcp contract afn ogt float %i.akv, %i.zl
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %i.amq = and i64 %i.aks, 1
  %i.amr = or disjoint i64 %i.amq, %i.acn
  %.tr.i212.i.i = trunc nuw nsw i64 %i.amr to i32
  %i.ams = shl nuw nsw i32 %.tr.i212.i.i, 1
  %i.amt = shl nuw i32 3, %i.ams
  %i.amu = and i32 %i.amt, %i.zw
  %i.amv = icmp eq i32 %i.amu, 0
  br i1 %i.amv, label %bb.fa, label %._crit_edge249.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.amw = and i64 %i.akt, 1
  %i.amx = or disjoint i64 %i.amw, %i.acn
  %.tr.i213.i.i = trunc nuw nsw i64 %i.amx to i32
  %i.amy = shl nuw nsw i32 %.tr.i213.i.i, 1
  %i.amz = shl nuw i32 3, %i.amy
  %i.ana = and i32 %i.amz, %i.zw
  %i.anb = icmp eq i32 %i.ana, 0
  br i1 %i.anb, label %bb.fb, label %._crit_edge249.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.anc = fadd reassoc nsz arcp contract afn float %i.alb, %i.akz
  %i.and = fmul reassoc nsz arcp contract afn float %i.anc, 5.000000e-01
  %i.ane = fcmp reassoc nsz arcp contract afn ogt float %i.akz, %i.zl
  br label %bb.fc

._crit_edge249.i.i:                               ; preds = %bb.ez, %bb.fa
  %i.anf = fadd reassoc nsz arcp contract afn float %i.alf, %i.ald
  %i.ang = fadd reassoc nsz arcp contract afn float %i.anf, %i.alh
  %i.anh = fadd reassoc nsz arcp contract afn float %i.ang, %i.alj
  %i.ani = fmul reassoc nsz arcp contract afn float %i.anh, 2.500000e-01
  %i.anj = fcmp reassoc nsz arcp contract afn ogt float %i.alf, %i.zl
end_hunk_0
