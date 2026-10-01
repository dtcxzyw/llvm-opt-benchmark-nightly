Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/io_ompio?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ompi_io_ompio_generate_current_file_view:bb.a
vector.ph:                                        ; preds = %.preheader387.us
  %i.gr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0318434.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.gr, %vector.ph ], [ %i.gy, %vector.body ]
  %vec.phi591 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gz, %vector.body ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load = load <4 x i32>, ptr %i.gs, align 4, !tbaa !11
  %wide.load592 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !11
  %i.gu = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.gv = icmp sgt <4 x i32> %wide.load592, zeroinitializer
  %i.gw = zext <4 x i1> %i.gu to <4 x i32>
  %i.gx = zext <4 x i1> %i.gv to <4 x i32>
  %i.gy = add <4 x i32> %vec.phi, %i.gw           ; 2 uses
  %i.gz = add <4 x i32> %vec.phi591, %i.gx        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.gz, %i.gy
  %i.hb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge431.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader387.us, %middle.block
  %indvars.iv507.ph = phi i64 [ 0, %.preheader387.us ], [ %n.vec, %middle.block ]
  %.1319429.us.ph = phi i32 [ %.0318434.us, %.preheader387.us ], [ %i.hb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %scalar.ph ], [ %indvars.iv507.ph, %scalar.ph.preheader ] ; 2 uses
  %.1319429.us = phi i32 [ %spec.select.us, %scalar.ph ], [ %.1319429.us.ph, %scalar.ph.preheader ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv507
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !11
  %i.he = icmp sgt i32 %i.hd, 0
  %i.hf = zext i1 %i.he to i32
  %spec.select.us = add nsw i32 %.1319429.us, %i.hf ; 2 uses
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next508, %wide.trip.count515
  br i1 %exitcond511.not, label %._crit_edge431.us, label %scalar.ph, !llvm.loop !25

._crit_edge431.us:                                ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i32 [ %i.hb, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 2 uses
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %._crit_edge435, label %.preheader387.us, !llvm.loop !26

.lr.ph427:                                        ; preds = %.lr.ph427.preheader, %.lr.ph427
  %i.hg = phi i32 [ %.pre553, %.lr.ph427.preheader ], [ %i.hm, %.lr.ph427 ]
  %indvars.iv502 = phi i64 [ 0, %.lr.ph427.preheader ], [ %indvars.iv.next503, %.lr.ph427 ]
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [24 x i8], ptr %.0325, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !98
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0324, i64 %indvars.iv.next503
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !11 ; 2 uses
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [24 x i8], ptr %.0325, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !98
  %i.hr = sext i32 %i.hk to i64                   ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !101
  %i.hu = sext i32 %i.hq to i64                   ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hu ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !11
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !11
  %i.hy = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.hu
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !101
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.hr ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !11
  %i.ic = add nsw i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !11
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %wide.trip.count505
  br i1 %exitcond506.not, label %.preheader388, label %.lr.ph427, !llvm.loop !27

._crit_edge435:                                   ; preds = %._crit_edge431.us, %.preheader388
  %.0318.lcssa = phi i32 [ 0, %.preheader388 ], [ %spec.select.us.lcssa, %._crit_edge431.us ] ; 4 uses
  %i.id = call noalias ptr @fopen(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) ; 12 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %.preheader384, label %bb.z

.preheader384:                                    ; preds = %._crit_edge435
  %i.if = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.ig = icmp sgt i32 %i.if, 0
  br i1 %i.ig, label %.lr.ph469, label %._crit_edge470

.lr.ph469:                                        ; preds = %.preheader384, %.lr.ph469
  %indvars.iv540 = phi i64 [ %indvars.iv.next541, %.lr.ph469 ], [ 0, %.preheader384 ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv540
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !101
  call void @free(ptr noundef %i.ii) #13
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %i.ij = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.next541, %i.ik
  br i1 %i.il, label %.lr.ph469, label %._crit_edge470, !llvm.loop !28

._crit_edge470:                                   ; preds = %.lr.ph469, %.preheader384
  call void @free(ptr noundef %.0) #13
  call void @free(ptr noundef %.0324) #13
  call void @free(ptr noundef %.0325) #13
  call void @free(ptr noundef %i.bz) #13
  call void @free(ptr noundef %i.bj) #13
  call void @free(ptr noundef %i.bl) #13
  br label %.thread

bb.z:                                             ; preds = %._crit_edge435
  %fwrite = call i64 @fwrite(ptr nonnull @.str.4, i64 9, i64 1, ptr nonnull %i.id) ; 0 uses
  %i.im = sext i32 %.0318.lcssa to i64
  %i.in = shl nsw i64 %i.im, 2
  %i.io = call noalias ptr @malloc(i64 noundef %i.in) #16 ; 5 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.6) #13
  %i.iq = call i32 @fclose(ptr noundef nonnull %i.id) ; 0 uses
  %i.ir = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph466, label %._crit_edge467

.lr.ph466:                                        ; preds = %bb.aa, %.lr.ph466
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.lr.ph466 ], [ 0, %bb.aa ] ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv537
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !101
  call void @free(ptr noundef %i.iu) #13
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.iv = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.iw = sext i32 %i.iv to i64
  %i.ix = icmp slt i64 %indvars.iv.next538, %i.iw
  br i1 %i.ix, label %.lr.ph466, label %._crit_edge467, !llvm.loop !29

._crit_edge467:                                   ; preds = %.lr.ph466, %bb.aa
  call void @free(ptr noundef %.0) #13
  call void @free(ptr noundef %.0324) #13
  call void @free(ptr noundef %.0325) #13
  call void @free(ptr noundef %i.bz) #13
  call void @free(ptr noundef %i.bj) #13
  call void @free(ptr noundef %i.bl) #13
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.iy = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.iz = add nsw i32 %i.iy, 1                    ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = shl nsw i64 %i.ja, 2
  %i.jc = call noalias ptr @malloc(i64 noundef %i.jb) #16 ; 5 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.7) #13
  %i.je = call i32 @fclose(ptr noundef nonnull %i.id) ; 0 uses
  %i.jf = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.lr.ph462, label %._crit_edge463

.lr.ph462:                                        ; preds = %bb.ac, %.lr.ph462
  %indvars.iv534 = phi i64 [ %indvars.iv.next535, %.lr.ph462 ], [ 0, %bb.ac ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv534
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !101
  call void @free(ptr noundef %i.ji) #13
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.jj = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp slt i64 %indvars.iv.next535, %i.jk
  br i1 %i.jl, label %.lr.ph462, label %._crit_edge463, !llvm.loop !30

._crit_edge463:                                   ; preds = %.lr.ph462, %bb.ac
  call void @free(ptr noundef %.0) #13
  call void @free(ptr noundef nonnull %i.io) #13
  call void @free(ptr noundef %.0324) #13
  call void @free(ptr noundef %.0325) #13
  call void @free(ptr noundef %i.bz) #13
  call void @free(ptr noundef %i.bj) #13
  call void @free(ptr noundef %i.bl) #13
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.jm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.id, ptr noundef nonnull @.str.8, i32 noundef %.0318.lcssa, i32 noundef %i.iz) #13 ; 0 uses
  store i32 1, ptr %i.jc, align 4, !tbaa !11
  %i.jn = load i32, ptr %i.bf, align 4, !tbaa !67 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.preheader386, label %._crit_edge447

.preheader386:                                    ; preds = %bb.ad, %._crit_edge441
  %i.jp = phi i32 [ %i.kg, %._crit_edge441 ], [ %i.jn, %bb.ad ] ; 4 uses
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %._crit_edge441 ], [ 0, %bb.ad ] ; 2 uses
  %.0314446 = phi i32 [ %.1.lcssa, %._crit_edge441 ], [ 1, %bb.ad ] ; 2 uses
  %.0315445 = phi i32 [ %.1316.lcssa, %._crit_edge441 ], [ 0, %bb.ad ] ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph440, label %._crit_edge441

.lr.ph440:                                        ; preds = %.preheader386
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv520
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph440, %bb.ag
  %i.js = phi i32 [ %i.jp, %.lr.ph440 ], [ %i.kc, %bb.ag ]
  %i.jt = phi i32 [ %i.jp, %.lr.ph440 ], [ %i.kd, %bb.ag ]
  %indvars.iv517 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next518, %bb.ag ] ; 3 uses
  %.1439 = phi i32 [ %.0314446, %.lr.ph440 ], [ %.2, %bb.ag ] ; 2 uses
  %.1316438.a = phi i32 [ %.0315445, %.lr.ph440 ], [ %.2317, %bb.ag ] ; 3 uses
  %4 = load ptr, ptr %i.jr, align 8, !tbaa !101
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv517
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !11 ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jx = sext i32 %.1316438.a to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.jx
  store i32 %i.jv, ptr %i.jy, align 4, !tbaa !11
  %i.jz = trunc nuw nsw i64 %indvars.iv517 to i32
  %i.ka = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.id, ptr noundef nonnull @.str.9, i32 noundef %i.jz) #13 ; 0 uses
  %i.kb = add nsw i32 %.1316438.a, 1
  %5 = add nsw i32 %.1439, 1
  %.pre554.a = load i32, ptr %i.bf, align 4, !tbaa !67 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.kc = phi i32 [ %.pre554.a, %bb.af ], [ %i.js, %bb.ae ] ; 2 uses
  %i.kd = phi i32 [ %.pre554.a, %bb.af ], [ %i.jt, %bb.ae ] ; 2 uses
  %.2317 = phi i32 [ %i.kb, %bb.af ], [ %.1316438.a, %bb.ae ] ; 2 uses
  %.2 = phi i32 [ %5, %bb.af ], [ %.1439, %bb.ae ] ; 2 uses
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp slt i64 %indvars.iv.next518, %i.ke
  br i1 %i.kf, label %bb.ae, label %._crit_edge441, !llvm.loop !31

