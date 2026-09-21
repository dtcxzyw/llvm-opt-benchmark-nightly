Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@process:bb.a
  %i.zd = add nsw i32 %.0120188.i337, -1
  %.not141.i350 = icmp eq i32 %.0120188.i337, 0
  br i1 %.not141.i350, label %interpolate_color.exit354.loopexit, label %.peel.next, !llvm.loop !399

interpolate_color.exit354.loopexit:               ; preds = %.sink.split.i, %.sink.split.i.peel
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %i.ol
  br i1 %exitcond425.not, label %.loopexit381, label %.lr.ph.i316

.loopexit381:                                     ; preds = %interpolate_color.exit354.loopexit, %.lr.ph403, %.lr.ph394, %.preheader382, %.lr.ph399, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  br label %bb.fq

bb.ed:                                            ; preds = %bb.be
  %i.ze = icmp eq i32 %i.o, 9
  br i1 %i.ze, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  tail call fastcc void @process_lch_xtrans(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %i.bn)
  br label %bb.fq

bb.ef:                                            ; preds = %bb.ed
  %.val292 = load i32, ptr %i.n, align 4, !tbaa !80
  tail call fastcc void @process_lch_bayer(i32 %.val292, ptr noundef %2, ptr noundef %3, ptr noundef %5, float noundef %i.bn)
  br label %bb.fq

bb.eg:                                            ; preds = %bb.be
  br i1 %or.cond3, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.zf = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !94 ; 2 uses
  %.not278 = icmp eq i32 %i.zg, 4
  %spec.select = select i1 %.not278, i32 0, i32 %i.zg
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.zh = phi i32 [ 0, %bb.eg ], [ %spec.select, %bb.eh ]
  %i.zi = tail call fastcc ptr @_process_opposed(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 1, i32 noundef 1, float noundef %i.bn) ; 3 uses
  %.not279 = icmp eq ptr %i.zi, null
  br i1 %.not279, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call fastcc void @_process_segmentation(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.q, i32 noundef %i.zh, ptr noundef %i.zi)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  tail call void @free(ptr noundef %i.zi) #33
  br label %bb.fq

bb.el:                                            ; preds = %bb.be
  tail call fastcc void @process_clip(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %i.bn)
  br label %bb.fq

