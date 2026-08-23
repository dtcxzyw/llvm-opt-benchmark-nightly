Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/silk?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@silk_decode_frame:bb.a
  %i.aai = add nsw i32 %.sink.i104.1243248255.i, 4
  %i.aaj = mul nsw i32 %i.aai, %i.aah
  %i.aak = ashr i32 %i.aaj, 1
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_silk_model_pulse_location, i64 672), i64 %i.aal
  %i.aan = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.aam) #9 ; 6 uses
  %i.aao = sub nsw i32 %.sink.i104.1243248255.i, %i.aan ; 3 uses
  %.not.i110.1160.1.i = icmp eq i32 %i.aan, 0
  br i1 %.not.i110.1160.1.i, label %silk_count_children.exit113.1163.1.i, label %bb.bx

bb.bx:                                            ; preds = %silk_count_children.exit109.1.1.i
  %i.aap = add nsw i32 %i.aan, -1
  %i.aaq = add nsw i32 %i.aan, 4
  %i.aar = mul nsw i32 %i.aaq, %i.aap
  %i.aas = ashr i32 %i.aar, 1
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_silk_model_pulse_location, i64 1008), i64 %i.aat
  %i.aav = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.aau) #9 ; 2 uses
  %i.aaw = sub nsw i32 %i.aan, %i.aav
  br label %silk_count_children.exit113.1163.1.i

silk_count_children.exit113.1163.1.i:             ; preds = %bb.bx, %silk_count_children.exit109.1.1.i
  %.sink10.i111.1161.1.i = phi i32 [ %i.aav, %bb.bx ], [ 0, %silk_count_children.exit109.1.1.i ]
  %.sink.i112.1162.1.i = phi i32 [ %i.aaw, %bb.bx ], [ 0, %silk_count_children.exit109.1.1.i ]
  store i32 %.sink10.i111.1161.1.i, ptr %i.aaf, align 16, !tbaa !20
  %i.aax = getelementptr inbounds nuw i8, ptr %i.vx, i64 52
  store i32 %.sink.i112.1162.1.i, ptr %i.aax, align 4, !tbaa !20
  %.not.i110.1.1.1.i = icmp eq i32 %.sink.i104.1243248255.i, %i.aan
  br i1 %.not.i110.1.1.1.i, label %silk_count_children.exit113.1.1.1.i, label %bb.by

bb.by:                                            ; preds = %silk_count_children.exit113.1163.1.i
  %i.aay = add nsw i32 %i.aao, -1
  %i.aaz = add nsw i32 %i.aao, 4
  %i.aba = mul nsw i32 %i.aaz, %i.aay
  %i.abb = ashr i32 %i.aba, 1
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_silk_model_pulse_location, i64 1008), i64 %i.abc
  %i.abe = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.abd) #9 ; 2 uses
  %i.abf = sub nsw i32 %i.aao, %i.abe
  br label %silk_count_children.exit113.1.1.1.i

silk_count_children.exit113.1.1.1.i:              ; preds = %bb.by, %silk_count_children.exit113.1163.1.i, %silk_count_children.exit113.1163.1.thread.i
  %.sink10.i111.1.1.1.i = phi i32 [ %i.abe, %bb.by ], [ 0, %silk_count_children.exit113.1163.1.i ], [ 0, %silk_count_children.exit113.1163.1.thread.i ]
  %.sink.i112.1.1.1.i = phi i32 [ %i.abf, %bb.by ], [ 0, %silk_count_children.exit113.1163.1.i ], [ 0, %silk_count_children.exit113.1163.1.thread.i ]
  %i.abg = getelementptr inbounds nuw i8, ptr %i.vx, i64 56
  store i32 %.sink10.i111.1.1.1.i, ptr %i.abg, align 8, !tbaa !20
  %i.abh = getelementptr inbounds nuw i8, ptr %i.vx, i64 60
  store i32 %.sink.i112.1.1.1.i, ptr %i.abh, align 4, !tbaa !20
  br label %bb.ca