._crit_edge441:                                   ; preds = %bb.ag, %.preheader386
  %i.kg = phi i32 [ %i.jp, %.preheader386 ], [ %i.kc, %bb.ag ] ; 2 uses
  %.1316.lcssa = phi i32 [ %.0315445, %.preheader386 ], [ %.2317, %bb.ag ]
  %.1.lcssa = phi i32 [ %.0314446, %.preheader386 ], [ %.2, %bb.ag ] ; 2 uses
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 3 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next521
  store i32 %.1.lcssa, ptr %i.kh, align 4, !tbaa !11
  %i.ki = sext i32 %i.kg to i64
  %i.kj = icmp slt i64 %indvars.iv.next521, %i.ki
  br i1 %i.kj, label %.preheader386, label %._crit_edge447, !llvm.loop !32

._crit_edge447:                                   ; preds = %._crit_edge441, %bb.ad
  %fputc = call i32 @fputc(i32 10, ptr nonnull %i.id) ; 0 uses
  %i.kk = icmp sgt i32 %.0318.lcssa, 0
  br i1 %i.kk, label %.lr.ph450.preheader, label %._crit_edge451

.lr.ph450.preheader:                              ; preds = %._crit_edge447
  %wide.trip.count526 = zext nneg i32 %.0318.lcssa to i64
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %.lr.ph450
  %indvars.iv523 = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next524, %.lr.ph450 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv523
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !11
  %i.kn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.id, ptr noundef nonnull @.str.9, i32 noundef %i.km) #13 ; 0 uses
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1 ; 2 uses
  %exitcond527.not = icmp eq i64 %indvars.iv.next524, %wide.trip.count526
  br i1 %exitcond527.not, label %._crit_edge451, label %.lr.ph450, !llvm.loop !33