bb.em:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  %i.zj = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.zk = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.zl = load float, ptr %i.zk, align 8, !tbaa !12 ; 2 uses
  %i.zm = load <2 x float>, ptr %i.zj, align 16, !tbaa !12
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zl, %i.bn ; 10 uses
  %i.zo = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.zp = shufflevector <4 x float> %i.zo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zq = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.zl, i64 2
  %i.zr = shufflevector <2 x float> %i.zm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zs = shufflevector <4 x float> %i.zr, <4 x float> %i.zq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.zt = fmul reassoc nsz arcp contract afn <4 x float> %i.zp, %i.zs ; 10 uses
  store <4 x float> %i.zt, ptr %i.k, align 16, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.zu = load ptr, ptr %i.p, align 16, !tbaa !53, !noalias !423 ; 4 uses
  %i.zv = load i32, ptr %i.n, align 4, !tbaa !80, !noalias !423 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_laplacian_bayer.wb, i64 16, i1 false), !noalias !423
  %i.zw = load ptr, ptr %i.l, align 8, !tbaa !56, !noalias !423 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 256
  %i.zy = load float, ptr %i.zx, align 16, !tbaa !12, !noalias !423 ; 3 uses
  %i.zz = fcmp reassoc nsz arcp contract afn une float %i.zy, 0.000000e+00
  br i1 %i.zz, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store float %i.zy, ptr %i.a, align 16, !tbaa !12, !noalias !423
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 260
  %i.aab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aac = load <2 x float>, ptr %i.aaa, align 4, !tbaa !12, !noalias !423 ; 2 uses
  store <2 x float> %i.aac, ptr %i.aab, align 4, !tbaa !12, !noalias !423
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.aad = phi float [ %i.zy, %bb.en ], [ 1.000000e+00, %bb.em ] ; 2 uses
  %i.aae = phi <2 x float> [ %i.aac, %bb.en ], [ splat (float 1.000000e+00), %bb.em ] ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aag = load <2 x i32>, ptr %i.aaf, align 4, !tbaa !15, !noalias !423 ; 3 uses
  %i.aah = extractelement <2 x i32> %i.aag, i64 0 ; 8 uses
  %i.aai = extractelement <2 x i32> %i.aag, i64 1 ; 5 uses
  %i.aaj = sext i32 %i.aai to i64                 ; 8 uses
  %i.aak = sext i32 %i.aah to i64                 ; 17 uses
  %i.aal = lshr i64 %i.aaj, 2                     ; 5 uses
  %i.aam = lshr i64 %i.aak, 2                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33, !noalias !423
  %i.aan = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, i32 noundef 1048580, ptr noundef nonnull %i.b, i32 noundef 1048580, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null) #33, !noalias !423
  %.not.i355 = icmp eq i32 %i.aan, 0
  br i1 %.not.i355, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !424, !noalias !423
  %i.aaq = sext i32 %i.aap to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.aaq, ptr noundef nonnull %4, ptr noundef %5) #33
  br label %process_laplacian_bayer.exit

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !423
  store i32 0, ptr %6, align 4, !tbaa !74, !noalias !423
  %i.aar = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.aar, align 4, !tbaa !75, !noalias !423
  %i.aas = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aat = ashr <2 x i32> %i.aag, splat (i32 2)
  store <2 x i32> %i.aat, ptr %i.aas, align 4, !tbaa !15, !noalias !423
  %i.aau = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float 0.000000e+00, ptr %i.aau, align 4, !tbaa !38, !noalias !423
  %i.aav = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 1048580, ptr noundef nonnull %i.d, i32 noundef 1048580, ptr noundef nonnull %i.e, i32 noundef 1048580, ptr noundef nonnull %i.f, i32 noundef 1048580, ptr noundef nonnull %i.g, i32 noundef 1048580, ptr noundef nonnull %i.h, i32 noundef 1048580, ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef null) #33, !noalias !423
  %.not84.i = icmp eq i32 %i.aav, 0
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
  %7 = extractelement <4 x float> %i.zt, i64 1    ; 4 uses
  %i.acc = extractelement <4 x float> %i.zt, i64 0
  %i.acd = extractelement <4 x float> %i.zt, i64 1
  %i.ace = extractelement <4 x float> %i.zt, i64 0 ; 3 uses
  %i.acf = extractelement <4 x float> %i.zt, i64 0
  %i.acg = extractelement <4 x float> %i.zt, i64 0
  %i.ach = extractelement <4 x float> %i.zt, i64 0
  %i.aci = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aad, i64 0
  %i.acj = shufflevector <2 x float> %i.aae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ack = shufflevector <4 x float> %i.aci, <4 x float> %i.acj, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.acl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ack
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.0241.i.i = phi i64 [ %i.acu, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ] ; 7 uses
  %i.acm = mul i64 %i.aby, %.0241.i.i
  %i.acn = shl i64 %.0241.i.i, 1
  %i.aco = and i64 %i.acn, 14                     ; 6 uses
  %i.acp = mul i64 %.0241.i.i, %i.aak             ; 3 uses
  %i.acq = icmp eq i64 %.0241.i.i, 0              ; 2 uses
  %i.acr = icmp eq i64 %.0241.i.i, %i.abw         ; 2 uses
  %i.acs = add i64 %.0241.i.i, -1                 ; 2 uses
  %i.act = mul i64 %i.acs, %i.aak
  %i.acu = add nuw i64 %.0241.i.i, 1              ; 4 uses
  %i.acv = mul i64 %i.acu, %i.aak
  %i.acw = getelementptr [4 x i8], ptr %2, i64 %i.act ; 6 uses
  %i.acx = getelementptr [4 x i8], ptr %2, i64 %i.acv ; 6 uses
  %i.acy = getelementptr [4 x i8], ptr %2, i64 %i.acp ; 4 uses
  %i.acz = shl i64 %i.acs, 1
  %i.ada = and i64 %i.acz, 14                     ; 3 uses
  %i.adb = shl i64 %i.acu, 1
  %i.adc = and i64 %i.adb, 14                     ; 3 uses
  %i.add = getelementptr i8, ptr %i.abv, i64 %i.acm ; 4 uses
  %i.ade = getelementptr i8, ptr %i.add, i64 %mul.result
  %i.adf = icmp ult ptr %i.ade, %i.add
  %i.adg = or i1 %i.adf, %mul.overflow
  %or.cond610 = select i1 %min.iters.check, i1 true, i1 %i.adg
  br i1 %or.cond610, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.aco, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert513 = insertelement <8 x i1> poison, i1 %i.acq, i64 0
  %broadcast.splat514 = shufflevector <8 x i1> %broadcast.splatinsert513, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert515 = insertelement <8 x i1> poison, i1 %i.acr, i64 0
  %broadcast.splat516 = shufflevector <8 x i1> %broadcast.splatinsert515, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert517 = insertelement <8 x i64> poison, i64 %i.ada, i64 0
  %broadcast.splat518 = shufflevector <8 x i64> %broadcast.splatinsert517, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <8 x i64> poison, i64 %i.adc, i64 0
  %broadcast.splat520 = shufflevector <8 x i64> %broadcast.splatinsert519, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %i.adh = shl i64 %index, 4
  %i.adi = getelementptr i8, ptr %i.add, i64 %i.adh
  %i.adj = and <8 x i64> %vec.ind, splat (i64 1)  ; 3 uses
  %i.adk = or disjoint <8 x i64> %i.adj, %broadcast.splat
  %i.adl = trunc nuw nsw <8 x i64> %i.adk to <8 x i32>
  %i.adm = shl nuw nsw <8 x i32> %i.adl, splat (i32 1)
  %i.adn = lshr <8 x i32> %broadcast.splat522, %i.adm
  %i.ado = and <8 x i32> %i.adn, splat (i32 3)    ; 4 uses
  %i.adp = add i64 %index, %i.acp                 ; 2 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adp
  %wide.load = load <8 x float>, ptr %i.adq, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 7 uses
  %i.adr = icmp eq <8 x i64> %vec.ind, zeroinitializer
  %i.ads = or <8 x i1> %broadcast.splat514, %i.adr
  %i.adt = select <8 x i1> %i.ads, <8 x i1> splat (i1 true), <8 x i1> %broadcast.splat516
  %i.adu = icmp eq <8 x i64> %vec.ind, %broadcast.splat524
  %i.adv = select <8 x i1> %i.adt, <8 x i1> splat (i1 true), <8 x i1> %i.adu ; 11 uses
  %i.adw = xor <8 x i1> %i.adv, splat (i1 true)   ; 9 uses
  %i.adx = add <8 x i64> %vec.ind, splat (i64 -1) ; 2 uses
  %i.ady = extractelement <8 x i64> %i.adx, i64 0 ; 3 uses
  %i.adz = add <8 x i64> %vec.ind, splat (i64 1)  ; 2 uses
  %i.aea = extractelement <8 x i64> %i.adz, i64 0 ; 3 uses
  %i.aeb = getelementptr [4 x i8], ptr %i.acw, i64 %index
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeb, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.aec = getelementptr [4 x i8], ptr %i.acx, i64 %index
  %wide.masked.load537 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aec, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.aed = getelementptr [4 x i8], ptr %i.acy, i64 %i.ady
  %wide.masked.load538 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aed, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 5 uses
  %i.aee = getelementptr [4 x i8], ptr %i.acy, i64 %i.aea
  %wide.masked.load539 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aee, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 5 uses
  %i.aef = getelementptr [4 x i8], ptr %i.acw, i64 %i.aea
  %wide.masked.load540 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aef, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aeg = getelementptr [4 x i8], ptr %i.acw, i64 %i.ady
  %wide.masked.load541 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeg, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aeh = getelementptr [4 x i8], ptr %i.acx, i64 %i.aea
  %wide.masked.load542 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeh, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aei = getelementptr [4 x i8], ptr %i.acx, i64 %i.ady
  %wide.masked.load543 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aei, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aej = icmp eq <8 x i32> %i.ado, splat (i32 1) ; 2 uses
  %i.aek = select <8 x i1> %i.adv, <8 x i1> splat (i1 true), <8 x i1> %i.aej ; 2 uses
  %i.ael = xor <8 x i1> %i.aek, splat (i1 true)
  %i.aem = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load537, %wide.masked.load ; 2 uses
  %i.aen = fadd reassoc nsz arcp contract afn <8 x float> %i.aem, %wide.masked.load538
  %i.aeo = fadd reassoc nsz arcp contract afn <8 x float> %i.aen, %wide.masked.load539
  %i.aep = fmul reassoc nsz arcp contract afn <8 x float> %i.aeo, splat (float 2.500000e-01)
  %i.aeq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat526
  %i.aer = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load537, %broadcast.splat526
  %i.aes = select <8 x i1> %i.aeq, <8 x i1> splat (i1 true), <8 x i1> %i.aer
  %i.aet = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat526
  %i.aeu = select <8 x i1> %i.aes, <8 x i1> splat (i1 true), <8 x i1> %i.aet
  %i.aev = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat526
  %i.aew = select <8 x i1> %i.aeu, <8 x i1> splat (i1 true), <8 x i1> %i.aev
  %i.aex = icmp eq <8 x i32> %i.ado, zeroinitializer ; 2 uses
  %i.aey = select <8 x i1> %i.ael, <8 x i1> %i.aex, <8 x i1> zeroinitializer ; 5 uses
  %i.aez = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat528
  %i.afa = or disjoint <8 x i64> %i.adj, %broadcast.splat518
  %i.afb = trunc nuw nsw <8 x i64> %i.afa to <8 x i32>
  %i.afc = shl nuw nsw <8 x i32> %i.afb, splat (i32 1) ; 2 uses
  %i.afd = select <8 x i1> %i.adw, <8 x i1> %i.aej, <8 x i1> zeroinitializer ; 3 uses
  %i.afe = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat526
  %i.aff = select <8 x i1> %i.aek, <8 x i1> splat (i1 true), <8 x i1> %i.aex
  %i.afg = xor <8 x i1> %i.aff, splat (i1 true)
  %i.afh = or <8 x i1> %i.afd, %i.afg             ; 4 uses
  %i.afi = shl nuw <8 x i32> splat (i32 3), %i.afc
  %i.afj = and <8 x i32> %i.afi, %broadcast.splat522
  %i.afk = icmp eq <8 x i32> %i.afj, zeroinitializer ; 2 uses
  %i.afl = select <8 x i1> %i.afh, <8 x i1> %i.afk, <8 x i1> zeroinitializer ; 2 uses
  %i.afm = or disjoint <8 x i64> %i.adj, %broadcast.splat520
  %i.afn = trunc nuw nsw <8 x i64> %i.afm to <8 x i32>
  %i.afo = shl nuw nsw <8 x i32> %i.afn, splat (i32 1) ; 2 uses
  %i.afp = shl nuw <8 x i32> splat (i32 3), %i.afo
  %i.afq = and <8 x i32> %i.afp, %broadcast.splat522
  %i.afr = icmp eq <8 x i32> %i.afq, zeroinitializer ; 2 uses
  %i.afs = xor <8 x i1> %i.afr, splat (i1 true)
  %i.aft = select <8 x i1> %i.afl, <8 x i1> %i.afs, <8 x i1> zeroinitializer
  %i.afu = xor <8 x i1> %i.afk, splat (i1 true)
  %i.afv = select <8 x i1> %i.afh, <8 x i1> %i.afu, <8 x i1> zeroinitializer
  %i.afw = or <8 x i1> %i.aft, %i.afv
  %i.afx = and <8 x i64> %i.adx, splat (i64 1)
  %i.afy = or disjoint <8 x i64> %i.afx, %broadcast.splat
  %i.afz = trunc nuw nsw <8 x i64> %i.afy to <8 x i32>
  %i.aga = shl nuw nsw <8 x i32> %i.afz, splat (i32 1) ; 2 uses
  %i.agb = shl nuw <8 x i32> splat (i32 3), %i.aga
  %i.agc = and <8 x i32> %i.agb, %broadcast.splat522
  %i.agd = icmp eq <8 x i32> %i.agc, zeroinitializer
  %i.age = select <8 x i1> %i.afw, <8 x i1> %i.agd, <8 x i1> zeroinitializer
  %i.agf = and <8 x i64> %i.adz, splat (i64 1)
  %i.agg = or disjoint <8 x i64> %i.agf, %broadcast.splat
  %i.agh = trunc nuw nsw <8 x i64> %i.agg to <8 x i32>
  %i.agi = shl nuw nsw <8 x i32> %i.agh, splat (i32 1) ; 2 uses
  %i.agj = shl nuw <8 x i32> splat (i32 3), %i.agi
  %i.agk = and <8 x i32> %i.agj, %broadcast.splat522
  %i.agl = icmp eq <8 x i32> %i.agk, zeroinitializer
  %i.agm = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load541, %wide.masked.load540
  %i.agn = fadd reassoc nsz arcp contract afn <8 x float> %i.agm, %wide.masked.load542
  %i.ago = fadd reassoc nsz arcp contract afn <8 x float> %i.agn, %wide.masked.load543
  %i.agp = fmul reassoc nsz arcp contract afn <8 x float> %i.ago, splat (float 2.500000e-01) ; 2 uses
  %i.agq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat528
  %i.agr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat528
  %i.ags = select <8 x i1> %i.agq, <8 x i1> splat (i1 true), <8 x i1> %i.agr
  %i.agt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat528
  %i.agu = select <8 x i1> %i.ags, <8 x i1> splat (i1 true), <8 x i1> %i.agt
  %i.agv = select <8 x i1> %i.age, <8 x i1> %i.agl, <8 x i1> zeroinitializer ; 3 uses
  %i.agw = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load539, %wide.masked.load538
  %i.agx = fmul reassoc nsz arcp contract afn <8 x float> %i.agw, splat (float 5.000000e-01) ; 2 uses
  %i.agy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat528
  %i.agz = select <8 x i1> %i.afl, <8 x i1> %i.afr, <8 x i1> zeroinitializer ; 3 uses
  %i.aha = fmul reassoc nsz arcp contract afn <8 x float> %i.aem, splat (float 5.000000e-01) ; 2 uses
  %i.ahb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat528
  %predphi545 = select <8 x i1> %i.agv, <8 x float> %wide.masked.load539, <8 x float> %wide.masked.load542
  %predphi546 = select <8 x i1> %i.agz, <8 x float> %wide.masked.load537, <8 x float> %predphi545
  %predphi547 = select <8 x i1> %i.agv, <8 x i1> %i.agy, <8 x i1> %i.agu
  %predphi548 = select <8 x i1> %i.agz, <8 x i1> %i.ahb, <8 x i1> %predphi547
  %predphi549 = select nsz <8 x i1> %i.agv, <8 x float> %i.agx, <8 x float> %i.agp
  %predphi550 = select nsz <8 x i1> %i.agz, <8 x float> %i.aha, <8 x float> %predphi549
  %i.ahc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi546, %broadcast.splat528
  %i.ahd = select <8 x i1> %predphi548, <8 x i1> splat (i1 true), <8 x i1> %i.ahc
  %i.ahe = icmp eq <8 x i32> %i.ado, splat (i32 2) ; 2 uses
  %i.ahf = xor <8 x i1> %i.ahe, splat (i1 true)
  %i.ahg = select <8 x i1> %i.afh, <8 x i1> %i.ahf, <8 x i1> %i.aey ; 2 uses
  %i.ahh = xor <8 x i1> %i.afd, splat (i1 true)
  %i.ahi = lshr <8 x i32> %broadcast.splat522, %i.afc
  %i.ahj = and <8 x i32> %i.ahi, splat (i32 3)
  %i.ahk = icmp eq <8 x i32> %i.ahj, splat (i32 2) ; 2 uses
  %i.ahl = select <8 x i1> %i.ahg, <8 x i1> %i.ahk, <8 x i1> zeroinitializer ; 2 uses
  %i.ahm = lshr <8 x i32> %broadcast.splat522, %i.afo
  %i.ahn = and <8 x i32> %i.ahm, splat (i32 3)
  %i.aho = icmp eq <8 x i32> %i.ahn, splat (i32 2) ; 2 uses
  %i.ahp = xor <8 x i1> %i.aho, splat (i1 true)
  %i.ahq = select <8 x i1> %i.ahl, <8 x i1> %i.ahp, <8 x i1> zeroinitializer
  %i.ahr = xor <8 x i1> %i.ahk, splat (i1 true)
  %i.ahs = select <8 x i1> %i.ahg, <8 x i1> %i.ahr, <8 x i1> zeroinitializer
  %i.aht = or <8 x i1> %i.ahq, %i.ahs             ; 2 uses
  %i.ahu = lshr <8 x i32> %broadcast.splat522, %i.aga
  %i.ahv = and <8 x i32> %i.ahu, splat (i32 3)
  %i.ahw = icmp eq <8 x i32> %i.ahv, splat (i32 2) ; 2 uses
  %i.ahx = select <8 x i1> %i.aht, <8 x i1> %i.ahw, <8 x i1> zeroinitializer ; 2 uses
  %i.ahy = lshr <8 x i32> %broadcast.splat522, %i.agi
  %i.ahz = and <8 x i32> %i.ahy, splat (i32 3)
  %i.aia = icmp eq <8 x i32> %i.ahz, splat (i32 2) ; 2 uses
  %i.aib = xor <8 x i1> %i.ahw, splat (i1 true)
  %i.aic = select <8 x i1> %i.aht, <8 x i1> %i.aib, <8 x i1> zeroinitializer
  %i.aid = xor <8 x i1> %i.aia, splat (i1 true)
  %i.aie = select <8 x i1> %i.ahx, <8 x i1> %i.aid, <8 x i1> zeroinitializer
  %i.aif = or <8 x i1> %i.aic, %i.aie
  %i.aig = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat530
  %i.aih = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat530
  %i.aii = select <8 x i1> %i.aig, <8 x i1> splat (i1 true), <8 x i1> %i.aih
  %i.aij = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat530
  %i.aik = select <8 x i1> %i.aii, <8 x i1> splat (i1 true), <8 x i1> %i.aij
  %i.ail = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat530
  %i.aim = select <8 x i1> %i.aik, <8 x i1> splat (i1 true), <8 x i1> %i.ail
  %i.ain = select <8 x i1> %i.ahx, <8 x i1> %i.aia, <8 x i1> zeroinitializer ; 2 uses
  %i.aio = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat530
  %i.aip = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat530
  %i.aiq = select <8 x i1> %i.aio, <8 x i1> splat (i1 true), <8 x i1> %i.aip
  %i.air = select <8 x i1> %i.ahl, <8 x i1> %i.aho, <8 x i1> zeroinitializer ; 2 uses
  %i.ais = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat530
  %i.ait = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load537, %broadcast.splat530
  %i.aiu = select <8 x i1> %i.ais, <8 x i1> splat (i1 true), <8 x i1> %i.ait
  %i.aiv = select <8 x i1> %i.afh, <8 x i1> %i.ahe, <8 x i1> zeroinitializer ; 5 uses
  %i.aiw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat530
  %i.aix = zext nneg <8 x i32> %i.ado to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.k, <8 x i64> %i.aix
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.adv, <8 x float> poison), !tbaa !12, !noalias !430
  %i.aiy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %wide.masked.gather ; 4 uses
  %i.aiz = zext <8 x i1> %i.aiy to <8 x i32>      ; 3 uses
  %not. = xor <8 x i1> %i.aiv, splat (i1 true)
  %i.aja = select <8 x i1> %not., <8 x i1> %i.aey, <8 x i1> zeroinitializer
  %i.ajb = select <8 x i1> %i.adv, <8 x i1> splat (i1 true), <8 x i1> %i.aja
  %predphi556 = select nsz <8 x i1> %i.ajb, <8 x float> %wide.load, <8 x float> %predphi550 ; 3 uses
  %i.ajc = select <8 x i1> %i.aiv, <8 x i1> splat (i1 true), <8 x i1> %i.aey
  %not.594 = xor <8 x i1> %i.ajc, splat (i1 true)
  %i.ajd = select <8 x i1> %not.594, <8 x i1> %i.afd, <8 x i1> zeroinitializer
  %i.aje = select <8 x i1> %i.adv, <8 x i1> splat (i1 true), <8 x i1> %i.ajd
  %predphi558 = select nsz <8 x i1> %i.aje, <8 x float> %wide.load, <8 x float> %i.aep ; 3 uses
  %predphi559 = select nsz <8 x i1> %i.aif, <8 x float> %i.agp, <8 x float> %wide.load
  %predphi560 = select nsz <8 x i1> %i.ain, <8 x float> %i.agx, <8 x float> %predphi559
  %predphi561 = select nsz <8 x i1> %i.air, <8 x float> %i.aha, <8 x float> %predphi560 ; 3 uses
  %i.ajf = xor <8 x i1> %i.aey, splat (i1 true)
  %i.ajg = select <8 x i1> %i.aiv, <8 x i1> splat (i1 true), <8 x i1> %i.ajf
  %predphi562.v = select <8 x i1> %i.ajg, <8 x i1> %i.ahd, <8 x i1> %i.aez ; 2 uses
  %predphi562 = zext <8 x i1> %predphi562.v to <8 x i32>
  %predphi563 = select <8 x i1> %i.adv, <8 x i32> %i.aiz, <8 x i32> %predphi562
  %i.ajh = select <8 x i1> %i.aiv, <8 x i1> splat (i1 true), <8 x i1> %i.aey
  %i.aji = select <8 x i1> %i.ajh, <8 x i1> splat (i1 true), <8 x i1> %i.ahh
  %predphi564.v = select <8 x i1> %i.aji, <8 x i1> %i.aew, <8 x i1> %i.afe ; 2 uses
  %predphi564 = zext <8 x i1> %predphi564.v to <8 x i32>
  %predphi565 = select <8 x i1> %i.adv, <8 x i32> %i.aiz, <8 x i32> %predphi564
  %predphi566.v = select <8 x i1> %i.ain, <8 x i1> %i.aiq, <8 x i1> %i.aim
  %predphi567.v = select <8 x i1> %i.air, <8 x i1> %i.aiu, <8 x i1> %predphi566.v
  %predphi568.v = select <8 x i1> %i.aiv, <8 x i1> %i.aiw, <8 x i1> %predphi567.v ; 2 uses
  %predphi568 = zext <8 x i1> %predphi568.v to <8 x i32>
  %predphi569 = select <8 x i1> %i.adv, <8 x i32> %i.aiz, <8 x i32> %predphi568
  %i.ajj = fmul reassoc nsz arcp contract afn <8 x float> %predphi556, %predphi556
  %i.ajk = fmul reassoc nsz arcp contract afn <8 x float> %predphi558, %predphi558
  %i.ajl = fadd reassoc nsz arcp contract afn <8 x float> %i.ajk, %i.ajj
  %i.ajm = fmul reassoc nsz arcp contract afn <8 x float> %predphi561, %predphi561
  %i.ajn = fadd reassoc nsz arcp contract afn <8 x float> %i.ajl, %i.ajm
  %i.ajo = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ajn)
  %i.ajp = uitofp nneg <8 x i32> %predphi569 to <8 x float>
  %i.ajq = select <8 x i1> %i.adv, <8 x i1> %i.aiy, <8 x i1> %predphi562.v
  %i.ajr = select <8 x i1> %i.adv, <8 x i1> %i.aiy, <8 x i1> %predphi564.v
  %i.ajs = select <8 x i1> %i.ajq, <8 x i1> splat (i1 true), <8 x i1> %i.ajr
  %i.ajt = select <8 x i1> %i.adv, <8 x i1> %i.aiy, <8 x i1> %predphi568.v
  %i.aju = select <8 x i1> %i.ajs, <8 x i1> splat (i1 true), <8 x i1> %i.ajt
  %i.ajv = select <8 x i1> %i.aju, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajw = shufflevector <8 x i32> %predphi563, <8 x i32> %predphi565, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajx = uitofp nneg <16 x i32> %i.ajw to <16 x float>
  %i.ajy = shufflevector <8 x float> %i.ajp, <8 x float> %i.ajv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ajx, <16 x float> %i.ajy, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.adi, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %i.ajz = fmul reassoc nsz arcp contract afn <8 x float> %predphi556, %i.abz
  %i.aka = shl i64 %i.adp, 4
  %i.akb = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.aka
  %i.akc = fmul reassoc nsz arcp contract afn <8 x float> %predphi558, %i.aca
  %i.akd = fmul reassoc nsz arcp contract afn <8 x float> %predphi561, %i.acb
  %i.ake = shufflevector <8 x float> %i.ajz, <8 x float> %i.akc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akf = shufflevector <8 x float> %i.akd, <8 x float> %i.ajo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akg = shufflevector <16 x float> %i.ake, <16 x float> %i.akf, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec570 = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.akg, <32 x float> zeroinitializer)
  store <32 x float> %interleaved.vec570, ptr %i.akb, align 4, !tbaa !12, !alias.scope !426, !noalias !432
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i64> %vec.ind, splat (i64 8)
  %i.akh = icmp eq i64 %index.next, %n.vec
  br i1 %i.akh, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.0190240.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %bb.fk, %middle.block
  %exitcond245.not.i.i = icmp eq i64 %i.acu, %i.aaj
  br i1 %exitcond245.not.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.fk
  %.0190240.i.i = phi i64 [ %.pre-phi.i.i, %bb.fk ], [ %.0190240.i.i.ph, %scalar.ph.preheader ] ; 10 uses
  %i.aki = shl i64 %.0190240.i.i, 4
  %scevgep.i.i = getelementptr i8, ptr %i.add, i64 %i.aki ; 4 uses
  %i.akj = and i64 %.0190240.i.i, 1               ; 5 uses
  %i.akk = or disjoint i64 %i.akj, %i.aco
  %.tr.i.i.i = trunc nuw nsw i64 %i.akk to i32
  %i.akl = shl nuw nsw i32 %.tr.i.i.i, 1
  %i.akm = lshr i32 %i.zv, %i.akl
  %i.akn = and i32 %i.akm, 3                      ; 4 uses
  %i.ako = add i64 %.0190240.i.i, %i.acp          ; 2 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ako
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 10 uses
  %i.akr = icmp eq i64 %.0190240.i.i, 0
  %or.cond.i.i = or i1 %i.acq, %i.akr
  %or.cond201.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.acr
  %i.aks = icmp eq i64 %.0190240.i.i, %i.abx
  %or.cond203.i.i = select i1 %or.cond201.i.i, i1 true, i1 %i.aks
  br i1 %or.cond203.i.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %scalar.ph
  %i.akt = zext nneg i32 %i.akn to i64
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.akt
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !12, !noalias !430
  %i.akw = fcmp reassoc nsz arcp contract afn ogt float %i.akq, %i.akv
  %i.akx = zext i1 %i.akw to i32                  ; 3 uses
  %.pre254.i.i = add nuw i64 %.0190240.i.i, 1
  br label %bb.fk