bb.bz:                                            ; preds = %.preheader117.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.vx, i8 0, i64 64, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %silk_count_children.exit113.1.1.1.i
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next180.i, %i.va
  br i1 %exitcond183.not.i, label %.preheader116.i, label %.preheader117.i, !llvm.loop !93

.preheader115.i:                                  ; preds = %bb.cc, %.preheader116.i
  %indvars.iv185.i = phi i64 [ 0, %.preheader116.i ], [ %indvars.iv.next186.i, %bb.cc ] ; 3 uses
  %i.abi = lshr i64 %indvars.iv185.i, 4
  %i.abj = and i64 %i.abi, 268435455
  %i.abk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !64 ; 2 uses
  %i.abm = zext i8 %i.abl to i32
  %.not147.i = icmp eq i8 %i.abl, 0
  br i1 %.not147.i, label %bb.cc, label %.lr.ph134.i

.lr.ph134.i:                                      ; preds = %.preheader115.i
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv185.i ; 2 uses
  %.promoted135.i = load i32, ptr %i.abn, align 4, !tbaa !20
  br label %bb.cb

.preheader114.i:                                  ; preds = %bb.cc
  %i.abo = add nsw i32 %.0234, %5
  %i.abp = sext i32 %i.abo to i64
  %i.abq = getelementptr inbounds [84 x i8], ptr @ff_silk_model_excitation_sign, i64 %i.abp
  %i.abr = sext i32 %.0235 to i64                 ; 2 uses
  %i.abs = getelementptr inbounds [42 x i8], ptr %i.abq, i64 %i.abr
  br label %bb.cd

bb.cb:                                            ; preds = %bb.cb, %.lr.ph134.i
  %i.abt = phi i32 [ %.promoted135.i, %.lr.ph134.i ], [ %i.abw, %bb.cb ]
  %.0133.i = phi i32 [ 0, %.lr.ph134.i ], [ %i.abx, %bb.cb ]
  %i.abu = shl i32 %i.abt, 1
  %i.abv = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_excitation_lsb) #9
  %i.abw = or i32 %i.abv, %i.abu                  ; 2 uses
  %i.abx = add nuw nsw i32 %.0133.i, 1            ; 2 uses
  %exitcond184.not.i = icmp eq i32 %i.abx, %i.abm
  br i1 %exitcond184.not.i, label %._crit_edge.i, label %bb.cb, !llvm.loop !94

._crit_edge.i:                                    ; preds = %bb.cb
  store i32 %i.abw, ptr %i.abn, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i, %.preheader115.i
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1 ; 2 uses
  %exitcond189.not.i = icmp eq i64 %indvars.iv.next186.i, %wide.trip.count188.i
  br i1 %exitcond189.not.i, label %.preheader114.i, label %.preheader115.i, !llvm.loop !95

.preheader.i273:                                  ; preds = %bb.cg
  %i.aby = getelementptr inbounds [2 x i8], ptr @ff_silk_quant_offset, i64 %i.em
  %i.abz = getelementptr inbounds i8, ptr %i.aby, i64 %i.abr
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !64
  %i.acb = zext i8 %i.aca to i32
  br label %bb.ch

bb.cd:                                            ; preds = %bb.cg, %.preheader114.i
  %indvars.iv190.i = phi i64 [ 0, %.preheader114.i ], [ %indvars.iv.next191.i, %bb.cg ] ; 3 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv190.i ; 2 uses
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !20 ; 2 uses
  %.not99.i = icmp eq i32 %i.acd, 0
  br i1 %.not99.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ace = lshr i64 %indvars.iv190.i, 4
  %i.acf = and i64 %i.ace, 268435455
  %i.acg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acf
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !64
  %narrow.i = tail call i8 @llvm.umin.i8(i8 %i.ach, i8 6)
  %spec.select.i272 = zext nneg i8 %narrow.i to i64
  %i.aci = getelementptr inbounds nuw [6 x i8], ptr %i.abs, i64 %spec.select.i272
  %i.acj = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.aci) #9
  %i.ack = icmp eq i32 %i.acj, 0
  br i1 %i.ack, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.acl = sub nsw i32 0, %i.acd
  store i32 %i.acl, ptr %i.acc, align 4, !tbaa !20
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %indvars.iv.next191.i, %wide.trip.count188.i
  br i1 %exitcond194.not.i, label %.preheader.i273, label %bb.cd, !llvm.loop !96