._crit_edge451:                                   ; preds = %.lr.ph450, %._crit_edge447
  %fputc372 = call i32 @fputc(i32 10, ptr nonnull %i.id) ; 0 uses
  %i.ko = load i32, ptr %i.bf, align 4, !tbaa !67
  %.not373452 = icmp slt i32 %i.ko, 0
  br i1 %.not373452, label %._crit_edge456, label %.lr.ph455

.lr.ph455:                                        ; preds = %._crit_edge451, %.lr.ph455
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %.lr.ph455 ], [ 0, %._crit_edge451 ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv528
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !11
  %i.kr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.id, ptr noundef nonnull @.str.9, i32 noundef %i.kq) #13 ; 0 uses
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1
  %i.ks = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.kt = sext i32 %i.ks to i64
  %.not373.not = icmp slt i64 %indvars.iv528, %i.kt
  br i1 %.not373.not, label %.lr.ph455, label %._crit_edge456, !llvm.loop !34

._crit_edge456:                                   ; preds = %.lr.ph455, %._crit_edge451
  %fputc375 = call i32 @fputc(i32 10, ptr nonnull %i.id) ; 0 uses
  %i.ku = call i32 @fclose(ptr noundef nonnull %i.id) ; 0 uses
  call void @free(ptr noundef %i.bj) #13
  call void @free(ptr noundef %i.bl) #13
  %.not376 = icmp eq ptr %.0324, null
  br i1 %.not376, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge456
  call void @free(ptr noundef nonnull %.0324) #13
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge456, %bb.ah
  call void @free(ptr noundef %i.bz) #13
  %.not377 = icmp eq ptr %.0325, null
  br i1 %.not377, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %.0325) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @free(ptr noundef %i.io) #13
  call void @free(ptr noundef nonnull %i.jc) #13
  %.not378 = icmp eq ptr %.0, null
  br i1 %.not378, label %bb.al, label %.preheader385