bb.eu:                                            ; preds = %scalar.ph
  %i.aky = add i64 %.0190240.i.i, -1              ; 5 uses
  %i.akz = add nuw i64 %.0190240.i.i, 1           ; 9 uses
  %i.ala = getelementptr [4 x i8], ptr %i.acw, i64 %.0190240.i.i
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.alc = getelementptr [4 x i8], ptr %i.acx, i64 %.0190240.i.i
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.ale = getelementptr [4 x i8], ptr %i.acy, i64 %i.aky
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.alg = getelementptr [4 x i8], ptr %i.acy, i64 %i.akz
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.ali = getelementptr [4 x i8], ptr %i.acw, i64 %i.akz
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alk = getelementptr [4 x i8], ptr %i.acw, i64 %i.aky
  %i.all = load float, ptr %i.alk, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alm = getelementptr [4 x i8], ptr %i.acx, i64 %i.akz
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alo = getelementptr [4 x i8], ptr %i.acx, i64 %i.aky
  %i.alp = load float, ptr %i.alo, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alq = icmp eq i32 %i.akn, 1
  br i1 %i.alq, label %.thread.i.i, label %bb.ev

.thread.i.i:                                      ; preds = %bb.eu
  %i.alr = fcmp reassoc nsz arcp contract afn ogt float %i.akq, %i.acd
  %i.als = zext i1 %i.alr to i32
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.alt = fadd reassoc nsz arcp contract afn float %i.ald, %i.alb
  %i.alu = fadd reassoc nsz arcp contract afn float %i.alt, %i.alf
  %i.alv = fadd reassoc nsz arcp contract afn float %i.alu, %i.alh
  %i.alw = fmul reassoc nsz arcp contract afn float %i.alv, 2.500000e-01 ; 2 uses
  %8 = fcmp reassoc nsz arcp contract afn ogt float %i.alb, %7
  %9 = fcmp reassoc nsz arcp contract afn ogt float %i.ald, %7
  %or.cond204.i.i = select i1 %8, i1 true, i1 %9
  %10 = fcmp reassoc nsz arcp contract afn ogt float %i.alh, %7
  %or.cond205.i.i = select i1 %or.cond204.i.i, i1 true, i1 %10
  %11 = fcmp reassoc nsz arcp contract afn ogt float %i.alf, %7
  %narrow.i.i = select i1 %or.cond205.i.i, i1 true, i1 %11
  %i.alx = zext i1 %narrow.i.i to i32             ; 2 uses
  %i.aly = icmp eq i32 %i.akn, 0
  br i1 %i.aly, label %.thread224.i.i, label %bb.ew