bb.ch:                                            ; preds = %bb.cl, %.preheader.i273
  %indvars.iv195.i = phi i64 [ 0, %.preheader.i273 ], [ %indvars.iv.next196.i, %bb.cl ] ; 3 uses
  %.089141.i = phi i32 [ %i.uq, %.preheader.i273 ], [ %i.acx, %bb.cl ]
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv195.i ; 4 uses
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !20 ; 4 uses
  %i.aco = shl nsw i32 %i.acn, 8
  %i.acp = or disjoint i32 %i.aco, %i.acb         ; 3 uses
  store i32 %i.acp, ptr %i.acm, align 4, !tbaa !20
  %i.acq = icmp slt i32 %i.acn, 0
  br i1 %i.acq, label %.sink.split.i275, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not.i274 = icmp eq i32 %i.acn, 0
  br i1 %.not.i274, label %bb.cj, label %.sink.split.i275

.sink.split.i275:                                 ; preds = %bb.ci, %bb.ch
  %.sink267.i = phi i32 [ 20, %bb.ch ], [ -20, %bb.ci ]
  %i.acr = add nsw i32 %.sink267.i, %i.acp        ; 2 uses
  store i32 %i.acr, ptr %i.acm, align 4, !tbaa !20
  br label %bb.cj

bb.cj:                                            ; preds = %.sink.split.i275, %bb.ci
  %i.acs = phi i32 [ %i.acp, %bb.ci ], [ %i.acr, %.sink.split.i275 ] ; 2 uses
  %i.act = mul i32 %.089141.i, 196314165
  %i.acu = add i32 %i.act, 907633515              ; 2 uses
  %.not98.i = icmp sgt i32 %i.acu, -1
  br i1 %.not98.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.acv = sub nsw i32 0, %i.acs                  ; 2 uses
  store i32 %i.acv, ptr %i.acm, align 4, !tbaa !20
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.acw = phi i32 [ %i.acv, %bb.ck ], [ %i.acs, %bb.cj ]
  %i.acx = add i32 %i.acu, %i.acn
  %i.acy = sitofp nsz i32 %i.acw to float
  %i.acz = fmul nnan nsz float %i.acy, f0x34000000
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv195.i
  store float %i.acz, ptr %i.ada, align 4, !tbaa !32
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %wide.trip.count188.i
  br i1 %exitcond199.not.i, label %silk_decode_excitation.exit, label %bb.ch, !llvm.loop !97

silk_decode_excitation.exit:                      ; preds = %bb.cl, %.thread284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adc = load i32, ptr %i.adb, align 8, !tbaa !27
  %i.add = icmp eq i32 %i.adc, %3
  %i.ade = icmp ne i32 %7, 0
  %or.cond5 = or i1 %i.ade, %i.add
  br i1 %or.cond5, label %bb.cx, label %.preheader

.preheader:                                       ; preds = %silk_decode_excitation.exit
  %i.adf = load i32, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %i.adg = icmp sgt i32 %i.adf, 0
  br i1 %i.adg, label %.lr.ph333, label %._crit_edge334