.preheader385:                                    ; preds = %bb.ak
  %i.kv = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph458, label %._crit_edge459

.lr.ph458:                                        ; preds = %.preheader385, %.lr.ph458
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.lr.ph458 ], [ 0, %.preheader385 ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv531
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !101
  call void @free(ptr noundef %i.ky) #13
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.kz = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.la = sext i32 %i.kz to i64
  %i.lb = icmp slt i64 %indvars.iv.next532, %i.la
  br i1 %i.lb, label %.lr.ph458, label %._crit_edge459, !llvm.loop !35

._crit_edge459:                                   ; preds = %.lr.ph458, %.preheader385
  call void @free(ptr noundef nonnull %.0) #13
  br label %bb.al

.thread:                                          ; preds = %._crit_edge463, %bb.l, %bb.n, %bb.q, %bb.s, %bb.u, %._crit_edge473, %._crit_edge470, %bb.j, %._crit_edge467
  %.2350.ph = phi i32 [ -2, %._crit_edge467 ], [ -2, %bb.j ], [ 16, %._crit_edge470 ], [ -2, %._crit_edge473 ], [ -2, %bb.u ], [ -2, %bb.s ], [ -2, %bb.q ], [ -2, %bb.n ], [ -2, %bb.l ], [ -2, %._crit_edge463 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.am

bb.al:                                            ; preds = %.loopexit, %._crit_edge459, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %bb.al, %.thread, %.critedge, %bb.b
  %.3351 = phi i32 [ -2, %bb.b ], [ -2, %.critedge ], [ %.2350.ph, %.thread ], [ 0, %bb.al ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.3351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare i32 @ompi_datatype_create_struct(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ompi_datatype_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ompi_io_ompio_sort_offlen(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -1                           ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #16 ; 21 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !11
  %i.f = icmp sgt i32 %1, 1
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge139

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.g = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, -8                       ; 3 uses
  %i.h = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store <4 x i32> %vec.ind, ptr %i.j, align 4, !tbaa !11
  store <4 x i32> %step.add, ptr %i.k, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.preheader130.preheader, label %.lr.ph.preheader154

.lr.ph.preheader154:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader154, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader154 ] ; 3 uses
end_hunk_0