.thread224.i.i:                                   ; preds = %bb.ev
  %i.alz = fcmp reassoc nsz arcp contract afn ogt float %i.akq, %i.acc
  %i.ama = zext i1 %i.alz to i32
  %.pre255.i.i = or disjoint i64 %i.akj, %i.ada
  %.pre257.i.i = trunc nuw nsw i64 %.pre255.i.i to i32
  %.pre258.i.i = shl nuw nsw i32 %.pre257.i.i, 1
  br label %bb.fe

bb.ew:                                            ; preds = %bb.ev, %.thread.i.i
  %.0180223.i.i = phi i32 [ %i.als, %.thread.i.i ], [ %i.alx, %bb.ev ] ; 2 uses
  %.0186221.i.i = phi float [ %i.akq, %.thread.i.i ], [ %i.alw, %bb.ev ] ; 2 uses
  %i.amb = or disjoint i64 %i.akj, %i.ada
  %.tr.i210.i.i = trunc nuw nsw i64 %i.amb to i32
  %i.amc = shl nuw nsw i32 %.tr.i210.i.i, 1       ; 2 uses
  %i.amd = shl nuw i32 3, %i.amc
  %i.ame = and i32 %i.amd, %i.zv
  %i.amf = icmp eq i32 %i.ame, 0
  br i1 %i.amf, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.amg = or disjoint i64 %i.akj, %i.adc
  %.tr.i211.i.i = trunc nuw nsw i64 %i.amg to i32
  %i.amh = shl nuw nsw i32 %.tr.i211.i.i, 1
  %i.ami = shl nuw i32 3, %i.amh
  %i.amj = and i32 %i.ami, %i.zv
  %i.amk = icmp eq i32 %i.amj, 0
  br i1 %i.amk, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.aml = fadd reassoc nsz arcp contract afn float %i.ald, %i.alb
  %i.amm = fmul reassoc nsz arcp contract afn float %i.aml, 5.000000e-01
  %i.amn = fcmp reassoc nsz arcp contract afn ogt float %i.alb, %i.acg
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %i.amo = and i64 %i.aky, 1
  %i.amp = or disjoint i64 %i.amo, %i.aco
  %.tr.i212.i.i = trunc nuw nsw i64 %i.amp to i32
  %i.amq = shl nuw nsw i32 %.tr.i212.i.i, 1
  %i.amr = shl nuw i32 3, %i.amq
  %i.ams = and i32 %i.amr, %i.zv
  %i.amt = icmp eq i32 %i.ams, 0
  br i1 %i.amt, label %bb.fa, label %._crit_edge249.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.amu = and i64 %i.akz, 1
  %i.amv = or disjoint i64 %i.amu, %i.aco
  %.tr.i213.i.i = trunc nuw nsw i64 %i.amv to i32
  %i.amw = shl nuw nsw i32 %.tr.i213.i.i, 1
  %i.amx = shl nuw i32 3, %i.amw
  %i.amy = and i32 %i.amx, %i.zv
  %i.amz = icmp eq i32 %i.amy, 0
  br i1 %i.amz, label %bb.fb, label %._crit_edge249.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.ana = fadd reassoc nsz arcp contract afn float %i.alh, %i.alf
  %i.anb = fmul reassoc nsz arcp contract afn float %i.ana, 5.000000e-01
  %i.anc = fcmp reassoc nsz arcp contract afn ogt float %i.alf, %i.acf
  br label %bb.fc