.lr.ph333:                                        ; preds = %.preheader
  %i.adh = getelementptr inbounds nuw i8, ptr %i.m, i64 1392
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !13 ; 6 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.m, i64 3968
  %i.adl = icmp sgt i32 %i.adj, 0                 ; 2 uses
  %wide.trip.count392 = zext nneg i32 %i.adf to i64
  %wide.trip.count377 = zext i32 %i.adj to i64    ; 5 uses
  %wide.trip.count387 = zext nneg i32 %i.adj to i64
  %i.adm = add nsw i64 %wide.trip.count377, -1    ; 2 uses
  %i.adn = shl nuw nsw i64 %wide.trip.count377, 2
  %i.ado = add nuw nsw i64 %i.adn, 1160           ; 6 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.ado
  %scevgep480 = getelementptr inbounds nuw i8, ptr %i.j, i64 1160
  %scevgep482 = getelementptr i8, ptr %i.j, i64 %i.ado
  %scevgep484 = getelementptr inbounds nuw i8, ptr %i.j, i64 1160
  %scevgep486 = getelementptr i8, ptr %i.j, i64 %i.ado
  %scevgep488 = getelementptr inbounds nuw i8, ptr %i.j, i64 1160
  %scevgep490 = getelementptr i8, ptr %i.j, i64 %i.ado
  %scevgep492 = getelementptr inbounds nuw i8, ptr %i.j, i64 1160
  %scevgep494 = getelementptr i8, ptr %i.j, i64 %i.ado
  %scevgep496 = getelementptr inbounds nuw i8, ptr %i.j, i64 1160
  %scevgep498 = getelementptr i8, ptr %i.j, i64 %i.ado
  %min.iters.check516 = icmp ult i32 %i.adj, 12
  %i.adp = trunc i64 %i.adm to i32                ; 5 uses
  %i.adq = icmp ugt i64 %i.adm, 4294967295
  %n.vec518 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %cmp.n539 = icmp eq i64 %n.vec518, %wide.trip.count377
  %xtraiter587 = and i64 %wide.trip.count.i, 2    ; 2 uses
  %unroll_iter591 = and i64 %wide.trip.count.i, 24
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  %lcmp.mod590 = icmp ne i64 %xtraiter587, 0
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph333, %._crit_edge331
  %indvars.iv389 = phi i64 [ 0, %.lr.ph333 ], [ %indvars.iv.next390, %._crit_edge331 ] ; 6 uses
  %i.adr = trunc i64 %indvars.iv389 to i32
  %i.ads = mul i32 %i.adj, %i.adr
  %i.adt = sext i32 %i.ads to i64                 ; 6 uses
  %i.adu = shl nsw i64 %i.adt, 2
  %scevgep479 = getelementptr i8, ptr %scevgep, i64 %i.adu ; 5 uses
  %i.adv = icmp samesign ult i64 %indvars.iv389, 2 ; 2 uses
  %or.cond7 = and i1 %i.qh, %i.adv
  %i.adw = select i1 %or.cond7, ptr %i.h, ptr %i.i ; 7 uses
  %i.adx = trunc i64 %indvars.iv389 to i32
  %i.ady = mul i32 %i.adj, %i.adx                 ; 2 uses
  %i.adz = sext i32 %i.ady to i64                 ; 3 uses
  %i.aea = getelementptr inbounds [4 x i8], ptr %i.adh, i64 %i.adz ; 4 uses
  %i.aeb = getelementptr [4 x i8], ptr %i.up, i64 %i.adz ; 21 uses
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.adk, i64 %i.adz ; 6 uses
  br i1 %.not286, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.adv, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aed = load i32, ptr %i.qi, align 4, !tbaa !81
  %i.aee = icmp eq i32 %i.aed, 4
  br i1 %i.aee, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.aef = sub i32 0, %i.ady
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %.0225 = phi i32 [ %i.aef, %bb.cp ], [ 0, %bb.co ] ; 6 uses
  %.0 = phi nsz float [ %.0244, %bb.cp ], [ 1.000000e+00, %bb.co ]
  %i.aeg = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %indvars.iv389 ; 9 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !86 ; 17 uses
  %i.aej = sub i32 -2, %i.aei                     ; 5 uses
  %i.aek = icmp slt i32 %i.aej, %.0225
  br i1 %i.aek, label %.lr.ph316, label %._crit_edge317