._crit_edge249.i.i:                               ; preds = %bb.ez, %bb.fa
  %i.and = fadd reassoc nsz arcp contract afn float %i.all, %i.alj
  %i.ane = fadd reassoc nsz arcp contract afn float %i.and, %i.aln
  %i.anf = fadd reassoc nsz arcp contract afn float %i.ane, %i.alp
  %i.ang = fmul reassoc nsz arcp contract afn float %i.anf, 2.500000e-01
  %i.anh = fcmp reassoc nsz arcp contract afn ogt float %i.all, %i.ace
  %i.ani = fcmp reassoc nsz arcp contract afn ogt float %i.alj, %i.ace
  %or.cond206.i.i = select i1 %i.anh, i1 true, i1 %i.ani
  %i.anj = fcmp reassoc nsz arcp contract afn ogt float %i.alp, %i.ace
  %or.cond207.i.i = select i1 %or.cond206.i.i, i1 true, i1 %i.anj
  br label %bb.fc

bb.fc:                                            ; preds = %._crit_edge249.i.i, %bb.fb, %bb.ey
  %.sink508 = phi float [ %i.aln, %._crit_edge249.i.i ], [ %i.alh, %bb.fb ], [ %i.ald, %bb.ey ]
  %or.cond207.i.i.sink = phi i1 [ %or.cond207.i.i, %._crit_edge249.i.i ], [ %i.anc, %bb.fb ], [ %i.amn, %bb.ey ]
  %.0188.i.i = phi nsz float [ %i.ang, %._crit_edge249.i.i ], [ %i.anb, %bb.fb ], [ %i.amm, %bb.ey ] ; 2 uses
  %i.ank = fcmp reassoc nsz arcp contract afn ogt float %.sink508, %i.ach
  %narrow233.i.i = select i1 %or.cond207.i.i.sink, i1 true, i1 %i.ank
  %.0182.i.i = zext i1 %narrow233.i.i to i32      ; 2 uses
  %i.anl = icmp eq i32 %i.akn, 2
  br i1 %i.anl, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.anm = fcmp reassoc nsz arcp contract afn ogt float %i.akq, %i.zn
  %i.ann = zext i1 %i.anm to i32
  br label %bb.fk

bb.fe:                                            ; preds = %bb.fc, %.thread224.i.i
  %.pre-phi259.i.i = phi i32 [ %.pre258.i.i, %.thread224.i.i ], [ %i.amc, %bb.fc ]
  %.0182232.i.i = phi i32 [ %i.ama, %.thread224.i.i ], [ %.0182.i.i, %bb.fc ] ; 3 uses
  %.0188231.i.i = phi float [ %i.akq, %.thread224.i.i ], [ %.0188.i.i, %bb.fc ] ; 3 uses
  %.0186220230.i.i = phi float [ %i.alw, %.thread224.i.i ], [ %.0186221.i.i, %bb.fc ] ; 3 uses
  %.0180222229.i.i = phi i32 [ %i.alx, %.thread224.i.i ], [ %.0180223.i.i, %bb.fc ] ; 3 uses
  %i.ano = lshr i32 %i.zv, %.pre-phi259.i.i
  %i.anp = and i32 %i.ano, 3
  %i.anq = icmp eq i32 %i.anp, 2
  br i1 %i.anq, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.anr = or disjoint i64 %i.akj, %i.adc
  %.tr.i215.i.i = trunc nuw nsw i64 %i.anr to i32
  %i.ans = shl nuw nsw i32 %.tr.i215.i.i, 1
  %i.ant = lshr i32 %i.zv, %i.ans
  %i.anu = and i32 %i.ant, 3
  %i.anv = icmp eq i32 %i.anu, 2
  br i1 %i.anv, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.anw = fadd reassoc nsz arcp contract afn float %i.ald, %i.alb
  %i.anx = fmul reassoc nsz arcp contract afn float %i.anw, 5.000000e-01
  %i.any = fcmp reassoc nsz arcp contract afn ogt float %i.alb, %i.zn
  %i.anz = fcmp reassoc nsz arcp contract afn ogt float %i.ald, %i.zn
  %narrow238.i.i = select i1 %i.any, i1 true, i1 %i.anz
  %i.aoa = zext i1 %narrow238.i.i to i32
  br label %bb.fk