.lr.ph316:                                        ; preds = %bb.cq
  %i.ael = load float, ptr %i.aeg, align 4, !tbaa !60
  %i.aem = sext i32 %i.aej to i64
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph316, %bb.ct
  %indvars.iv361 = phi i64 [ %i.aem, %.lr.ph316 ], [ %indvars.iv.next362, %bb.ct ] ; 5 uses
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.aea, i64 %indvars.iv361
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !32
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %indvars.iv356 = phi i64 [ 0, %bb.cr ], [ %indvars.iv.next357.1, %bb.cs ] ; 5 uses
  %.0230312 = phi float [ %i.aeo, %bb.cr ], [ %i.afh, %bb.cs ]
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %indvars.iv356
  %i.aeq = load float, ptr %i.aep, align 8, !tbaa !32
  %i.aer = xor i64 %indvars.iv356, -1
  %i.aes = add i64 %indvars.iv361, %i.aer
  %sext = shl i64 %i.aes, 32
  %i.aet = ashr exact i64 %sext, 30
  %i.aeu = getelementptr inbounds i8, ptr %i.aea, i64 %i.aet
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !32
  %i.aew = fneg nsz float %i.aeq
  %i.aex = tail call nsz float @llvm.fmuladd.f32(float %i.aew, float %i.aev, float %.0230312)
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %indvars.iv356
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !32
  %i.afb = xor i64 %indvars.iv356, 4294967294
  %i.afc = add i64 %indvars.iv361, %i.afb
  %sext.1 = shl i64 %i.afc, 32
  %i.afd = ashr exact i64 %sext.1, 30
  %i.afe = getelementptr inbounds i8, ptr %i.aea, i64 %i.afd
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !32
  %i.afg = fneg nsz float %i.afa
  %i.afh = tail call nsz float @llvm.fmuladd.f32(float %i.afg, float %i.aff, float %i.aex) ; 3 uses
  %indvars.iv.next357.1 = add nuw nsw i64 %indvars.iv356, 2 ; 2 uses
  %exitcond360.not.1 = icmp eq i64 %indvars.iv.next357.1, %wide.trip.count.i
  br i1 %exitcond360.not.1, label %bb.ct, label %bb.cs, !llvm.loop !98

bb.ct:                                            ; preds = %bb.cs
  %i.afi = fcmp nsz ogt float %i.afh, -1.000000e+00
  %i.afj = select nsz i1 %i.afi, float %i.afh, float -1.000000e+00 ; 2 uses
  %i.afk = fcmp nsz ogt float %i.afj, 1.000000e+00
  %..i266 = select nsz i1 %i.afk, float 1.000000e+00, float %i.afj
  %i.afl = fmul nsz float %.0, %..i266
  %i.afm = fdiv nsz float %i.afl, %i.ael
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.aeb, i64 %indvars.iv361
  store float %i.afm, ptr %i.afn, align 4, !tbaa !32
  %indvars.iv.next362 = add nsw i64 %indvars.iv361, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next362 to i32
  %exitcond364.not = icmp eq i32 %.0225, %lftr.wideiv
  br i1 %exitcond364.not, label %._crit_edge317, label %bb.cr, !llvm.loop !99

._crit_edge317:                                   ; preds = %bb.ct, %bb.cq
  %.not259 = icmp eq i32 %.0225, 0
  br i1 %.not259, label %.loopexit294, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge317
  %i.afo = getelementptr i8, ptr %i.aeg, i64 -28
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !60
  %i.afq = load float, ptr %i.aeg, align 4, !tbaa !60
  %i.afr = fdiv nsz float %i.afp, %i.afq          ; 2 uses
  %i.afs = icmp slt i32 %.0225, 0
  br i1 %i.afs, label %.lr.ph320.preheader, label %.loopexit294

.lr.ph320.preheader:                              ; preds = %bb.cu
  %i.aft = sext i32 %.0225 to i64                 ; 3 uses
  %narrow = sub i32 0, %.0225                     ; 2 uses
  %i.afu = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check542 = icmp ult i32 %narrow, 8
  br i1 %min.iters.check542, label %.lr.ph320.preheader556, label %vector.ph543