bb.fh:                                            ; preds = %bb.ff, %bb.fe
  %i.aob = and i64 %i.aky, 1
  %i.aoc = or disjoint i64 %i.aob, %i.aco
  %.tr.i216.i.i = trunc nuw nsw i64 %i.aoc to i32
  %i.aod = shl nuw nsw i32 %.tr.i216.i.i, 1
  %i.aoe = lshr i32 %i.zv, %i.aod
  %i.aof = and i32 %i.aoe, 3
  %i.aog = icmp eq i32 %i.aof, 2
  br i1 %i.aog, label %bb.fi, label %._crit_edge251.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.aoh = and i64 %i.akz, 1
  %i.aoi = or disjoint i64 %i.aoh, %i.aco
  %.tr.i217.i.i = trunc nuw nsw i64 %i.aoi to i32
  %i.aoj = shl nuw nsw i32 %.tr.i217.i.i, 1
  %i.aok = lshr i32 %i.zv, %i.aoj
  %i.aol = and i32 %i.aok, 3
  %i.aom = icmp eq i32 %i.aol, 2
  br i1 %i.aom, label %bb.fj, label %._crit_edge251.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.aon = fadd reassoc nsz arcp contract afn float %i.alh, %i.alf
  %i.aoo = fmul reassoc nsz arcp contract afn float %i.aon, 5.000000e-01
  %i.aop = fcmp reassoc nsz arcp contract afn ogt float %i.alf, %i.zn
  %i.aoq = fcmp reassoc nsz arcp contract afn ogt float %i.alh, %i.zn
  %narrow237.i.i = select i1 %i.aop, i1 true, i1 %i.aoq
  %i.aor = zext i1 %narrow237.i.i to i32
  br label %bb.fk

._crit_edge251.i.i:                               ; preds = %bb.fh, %bb.fi
  %i.aos = fadd reassoc nsz arcp contract afn float %i.all, %i.alj
  %i.aot = fadd reassoc nsz arcp contract afn float %i.aos, %i.aln
  %i.aou = fadd reassoc nsz arcp contract afn float %i.aot, %i.alp
  %i.aov = fmul reassoc nsz arcp contract afn float %i.aou, 2.500000e-01
  %i.aow = fcmp reassoc nsz arcp contract afn ogt float %i.all, %i.zn
  %i.aox = fcmp reassoc nsz arcp contract afn ogt float %i.alj, %i.zn
  %or.cond208.i.i = select i1 %i.aow, i1 true, i1 %i.aox
  %i.aoy = fcmp reassoc nsz arcp contract afn ogt float %i.alp, %i.zn
  %or.cond209.i.i = select i1 %or.cond208.i.i, i1 true, i1 %i.aoy
  %i.aoz = fcmp reassoc nsz arcp contract afn ogt float %i.aln, %i.zn
  %narrow236.i.i = select i1 %or.cond209.i.i, i1 true, i1 %i.aoz
  %i.apa = zext i1 %narrow236.i.i to i32
  br label %bb.fk

bb.fk:                                            ; preds = %._crit_edge251.i.i, %bb.fj, %bb.fg, %bb.fd, %bb.et
  %.pre-phi.i.i = phi i64 [ %i.akz, %bb.fd ], [ %i.akz, %bb.fj ], [ %i.akz, %._crit_edge251.i.i ], [ %i.akz, %bb.fg ], [ %.pre254.i.i, %bb.et ] ; 2 uses
  %.1189.i.i = phi nsz float [ %.0188.i.i, %bb.fd ], [ %.0188231.i.i, %bb.fj ], [ %.0188231.i.i, %._crit_edge251.i.i ], [ %.0188231.i.i, %bb.fg ], [ %i.akq, %bb.et ] ; 3 uses
  %.1187.i.i = phi nsz float [ %.0186221.i.i, %bb.fd ], [ %.0186220230.i.i, %bb.fj ], [ %.0186220230.i.i, %._crit_edge251.i.i ], [ %.0186220230.i.i, %bb.fg ], [ %i.akq, %bb.et ] ; 3 uses
  %.1185.i.i = phi nsz float [ %i.akq, %bb.fd ], [ %i.aoo, %bb.fj ], [ %i.aov, %._crit_edge251.i.i ], [ %i.anx, %bb.fg ], [ %i.akq, %bb.et ] ; 3 uses
  %.1183.i.i = phi i32 [ %.0182.i.i, %bb.fd ], [ %.0182232.i.i, %bb.fj ], [ %.0182232.i.i, %._crit_edge251.i.i ], [ %.0182232.i.i, %bb.fg ], [ %i.akx, %bb.et ] ; 2 uses
  %.1181.i.i = phi i32 [ %.0180223.i.i, %bb.fd ], [ %.0180222229.i.i, %bb.fj ], [ %.0180222229.i.i, %._crit_edge251.i.i ], [ %.0180222229.i.i, %bb.fg ], [ %i.akx, %bb.et ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ann, %bb.fd ], [ %i.aor, %bb.fj ], [ %i.apa, %._crit_edge251.i.i ], [ %i.aoa, %bb.fg ], [ %i.akx, %bb.et ] ; 2 uses
  %i.apb = fmul reassoc nsz arcp contract afn float %.1189.i.i, %.1189.i.i
  %i.apc = fmul reassoc nsz arcp contract afn float %.1187.i.i, %.1187.i.i
  %i.apd = fadd reassoc nsz arcp contract afn float %i.apc, %i.apb
  %i.ape = fmul reassoc nsz arcp contract afn float %.1185.i.i, %.1185.i.i
  %i.apf = fadd reassoc nsz arcp contract afn float %i.apd, %i.ape
  %i.apg = uitofp nneg i32 %.1183.i.i to float
  %i.aph = uitofp nneg i32 %.1181.i.i to float
  %i.api = uitofp nneg i32 %.1.i.i to float
  %i.apj = icmp ne i32 %.1183.i.i, 0
  %i.apk = icmp ne i32 %.1181.i.i, 0
  %or.cond3.i.i = select i1 %i.apj, i1 true, i1 %i.apk
  %.not.i.i356 = icmp ne i32 %.1.i.i, 0
  %i.apl = select i1 %or.cond3.i.i, i1 true, i1 %.not.i.i356
  %i.apm = select i1 %i.apl, float 1.000000e+00, float 0.000000e+00
  store float %i.apg, ptr %scevgep.i.i, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %.sroa.4.0.scevgep.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %scevgep.i.i, i64 4
  store float %i.aph, ptr %.sroa.4.0.scevgep.sroa_idx.i.i, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %.sroa.5.0.scevgep.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %scevgep.i.i, i64 8
  store float %i.api, ptr %.sroa.5.0.scevgep.sroa_idx.i.i, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %.sroa.6.0.scevgep.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %scevgep.i.i, i64 12
  store float %i.apm, ptr %.sroa.6.0.scevgep.sroa_idx.i.i, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %.idx.i = shl i64 %i.ako, 4
  %i.apn = getelementptr inbounds nuw i8, ptr %i.abu, i64 %.idx.i
  %i.apo = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.apf)
  %i.app = insertelement <4 x float> poison, float %.1189.i.i, i64 0
  %i.apq = insertelement <4 x float> %i.app, float %.1187.i.i, i64 1
  %i.apr = insertelement <4 x float> %i.apq, float %.1185.i.i, i64 2
  %i.aps = insertelement <4 x float> %i.apr, float %i.apo, i64 3
  %i.apt = fmul reassoc nsz arcp contract afn <4 x float> %i.aps, %i.acl
end_hunk_0