vector.ph543:                                     ; preds = %.lr.ph320.preheader
  %n.vec544 = and i64 %i.afu, 4294967288          ; 3 uses
  %i.afv = add nsw i64 %n.vec544, %i.aft
  %broadcast.splatinsert545 = insertelement <4 x float> poison, float %i.afr, i64 0
  %broadcast.splat546 = shufflevector <4 x float> %broadcast.splatinsert545, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aeb, i64 %i.aft
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph543
  %index548 = phi i64 [ 0, %vector.ph543 ], [ %index.next551, %vector.body547 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index548 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load549 = load <4 x float>, ptr %gep, align 4, !tbaa !32
  %wide.load550 = load <4 x float>, ptr %i.afw, align 4, !tbaa !32
  %i.afx = fmul nsz <4 x float> %broadcast.splat546, %wide.load549
  %i.afy = fmul nsz <4 x float> %broadcast.splat546, %wide.load550
  store <4 x float> %i.afx, ptr %gep, align 4, !tbaa !32
  store <4 x float> %i.afy, ptr %i.afw, align 4, !tbaa !32
  %index.next551 = add nuw i64 %index548, 8       ; 2 uses
  %i.afz = icmp eq i64 %index.next551, %n.vec544
  br i1 %i.afz, label %middle.block552, label %vector.body547, !llvm.loop !100

middle.block552:                                  ; preds = %vector.body547
  %cmp.n553 = icmp eq i64 %n.vec544, %i.afu
  br i1 %cmp.n553, label %.loopexit294, label %.lr.ph320.preheader556

.lr.ph320.preheader556:                           ; preds = %.lr.ph320.preheader, %middle.block552
  %indvars.iv365.ph = phi i64 [ %i.aft, %.lr.ph320.preheader ], [ %i.afv, %middle.block552 ]
  br label %.lr.ph320

.lr.ph320:                                        ; preds = %.lr.ph320.preheader556, %.lr.ph320
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %.lr.ph320 ], [ %indvars.iv365.ph, %.lr.ph320.preheader556 ] ; 2 uses
  %i.aga = getelementptr inbounds [4 x i8], ptr %i.aeb, i64 %indvars.iv365 ; 2 uses
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !32
  %i.agc = fmul nsz float %i.afr, %i.agb
  store float %i.agc, ptr %i.aga, align 4, !tbaa !32
  %indvars.iv.next366 = add nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.agd = and i64 %indvars.iv.next366, 4294967295
  %exitcond369.not = icmp eq i64 %i.agd, 0
  br i1 %exitcond369.not, label %.loopexit294, label %.lr.ph320, !llvm.loop !101

.loopexit294:                                     ; preds = %.lr.ph320, %middle.block552, %bb.cu, %._crit_edge317
  br i1 %i.adl, label %.lr.ph325, label %._crit_edge331

.lr.ph325:                                        ; preds = %.loopexit294
  %i.age = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %.pre400 = load float, ptr %i.age, align 4, !tbaa !32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aeg, i64 12
  %.pre401 = load float, ptr %.phi.trans.insert, align 4, !tbaa !32 ; 2 uses
  %.phi.trans.insert402 = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %.pre403 = load float, ptr %.phi.trans.insert402, align 4, !tbaa !32 ; 2 uses
  %.phi.trans.insert404 = getelementptr inbounds nuw i8, ptr %i.aeg, i64 20
  %.pre405 = load float, ptr %.phi.trans.insert404, align 4, !tbaa !32 ; 2 uses
  %.phi.trans.insert406 = getelementptr inbounds nuw i8, ptr %i.aeg, i64 24
  %.pre407 = load float, ptr %.phi.trans.insert406, align 4, !tbaa !32 ; 2 uses
  %.neg = xor i32 %i.aei, -1                      ; 3 uses
  %i.agf = add i32 %i.aei, 3                      ; 2 uses
  %i.agg = add i32 %i.aei, 4                      ; 2 uses
  br i1 %min.iters.check516, label %scalar.ph515.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph325
  %i.agh = sub i32 2, %i.aei                      ; 2 uses
  %i.agi = add i32 %i.agh, %i.adp
  %i.agj = icmp slt i32 %i.agi, %i.agh
  %i.agk = sub i32 1, %i.aei                      ; 2 uses
  %i.agl = add i32 %i.agk, %i.adp
  %i.agm = icmp slt i32 %i.agl, %i.agk
  %i.agn = or i1 %i.agm, %i.adq
  %i.ago = sub i32 0, %i.aei
  %i.agp = sub i32 %i.adp, %i.aei
  %i.agq = icmp slt i32 %i.agp, %i.ago
  %i.agr = sub i32 %i.aei, %i.adp
  %i.ags = icmp sgt i32 %i.agr, %i.aei
  %i.agt = add i32 %i.aej, %i.adp
  %i.agu = icmp slt i32 %i.agt, %i.aej
  %i.agv = or i1 %i.agj, %i.agn
  %i.agw = or i1 %i.agq, %i.agv
  %i.agx = or i1 %i.ags, %i.agw
  %i.agy = or i1 %i.agu, %i.agx
  br i1 %i.agy, label %scalar.ph515.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.agz = sub i32 2, %i.aei
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = add nsw i64 %i.adt, %i.aha
  %i.ahc = shl nsw i64 %i.ahb, 2                  ; 2 uses
  %scevgep481 = getelementptr i8, ptr %scevgep480, i64 %i.ahc
  %scevgep483 = getelementptr i8, ptr %scevgep482, i64 %i.ahc
  %i.ahd = sub i32 1, %i.aei
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = add nsw i64 %i.adt, %i.ahe
  %i.ahg = shl nsw i64 %i.ahf, 2                  ; 2 uses
  %scevgep485 = getelementptr i8, ptr %scevgep484, i64 %i.ahg
  %scevgep487 = getelementptr i8, ptr %scevgep486, i64 %i.ahg
  %i.ahh = sub i32 0, %i.aei
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = add nsw i64 %i.adt, %i.ahi
  %i.ahk = shl nsw i64 %i.ahj, 2                  ; 2 uses
  %scevgep489 = getelementptr i8, ptr %scevgep488, i64 %i.ahk
  %scevgep491 = getelementptr i8, ptr %scevgep490, i64 %i.ahk
  %i.ahl = sext i32 %.neg to i64
  %i.ahm = add nsw i64 %i.adt, %i.ahl
  %i.ahn = shl nsw i64 %i.ahm, 2                  ; 2 uses
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.ahn
  %scevgep495 = getelementptr i8, ptr %scevgep494, i64 %i.ahn
  %i.aho = sext i32 %i.aej to i64
  %i.ahp = add nsw i64 %i.adt, %i.aho
  %i.ahq = shl nsw i64 %i.ahp, 2                  ; 2 uses
  %scevgep497 = getelementptr i8, ptr %scevgep496, i64 %i.ahq
  %scevgep499 = getelementptr i8, ptr %scevgep498, i64 %i.ahq
  %bound0 = icmp ult ptr %i.aeb, %scevgep483
  %bound1 = icmp ult ptr %scevgep481, %scevgep479
  %found.conflict = and i1 %bound0, %bound1
  %bound0500 = icmp ult ptr %i.aeb, %scevgep487
  %bound1501 = icmp ult ptr %scevgep485, %scevgep479
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx = or i1 %found.conflict, %found.conflict502
  %bound0503 = icmp ult ptr %i.aeb, %scevgep491
  %bound1504 = icmp ult ptr %scevgep489, %scevgep479
  %found.conflict505 = and i1 %bound0503, %bound1504
  %conflict.rdx506 = or i1 %conflict.rdx, %found.conflict505
end_hunk_0
