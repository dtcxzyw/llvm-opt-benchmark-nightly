Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.iqt = getelementptr inbounds nuw [4 x i8], ptr %i.ips, i64 %i.ilv
  %i.iqu = load float, ptr %i.iqt, align 4, !tbaa !12
  %i.iqv = fcmp reassoc nsz arcp contract afn ole float %i.iqu, %i.ilt
  %i.iqw = zext i1 %i.iqv to i8
  %i.iqx = add i8 %i.iqs, %i.iqw                  ; 2 uses
  store i8 %i.iqx, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.iqy = getelementptr inbounds nuw [488 x i8], ptr %i.ipr, i64 %i.ikt ; 3 uses
  %i.iqz = getelementptr inbounds [4 x i8], ptr %i.iqy, i64 %i.ilu
  %i.ira = load float, ptr %i.iqz, align 4, !tbaa !12
  %i.irb = fcmp reassoc nsz arcp contract afn ole float %i.ira, %i.ilt
  %i.irc = zext i1 %i.irb to i8
  %i.ird = add i8 %i.iqx, %i.irc
  %i.ire = getelementptr inbounds nuw [4 x i8], ptr %i.iqy, i64 %indvars.iv1464.i
  %i.irf = load float, ptr %i.ire, align 4, !tbaa !12
  %i.irg = fcmp reassoc nsz arcp contract afn ole float %i.irf, %i.ilt
  %i.irh = zext i1 %i.irg to i8
  %i.iri = add i8 %i.ird, %i.irh
  %i.irj = getelementptr inbounds nuw [4 x i8], ptr %i.iqy, i64 %i.ilv
  %i.irk = load float, ptr %i.irj, align 4, !tbaa !12
  %i.irl = fcmp reassoc nsz arcp contract afn ole float %i.irk, %i.ilt
  %i.irm = zext i1 %i.irl to i8
  %i.irn = add i8 %i.iri, %i.irm
  store i8 %i.irn, ptr %gep1203.us.i, align 1, !tbaa !133
  %indvars.iv.next1460.i = add nuw nsw i64 %indvars.iv1459.i, 1 ; 2 uses
  %exitcond1463.not.i = icmp eq i64 %indvars.iv.next1460.i, %i.aqb
  br i1 %exitcond1463.not.i, label %middle.block2717, label %.preheader1038.us.i, !llvm.loop !250

middle.block2717:                                 ; preds = %vector.body2690, %.preheader1038.us.i
  %i.iro = icmp samesign ult i64 %i.ilv, %i.ikg
  br i1 %i.iro, label %.preheader1043.us.i, label %._crit_edge1206.us.i

._crit_edge1206.us.i:                             ; preds = %middle.block2717
  %i.irp = icmp slt i64 %i.ikt, %i.gcu
  %indvar.next2624 = add i64 %indvar2623, 1
  br i1 %i.irp, label %.preheader1054.us.i, label %.preheader1058.us.i

.preheader1058.us.i:                              ; preds = %._crit_edge1206.us.i, %.preheader1054.lr.ph.us.i, %bb.nk
  %i.irq = sub nsw i32 %i.ifg, %i.aph             ; 4 uses
  br i1 %i.gcl, label %.preheader1053.us.preheader.i, label %._crit_edge1241.split.us.i

.preheader1053.us.preheader.i:                    ; preds = %.preheader1058.us.i
  %i.irr = icmp slt i32 %i.apw, %i.irq
  %i.irs = sext i32 %i.irq to i64
  br i1 %i.irr, label %.preheader1053.us.i.us, label %.preheader1053.us.i

.preheader1053.us.i.us:                           ; preds = %.preheader1053.us.preheader.i, %._crit_edge1216.us.i.loopexit.us
  %indvars.iv1482.i.us = phi i64 [ %indvars.iv.next1483.i.us, %._crit_edge1216.us.i.loopexit.us ], [ 0, %.preheader1053.us.preheader.i ] ; 4 uses
  %i.irt = mul i64 %indvars.iv1482.i.us, 14884
  %i.iru = getelementptr inbounds nuw [14884 x i8], ptr %i.fyl, i64 %indvars.iv1482.i.us
  %i.irv = getelementptr inbounds nuw [14884 x i8], ptr %i.fyi, i64 %indvars.iv1482.i.us
  %i.irw = getelementptr i8, ptr %i.gbc, i64 %i.irt
  br label %.preheader1037.lr.ph.us.us.i.us

.preheader1037.lr.ph.us.us.i.us:                  ; preds = %.preheader1053.us.i.us, %._crit_edge1213.us.us.i.us
  %indvar4534 = phi i64 [ 0, %.preheader1053.us.i.us ], [ %indvar.next4535, %._crit_edge1213.us.us.i.us ] ; 2 uses
  %indvars.iv1479.i.us = phi i64 [ %i.apv, %.preheader1053.us.i.us ], [ %i.isb, %._crit_edge1213.us.us.i.us ] ; 3 uses
  %i.irx = mul nuw nsw i64 %indvar4534, 122
  %scevgep4536 = getelementptr i8, ptr %i.irw, i64 %i.irx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, i8 0, i64 5, i1 false)
  %i.iry = getelementptr inbounds nuw [122 x i8], ptr %i.iru, i64 %indvars.iv1479.i.us ; 2 uses
  %i.irz = getelementptr i8, ptr %i.iry, i64 %i.apv
  %i.isa = getelementptr i8, ptr %i.irz, i64 -5
  store i8 0, ptr %i.isa, align 1, !tbaa !133
  %i.isb = add nuw nsw i64 %indvars.iv1479.i.us, 1 ; 3 uses
  %load_initial = load i8, ptr %scevgep4536, align 1
  br label %.preheader1037.us.us.i.us

.preheader1037.us.us.i.us:                        ; preds = %.preheader1037.us.us.i.us, %.preheader1037.lr.ph.us.us.i.us
  %store_forwarded = phi i8 [ %load_initial, %.preheader1037.lr.ph.us.us.i.us ], [ %i.isz, %.preheader1037.us.us.i.us ]
  %indvars.iv1476.i.us = phi i64 [ %i.aqg, %.preheader1037.lr.ph.us.us.i.us ], [ %indvars.iv.next1477.i.us, %.preheader1037.us.us.i.us ] ; 4 uses
  %invariant.gep1208.us.us.i.us = getelementptr i8, ptr %i.irv, i64 %indvars.iv1476.i.us ; 2 uses
  %i.isc = getelementptr [122 x i8], ptr %invariant.gep1208.us.us.i.us, i64 %indvars.iv1479.i.us ; 4 uses
  %i.isd = getelementptr i8, ptr %i.isc, i64 -242
  %i.ise = load i8, ptr %i.isd, align 1, !tbaa !133
  %i.isf = getelementptr i8, ptr %i.isc, i64 -120
  %i.isg = load i8, ptr %i.isf, align 1, !tbaa !133
  %i.ish = getelementptr i8, ptr %i.isc, i64 2
  %i.isi = load i8, ptr %i.ish, align 1, !tbaa !133
  %gep1209.us.us.3.i.us = getelementptr [122 x i8], ptr %invariant.gep1208.us.us.i.us, i64 %i.isb
  %i.isj = getelementptr i8, ptr %gep1209.us.us.3.i.us, i64 2
  %i.isk = load i8, ptr %i.isj, align 1, !tbaa !133
  %i.isl = getelementptr i8, ptr %i.isc, i64 246
  %i.ism = load i8, ptr %i.isl, align 1, !tbaa !133
  %i.isn = insertelement <4 x i8> poison, i8 %i.isg, i64 0
  %i.iso = insertelement <4 x i8> %i.isn, i8 %i.ise, i64 1
  %i.isp = insertelement <4 x i8> %i.iso, i8 %i.isi, i64 2
  %i.isq = insertelement <4 x i8> %i.isp, i8 %i.isk, i64 3
  %i.isr = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.isq)
  %op.rdx4591 = add i8 %i.isr, %i.ism             ; 2 uses
  %i.iss = getelementptr i8, ptr %i.iry, i64 %indvars.iv1476.i.us
  %i.ist = trunc nsw i64 %indvars.iv1476.i.us to i32
  %i.isu = srem i32 %i.ist, 5
  %i.isv = sext i32 %i.isu to i64
  %i.isw = getelementptr inbounds i8, ptr %i.f, i64 %i.isv ; 2 uses
  %i.isx = load i8, ptr %i.isw, align 1, !tbaa !133
  %i.isy = add i8 %store_forwarded, %op.rdx4591
  %i.isz = sub i8 %i.isy, %i.isx                  ; 2 uses
  store i8 %i.isz, ptr %i.iss, align 1, !tbaa !133
  store i8 %op.rdx4591, ptr %i.isw, align 1, !tbaa !133
  %indvars.iv.next1477.i.us = add nsw i64 %indvars.iv1476.i.us, 1 ; 2 uses
  %i.ita = icmp slt i64 %indvars.iv.next1477.i.us, %i.irs
  br i1 %i.ita, label %.preheader1037.us.us.i.us, label %._crit_edge1213.us.us.i.us

._crit_edge1213.us.us.i.us:                       ; preds = %.preheader1037.us.us.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.itb = icmp slt i64 %i.isb, %i.gcv
  %indvar.next4535 = add i64 %indvar4534, 1
  br i1 %i.itb, label %.preheader1037.lr.ph.us.us.i.us, label %._crit_edge1216.us.i.loopexit.us

._crit_edge1216.us.i.loopexit.us:                 ; preds = %._crit_edge1213.us.us.i.us
  %indvars.iv.next1483.i.us = add nuw nsw i64 %indvars.iv1482.i.us, 1 ; 2 uses
  %exitcond1486.not.i.us = icmp eq i64 %indvars.iv.next1483.i.us, %i.aqb
  br i1 %exitcond1486.not.i.us, label %.preheader1057.split.us.i, label %.preheader1053.us.i.us

.preheader1053.us.i:                              ; preds = %.preheader1053.us.preheader.i, %._crit_edge1216.us.i.loopexit1008.3
  %indvars.iv1482.i = phi i64 [ %indvars.iv.next1483.i.3, %._crit_edge1216.us.i.loopexit1008.3 ], [ 0, %.preheader1053.us.preheader.i ] ; 5 uses
  %gep = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nm, %.preheader1053.us.i
  %indvars.iv1470.i = phi i64 [ %indvars.iv.next1471.i, %bb.nm ], [ %i.apv, %.preheader1053.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i = getelementptr [122 x i8], ptr %gep, i64 %indvars.iv1470.i
  %i.itc = getelementptr i8, ptr %gep1218.us.i, i64 -5
  store i8 0, ptr %i.itc, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i = add nuw nsw i64 %indvars.iv1470.i, 1 ; 2 uses
  %i.itd = icmp slt i64 %indvars.iv.next1471.i, %i.gcv
  br i1 %i.itd, label %bb.nm, label %._crit_edge1216.us.i.loopexit1008

._crit_edge1216.us.i.loopexit1008:                ; preds = %bb.nm
  %i.ite = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nn, %._crit_edge1216.us.i.loopexit1008
  %indvars.iv1470.i.1 = phi i64 [ %indvars.iv.next1471.i.1, %bb.nn ], [ %i.apv, %._crit_edge1216.us.i.loopexit1008 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.1 = getelementptr [122 x i8], ptr %i.ite, i64 %indvars.iv1470.i.1
  %i.itf = getelementptr i8, ptr %gep1218.us.i.1, i64 14879
  store i8 0, ptr %i.itf, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.1 = add nuw nsw i64 %indvars.iv1470.i.1, 1 ; 2 uses
  %i.itg = icmp slt i64 %indvars.iv.next1471.i.1, %i.gcv
  br i1 %i.itg, label %bb.nn, label %._crit_edge1216.us.i.loopexit1008.1

._crit_edge1216.us.i.loopexit1008.1:              ; preds = %bb.nn
  %i.ith = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.no

bb.no:                                            ; preds = %bb.no, %._crit_edge1216.us.i.loopexit1008.1
  %indvars.iv1470.i.2 = phi i64 [ %indvars.iv.next1471.i.2, %bb.no ], [ %i.apv, %._crit_edge1216.us.i.loopexit1008.1 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.2 = getelementptr [122 x i8], ptr %i.ith, i64 %indvars.iv1470.i.2
  %i.iti = getelementptr i8, ptr %gep1218.us.i.2, i64 29763
  store i8 0, ptr %i.iti, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.2 = add nuw nsw i64 %indvars.iv1470.i.2, 1 ; 2 uses
  %i.itj = icmp slt i64 %indvars.iv.next1471.i.2, %i.gcv
  br i1 %i.itj, label %bb.no, label %._crit_edge1216.us.i.loopexit1008.2

._crit_edge1216.us.i.loopexit1008.2:              ; preds = %bb.no
  %i.itk = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.np

bb.np:                                            ; preds = %bb.np, %._crit_edge1216.us.i.loopexit1008.2
  %indvars.iv1470.i.3 = phi i64 [ %indvars.iv.next1471.i.3, %bb.np ], [ %i.apv, %._crit_edge1216.us.i.loopexit1008.2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.3 = getelementptr [122 x i8], ptr %i.itk, i64 %indvars.iv1470.i.3
  %i.itl = getelementptr i8, ptr %gep1218.us.i.3, i64 44647
  store i8 0, ptr %i.itl, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.3 = add nuw nsw i64 %indvars.iv1470.i.3, 1 ; 2 uses
  %i.itm = icmp slt i64 %indvars.iv.next1471.i.3, %i.gcv
  br i1 %i.itm, label %bb.np, label %._crit_edge1216.us.i.loopexit1008.3

._crit_edge1216.us.i.loopexit1008.3:              ; preds = %bb.np
  %indvars.iv.next1483.i.3 = add nuw nsw i64 %indvars.iv1482.i, 4 ; 2 uses
  %exitcond1486.not.i.3 = icmp eq i64 %indvars.iv.next1483.i.3, %i.aqb
  br i1 %exitcond1486.not.i.3, label %.preheader1057.split.us.i, label %.preheader1053.us.i

.preheader1052.us.i:                              ; preds = %.preheader1052.us.preheader.i, %._crit_edge1239.us.i
  %indvars.iv1513.i = phi i64 [ %i.apv, %.preheader1052.us.preheader.i ], [ %indvars.iv.next1514.i, %._crit_edge1239.us.i ] ; 4 uses
  %invariant.gep1220.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.fyl, i64 %indvars.iv1513.i
  %invariant.gep1232.us.i = getelementptr inbounds nuw [1464 x i8], ptr %i.fxj, i64 %indvars.iv1513.i
  %i.itn = trunc i64 %indvars.iv1513.i to i32
  %i.ito = add i32 %indvars.iv1341.i, %i.itn
  %i.itp = mul i32 %i.ito, %i.bo
  %i.itq = add i32 %i.itp, %indvars.iv1336.i
  br label %bb.nq

bb.nq:                                            ; preds = %.preheader1042.us.i, %.preheader1052.us.i
  %indvars.iv1510.i = phi i64 [ %indvars.iv.next1511.i, %.preheader1042.us.i ], [ %i.apv, %.preheader1052.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 0, ptr %i.g, align 8
  %invariant.gep1222.us.i = getelementptr inbounds nuw i8, ptr %invariant.gep1220.us.i, i64 %indvars.iv1510.i ; 9 uses
  br i1 %i.apa, label %vector.body2614, label %scalar.ph2610

vector.body2614:                                  ; preds = %bb.nq, %vector.body2614
  %index2615 = phi i64 [ %index.next2617, %vector.body2614 ], [ 0, %bb.nq ] ; 10 uses
  %vec.phi2616 = phi <8 x i32> [ %7, %vector.body2614 ], [ zeroinitializer, %bb.nq ]
  %i.itr = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.its = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itt = getelementptr inbounds nuw i8, ptr %i.its, i64 14884
  %i.itu = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itv = getelementptr inbounds nuw i8, ptr %i.itu, i64 29768
  %i.itw = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itx = getelementptr inbounds nuw i8, ptr %i.itw, i64 44652
  %i.ity = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itz = getelementptr inbounds nuw i8, ptr %i.ity, i64 59536
  %i.iua = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.iub = getelementptr inbounds nuw i8, ptr %i.iua, i64 74420
  %i.iuc = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.iud = getelementptr inbounds nuw i8, ptr %i.iuc, i64 89304
  %i.iue = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.iuf = getelementptr inbounds nuw i8, ptr %i.iue, i64 104188
  %i.iug = load i8, ptr %i.itr, align 1, !tbaa !133
  %i.iuh = load i8, ptr %i.itt, align 1, !tbaa !133
  %i.iui = load i8, ptr %i.itv, align 1, !tbaa !133
  %i.iuj = load i8, ptr %i.itx, align 1, !tbaa !133
  %i.iuk = load i8, ptr %i.itz, align 1, !tbaa !133
  %i.iul = load i8, ptr %i.iub, align 1, !tbaa !133
  %i.ium = load i8, ptr %i.iud, align 1, !tbaa !133
  %i.iun = load i8, ptr %i.iuf, align 1, !tbaa !133
  %i.iuo = insertelement <8 x i8> poison, i8 %i.iug, i64 0
  %i.iup = insertelement <8 x i8> %i.iuo, i8 %i.iuh, i64 1
  %i.iuq = insertelement <8 x i8> %i.iup, i8 %i.iui, i64 2
  %i.iur = insertelement <8 x i8> %i.iuq, i8 %i.iuj, i64 3
  %i.ius = insertelement <8 x i8> %i.iur, i8 %i.iuk, i64 4
  %i.iut = insertelement <8 x i8> %i.ius, i8 %i.iul, i64 5
  %i.iuu = insertelement <8 x i8> %i.iut, i8 %i.ium, i64 6
  %i.iuv = insertelement <8 x i8> %i.iuu, i8 %i.iun, i64 7 ; 2 uses
  %i.iuw = getelementptr inbounds nuw i8, ptr %i.g, i64 %index2615
  store <8 x i8> %i.iuv, ptr %i.iuw, align 8, !tbaa !133
  %6 = zext <8 x i8> %i.iuv to <8 x i32>
  %7 = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi2616, <8 x i32> %6) ; 2 uses
  %index.next2617 = add nuw i64 %index2615, 8     ; 2 uses
  %i.iux = icmp eq i64 %index.next2617, %n.vec2613
  br i1 %i.iux, label %middle.block2618, label %vector.body2614, !llvm.loop !251

middle.block2618:                                 ; preds = %vector.body2614
  %8 = call i32 @llvm.vector.reduce.umax.v8i32(<8 x i32> %7)
  br label %.loopexit

scalar.ph2610:                                    ; preds = %bb.nq, %scalar.ph2610
  %indvars.iv1487.i = phi i64 [ %indvars.iv.next1488.i, %scalar.ph2610 ], [ 0, %bb.nq ] ; 3 uses
  %.08291224.us.i = phi i32 [ %..0829.us.i, %scalar.ph2610 ], [ 0, %bb.nq ]
  %gep1223.us.i = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %indvars.iv1487.i
  %i.iuy = load i8, ptr %gep1223.us.i, align 1, !tbaa !133 ; 2 uses
  %i.iuz = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv1487.i
  store i8 %i.iuy, ptr %i.iuz, align 1, !tbaa !133
  %i.iva = zext i8 %i.iuy to i32
  %..0829.us.i = tail call i32 @llvm.umax.i32(i32 %.08291224.us.i, i32 %i.iva) ; 2 uses
  %indvars.iv.next1488.i = add nuw nsw i64 %indvars.iv1487.i, 1 ; 2 uses
  %exitcond1491.not.i = icmp eq i64 %indvars.iv.next1488.i, %i.aqb
  br i1 %exitcond1491.not.i, label %.loopexit, label %scalar.ph2610, !llvm.loop !252

.loopexit:                                        ; preds = %scalar.ph2610, %middle.block2618
  %..0829.us.i.lcssa = phi i32 [ %8, %middle.block2618 ], [ %..0829.us.i, %scalar.ph2610 ] ; 2 uses
  %i.ivb = lshr i32 %..0829.us.i.lcssa, 3
  %i.ivc = sub nsw i32 %..0829.us.i.lcssa, %i.ivb
  br i1 %.not1292.i, label %._crit_edge1229.us.i, label %vector.body2602

vector.body2602:                                  ; preds = %.loopexit, %vector.body2602
  %index2603 = phi i64 [ %index.next2606, %vector.body2602 ], [ 0, %.loopexit ] ; 2 uses
  %i.ivd = getelementptr i8, ptr %i.g, i64 %index2603 ; 3 uses
  %wide.load2604 = load <4 x i8>, ptr %i.ivd, align 4, !tbaa !133 ; 2 uses
  %i.ive = getelementptr i8, ptr %i.ivd, i64 4    ; 2 uses
  %wide.load2605 = load <4 x i8>, ptr %i.ive, align 4, !tbaa !133 ; 2 uses
  %i.ivf = icmp ult <4 x i8> %wide.load2604, %wide.load2605
  %i.ivg = icmp ugt <4 x i8> %wide.load2604, %wide.load2605
  call void @llvm.masked.store.v4i8.p0(<4 x i8> zeroinitializer, ptr align 4 %i.ive, <4 x i1> %i.ivg), !tbaa !133
  call void @llvm.masked.store.v4i8.p0(<4 x i8> zeroinitializer, ptr align 4 %i.ivd, <4 x i1> %i.ivf), !tbaa !133
  %index.next2606 = add nuw i64 %index2603, 4     ; 2 uses
  %i.ivh = icmp eq i64 %index.next2606, %wide.trip.count1495.i
  br i1 %i.ivh, label %._crit_edge1229.us.i, label %vector.body2602, !llvm.loop !253

._crit_edge1229.us.i:                             ; preds = %vector.body2602, %.loopexit
  %i.ivi = and i32 %i.ivc, 255                    ; 2 uses
  %invariant.gep1234.us.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep1232.us.i, i64 %indvars.iv1510.i ; 2 uses
  br i1 %i.apa, label %vector.ph2567, label %scalar.ph2565

vector.ph2567:                                    ; preds = %._crit_edge1229.us.i
  %broadcast.splatinsert2569 = insertelement <8 x i32> poison, i32 %i.ivi, i64 0
  %broadcast.splat2570 = shufflevector <8 x i32> %broadcast.splatinsert2569, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body2571

vector.body2571:                                  ; preds = %vector.body2571, %vector.ph2567
  %index2572 = phi i64 [ 0, %vector.ph2567 ], [ %index.next2589, %vector.body2571 ] ; 2 uses
  %vec.phi2573 = phi <8 x float> [ zeroinitializer, %vector.ph2567 ], [ %predphi2585, %vector.body2571 ] ; 2 uses
  %vec.phi2574 = phi <8 x float> [ zeroinitializer, %vector.ph2567 ], [ %predphi2586, %vector.body2571 ] ; 2 uses
  %vec.phi2575 = phi <8 x float> [ zeroinitializer, %vector.ph2567 ], [ %predphi2587, %vector.body2571 ] ; 2 uses
  %vec.phi2576 = phi <8 x float> [ zeroinitializer, %vector.ph2567 ], [ %predphi2588, %vector.body2571 ] ; 2 uses
  %vec.ind2577 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph2567 ], [ %vec.ind.next2590, %vector.body2571 ] ; 2 uses
  %i.ivj = getelementptr inbounds nuw i8, ptr %i.g, i64 %index2572
  %wide.load2578 = load <8 x i8>, ptr %i.ivj, align 8, !tbaa !133
  %i.ivk = zext <8 x i8> %wide.load2578 to <8 x i32>
  %i.ivl = icmp samesign ule <8 x i32> %broadcast.splat2570, %i.ivk ; 7 uses
  %wide.gep2579 = getelementptr inbounds nuw [178608 x i8], ptr %invariant.gep1234.us.i, <8 x i64> %vec.ind2577 ; 3 uses
  %wide.masked.gather2580 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2579, <8 x i1> %i.ivl, <8 x float> poison), !tbaa !12
  %i.ivm = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2580, %vec.phi2573
  %wide.gep2581 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2579, i64 4
  %wide.masked.gather2582 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2581, <8 x i1> %i.ivl, <8 x float> poison), !tbaa !12
  %i.ivn = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2582, %vec.phi2574
  %wide.gep2583 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2579, i64 8
  %wide.masked.gather2584 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2583, <8 x i1> %i.ivl, <8 x float> poison), !tbaa !12
  %i.ivo = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2584, %vec.phi2575
  %i.ivp = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi2576, splat (float 1.000000e+00)
  %predphi2585 = select nsz <8 x i1> %i.ivl, <8 x float> %i.ivm, <8 x float> %vec.phi2573 ; 2 uses
  %predphi2586 = select nsz <8 x i1> %i.ivl, <8 x float> %i.ivn, <8 x float> %vec.phi2574 ; 2 uses
  %predphi2587 = select nsz <8 x i1> %i.ivl, <8 x float> %i.ivo, <8 x float> %vec.phi2575 ; 2 uses
  %predphi2588 = select nsz <8 x i1> %i.ivl, <8 x float> %i.ivp, <8 x float> %vec.phi2576 ; 2 uses
  %index.next2589 = add nuw i64 %index2572, 8     ; 2 uses
  %vec.ind.next2590 = add nuw nsw <8 x i64> %vec.ind2577, splat (i64 8)
  %i.ivq = icmp eq i64 %index.next2589, %n.vec2568
  br i1 %i.ivq, label %middle.block2591, label %vector.body2571, !llvm.loop !254

middle.block2591:                                 ; preds = %vector.body2571
  %i.ivr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %predphi2585)
  %i.ivs = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %predphi2586)
  %i.ivt = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %predphi2587)
  %i.ivu = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %predphi2588)
  %i.ivv = insertelement <2 x float> poison, float %i.ivr, i64 0
  %i.ivw = insertelement <2 x float> %i.ivv, float %i.ivs, i64 1
  br label %.preheader1042.us.i

scalar.ph2565:                                    ; preds = %._crit_edge1229.us.i, %bb.nr
  %.sroa.9.0.i = phi nsz float [ %.sroa.9.1.i514, %bb.nr ], [ 0.000000e+00, %._crit_edge1229.us.i ] ; 2 uses
  %.sroa.12.0.i513 = phi nsz float [ %.sroa.12.1.i515, %bb.nr ], [ 0.000000e+00, %._crit_edge1229.us.i ] ; 2 uses
  %indvars.iv1501.i = phi i64 [ %indvars.iv.next1502.i, %bb.nr ], [ 0, %._crit_edge1229.us.i ] ; 3 uses
  %i.ivx = phi <2 x float> [ %i.iwh, %bb.nr ], [ zeroinitializer, %._crit_edge1229.us.i ] ; 2 uses
  %i.ivy = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv1501.i
  %i.ivz = load i8, ptr %i.ivy, align 1, !tbaa !133
  %i.iwa = zext i8 %i.ivz to i32
  %.not956.us.i = icmp samesign ugt i32 %i.ivi, %i.iwa
  br i1 %.not956.us.i, label %bb.nr, label %.preheader1036.us.i

.preheader1036.us.i:                              ; preds = %scalar.ph2565
  %gep1235.us.i = getelementptr inbounds nuw [178608 x i8], ptr %invariant.gep1234.us.i, i64 %indvars.iv1501.i ; 2 uses
  %i.iwb = load <2 x float>, ptr %gep1235.us.i, align 4, !tbaa !12
  %i.iwc = fadd reassoc nsz arcp contract afn <2 x float> %i.iwb, %i.ivx
  %i.iwd = getelementptr inbounds nuw i8, ptr %gep1235.us.i, i64 8
  %i.iwe = load float, ptr %i.iwd, align 4, !tbaa !12
  %i.iwf = fadd reassoc nsz arcp contract afn float %i.iwe, %.sroa.9.0.i
  %i.iwg = fadd reassoc nsz arcp contract afn float %.sroa.12.0.i513, 1.000000e+00
  br label %bb.nr

bb.nr:                                            ; preds = %.preheader1036.us.i, %scalar.ph2565
  %.sroa.9.1.i514 = phi nsz float [ %.sroa.9.0.i, %scalar.ph2565 ], [ %i.iwf, %.preheader1036.us.i ] ; 2 uses
  %.sroa.12.1.i515 = phi nsz float [ %.sroa.12.0.i513, %scalar.ph2565 ], [ %i.iwg, %.preheader1036.us.i ] ; 2 uses
  %i.iwh = phi <2 x float> [ %i.ivx, %scalar.ph2565 ], [ %i.iwc, %.preheader1036.us.i ] ; 2 uses
  %indvars.iv.next1502.i = add nuw nsw i64 %indvars.iv1501.i, 1 ; 2 uses
  %exitcond1505.not.i = icmp eq i64 %indvars.iv.next1502.i, %i.aqb
  br i1 %exitcond1505.not.i, label %.preheader1042.us.i, label %scalar.ph2565, !llvm.loop !255

.preheader1042.us.i:                              ; preds = %bb.nr, %middle.block2591
  %.sroa.9.1.i514.lcssa = phi float [ %i.ivt, %middle.block2591 ], [ %.sroa.9.1.i514, %bb.nr ]
  %.sroa.12.1.i515.lcssa = phi float [ %i.ivu, %middle.block2591 ], [ %.sroa.12.1.i515, %bb.nr ] ; 2 uses
  %i.iwi = phi <2 x float> [ %i.ivw, %middle.block2591 ], [ %i.iwh, %bb.nr ]
  %i.iwj = trunc nuw nsw i64 %indvars.iv1510.i to i32
  %i.iwk = add i32 %i.itq, %i.iwj
  %i.iwl = shl nsw i32 %i.iwk, 2
  %i.iwm = sext i32 %i.iwl to i64
  %i.iwn = insertelement <2 x float> poison, float %.sroa.12.1.i515.lcssa, i64 0
  %i.iwo = shufflevector <2 x float> %i.iwn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iwp = fdiv reassoc nsz arcp contract afn <2 x float> %i.iwi, %i.iwo
  %i.iwq = getelementptr inbounds [4 x i8], ptr %i.anw, i64 %i.iwm ; 2 uses
  %i.iwr = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.iwp, <2 x float> zeroinitializer)
  store <2 x float> %i.iwr, ptr %i.iwq, align 4, !tbaa !12
  %i.iws = fdiv reassoc nsz arcp contract afn float %.sroa.9.1.i514.lcssa, %.sroa.12.1.i515.lcssa
  %i.iwt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iws, float 0.000000e+00)
  %i.iwu = getelementptr i8, ptr %i.iwq, i64 8
  store float %i.iwt, ptr %i.iwu, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %indvars.iv.next1511.i = add nuw nsw i64 %indvars.iv1510.i, 1 ; 2 uses
  %i.iwv = icmp samesign ult i64 %indvars.iv.next1511.i, %i.iwz
  br i1 %i.iwv, label %bb.nq, label %._crit_edge1239.us.i

._crit_edge1241.split.us.i:                       ; preds = %._crit_edge1239.us.i, %.preheader1057.split.us.i, %.preheader1058.us.i
  %indvars.iv.next1337.i = add i32 %indvars.iv1336.i, %reass.sub955.i ; 2 uses
  %i.iww = icmp slt i32 %indvars.iv.next1337.i, %i.apk
  %indvars.iv.next1362.i = add i32 %indvars.iv1361.i, %reass.sub955.i
  %indvars.iv.next1376.i = add i32 %indvars.iv1375.i, %reass.sub955.i
  %indvars.iv.next1403.i = add i32 %indvars.iv1402.i, %reass.sub955.i
  %indvars.iv.next1422.i = add i32 %indvars.iv1421.i, %reass.sub955.i
  %indvars.iv.next1170 = add i32 %indvars.iv1169, %reass.sub955.i
  %indvar.next2627 = add i32 %indvar2626, 1
  br i1 %i.iww, label %bb.ll, label %._crit_edge1247.us.i

.preheader1057.split.us.i:                        ; preds = %._crit_edge1216.us.i.loopexit1008.3, %._crit_edge1216.us.i.loopexit.us
  %i.iwx = icmp slt i32 %i.aph, %i.irq
  br i1 %i.iwx, label %.preheader1052.us.preheader.i, label %._crit_edge1241.split.us.i

._crit_edge1239.us.i:                             ; preds = %.preheader1042.us.i
  %indvars.iv.next1514.i = add nuw nsw i64 %indvars.iv1513.i, 1 ; 2 uses
  %i.iwy = icmp slt i64 %indvars.iv.next1514.i, %i.gcv
  br i1 %i.iwy, label %.preheader1052.us.i, label %._crit_edge1241.split.us.i

.preheader1052.us.preheader.i:                    ; preds = %.preheader1057.split.us.i
  %i.iwz = zext nneg i32 %i.irq to i64
  br label %.preheader1052.us.i

._crit_edge1247.us.i:                             ; preds = %._crit_edge1241.split.us.i
  %indvars.iv.next1342.i = add i32 %indvars.iv1341.i, %reass.sub955.i ; 2 uses
  %i.ixa = icmp slt i32 %indvars.iv.next1342.i, %i.fyg
  %indvars.iv.next1367.i = add i32 %indvars.iv1366.i, %reass.sub955.i
  %indvars.iv.next1381.i = add i32 %indvars.iv1380.i, %reass.sub955.i
  %indvars.iv.next1408.i = add i32 %indvars.iv1407.i, %reass.sub955.i
  %indvars.iv.next1427.i = add i32 %indvars.iv1426.i, %reass.sub955.i
  %indvars.iv.next1178 = add i32 %indvars.iv1177, %reass.sub955.i
  br i1 %i.ixa, label %.lr.ph1246.us.i, label %._crit_edge1251.i

.preheader1064.i:                                 ; preds = %.loopexit1063.4.i, %.preheader1065.i
  %indvars.iv.i497 = phi i64 [ 0, %.preheader1065.i ], [ %indvars.iv.next.i507, %.loopexit1063.4.i ] ; 4 uses
  %.18451077.i = phi i16 [ %.08441080.i, %.preheader1065.i ], [ %.3.4.i, %.loopexit1063.4.i ]
  %.18491076.i = phi i16 [ %.08481079.i, %.preheader1065.i ], [ %.3851.4.i, %.loopexit1063.4.i ]
  %i.ixb = trunc nuw nsw i64 %indvars.iv.i497 to i32 ; 4 uses
  %i.ixc = trunc nuw nsw i64 %indvars.iv.i497 to i16
  %i.ixd = getelementptr inbounds nuw [16 x i8], ptr %i.fxn, i64 %indvars.iv.i497 ; 32 uses
  %i.ixe = add nuw nsw i32 %i.ixb, 600
  %i.ixf = or i32 %i.ixb, 600
  %i.ixg = insertelement <2 x i32> poison, i32 %i.ixf, i64 0
  %i.ixh = insertelement <2 x i32> %i.ixg, i32 %i.ixe, i64 1
  %i.ixi = urem <2 x i32> %i.ixh, splat (i32 6)   ; 2 uses
  %i.ixj = extractelement <2 x i32> %i.ixi, i64 0
  %i.ixk = zext nneg i32 %i.ixj to i64
  %i.ixl = getelementptr inbounds nuw i8, ptr %i.fxw, i64 %i.ixk
  %i.ixm = load i8, ptr %i.ixl, align 1, !tbaa !133
  %i.ixn = icmp eq i8 %i.ixm, 1                   ; 3 uses
  %i.ixo = select i1 %i.ixn, i32 2, i32 1         ; 10 uses
  %i.ixp = zext i1 %i.ixn to i64
  %i.ixq = getelementptr inbounds nuw [32 x i8], ptr @xtrans_markesteijn_interpolate.patt, i64 %i.ixp ; 26 uses
  %i.ixr = extractelement <2 x i32> %i.ixi, i64 1
  %i.ixs = zext nneg i32 %i.ixr to i64            ; 2 uses
  %i.ixt = getelementptr inbounds nuw i8, ptr %i.fxz, i64 %i.ixs
  %i.ixu = load i8, ptr %i.ixt, align 1, !tbaa !133
  %i.ixv = icmp eq i8 %i.ixu, 1                   ; 3 uses
  %.not1672.i = select i1 %i.ixn, i1 true, i1 %i.ixv
  br i1 %.not1672.i, label %.loopexit1063.i, label %.preheader1062.i

bb.ns:                                            ; preds = %.loopexit1063.4.i
  %indvars.iv.next1326.i = add nuw nsw i64 %indvars.iv1325.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_vng_lininterpolate:bb.a
  %i.ui = fmul reassoc nsz arcp contract afn float %i.ue, %i.uh
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tw, i64 12
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !15
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ul ; 2 uses
  %i.un = load float, ptr %i.um, align 4, !tbaa !12
  %i.uo = fadd reassoc nsz arcp contract afn float %i.un, %i.ui
  store float %i.uo, ptr %i.um, align 4, !tbaa !12
  %i.up = getelementptr inbounds nuw i8, ptr %i.tw, i64 16 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.up, %.lr.ph.prol ]
  %.0178269.unr = phi i32 [ %i.ty, %.lr.ph.preheader ], [ %i.tz, %.lr.ph.prol ]
  %.0179268.unr = phi ptr [ %i.tx, %.lr.ph.preheader ], [ %i.up, %.lr.ph.prol ]
  %i.uq = icmp eq i32 %i.ty, 1
  br i1 %i.uq, label %.lr.ph273.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0178269 = phi i32 [ %i.vh, %.lr.ph ], [ %.0178269.unr, %.lr.ph.prol.loopexit ]
  %.0179268 = phi ptr [ %i.vx, %.lr.ph ], [ %.0179268.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ur = load i32, ptr %.0179268, align 4, !tbaa !15
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %.1183, i64 %i.us
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !12
  %i.uv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uu, float 0.000000e+00)
  %i.uw = getelementptr inbounds nuw i8, ptr %.0179268, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !15
  %i.uy = sitofp reassoc nsz arcp contract afn i32 %i.ux to float
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uv, %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %.0179268, i64 8
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !15
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.vc ; 2 uses
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !12
  %i.vf = fadd reassoc nsz arcp contract afn float %i.ve, %i.uz
  store float %i.vf, ptr %i.vd, align 4, !tbaa !12
  %i.vg = getelementptr inbounds nuw i8, ptr %.0179268, i64 12
  %i.vh = add nsw i32 %.0178269, -2               ; 2 uses
  %i.vi = load i32, ptr %i.vg, align 4, !tbaa !15
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %.1183, i64 %i.vj
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !12
  %i.vm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vl, float 0.000000e+00)
  %i.vn = getelementptr inbounds nuw i8, ptr %.0179268, i64 16
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !15
  %i.vp = sitofp reassoc nsz arcp contract afn i32 %i.vo to float
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vm, %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %.0179268, i64 20
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !15
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.vt ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !12
  %i.vw = fadd reassoc nsz arcp contract afn float %i.vv, %i.vq
  store float %i.vw, ptr %i.vu, align 4, !tbaa !12
  %i.vx = getelementptr inbounds nuw i8, ptr %.0179268, i64 24 ; 2 uses
  %.not209.1 = icmp eq i32 %i.vh, 0
  br i1 %.not209.1, label %.lr.ph273.preheader, label %.lr.ph

.lr.ph273.preheader:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.bb
  %.1272.ph = phi ptr [ %i.tx, %bb.bb ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.vx, %.lr.ph ]
  br label %.lr.ph273

._crit_edge274:                                   ; preds = %.lr.ph273
  %i.vy = load float, ptr %.1183, align 4, !tbaa !12
  %i.vz = load i32, ptr %i.wp, align 4, !tbaa !15
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [4 x i8], ptr %.1185, i64 %i.wa
  store float %i.vy, ptr %i.wb, align 4, !tbaa !12
  %.val.i = load <4 x float>, ptr %.1185, align 16, !tbaa !133
  %i.wc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer)
  store <4 x float> %i.wc, ptr %.1185, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.wd = add nsw i32 %.1181, 1                   ; 2 uses
  %i.we = icmp slt i32 %i.wd, %i.nw
  br i1 %i.we, label %bb.ba, label %._crit_edge281

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %.lr.ph273
  %i.wf = phi i32 [ %i.wq, %.lr.ph273 ], [ %i.oe, %.lr.ph273.preheader ]
  %.1272 = phi ptr [ %i.wp, %.lr.ph273 ], [ %.1272.ph, %.lr.ph273.preheader ] ; 3 uses
  %i.wg = load i32, ptr %.1272, align 4, !tbaa !15
  %i.wh = sext i32 %i.wg to i64                   ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.wh
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !12
  %i.wk = getelementptr inbounds nuw i8, ptr %.1272, i64 4
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !15
  %i.wm = sitofp reassoc nsz arcp contract afn i32 %i.wl to float
  %i.wn = fdiv reassoc nsz arcp contract afn float %i.wj, %i.wm
  %i.wo = getelementptr inbounds [4 x i8], ptr %.1185, i64 %i.wh
  store float %i.wn, ptr %i.wo, align 4, !tbaa !12
  %i.wp = getelementptr inbounds nuw i8, ptr %.1272, i64 8 ; 2 uses
  %i.wq = add nsw i32 %i.wf, -1                   ; 2 uses
  %.not210 = icmp eq i32 %i.wq, 0
  br i1 %.not210, label %._crit_edge274, label %.lr.ph273, !llvm.loop !726

._crit_edge281:                                   ; preds = %._crit_edge274, %bb.ba
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %exitcond371.not = icmp eq i64 %indvars.iv.next368, %wide.trip.count370
  br i1 %exitcond371.not, label %._crit_edge285.split, label %.lr.ph280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #12

declare void @dt_gaussian_fast_blur(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #22

declare ptr @dt_masks_calc_scharr_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_masks_calc_detail_blend(ptr noundef, ptr noundef, i64 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_bauhaus_widget_get_quad_active(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_val(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i8.p0(<4 x i8>, ptr captures(none), <4 x i1>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x float> @llvm.masked.load.v7f32.p0(ptr captures(none), <7 x i1>, <7 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <15 x float> @llvm.masked.load.v15f32.p0(ptr captures(none), <15 x i1>, <15 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <17 x float> @llvm.masked.load.v17f32.p0(ptr captures(none), <17 x i1>, <17 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i16> @llvm.masked.load.v3i16.p0(ptr captures(none), <3 x i1>, <3 x i16>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <13 x i16> @llvm.masked.load.v13i16.p0(ptr captures(none), <13 x i1>, <13 x i16>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i8> @llvm.masked.load.v4i8.p0(ptr captures(none), <4 x i1>, <4 x i8>) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!17 = !{!"p1 int", !13, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !18, i64 8, !8, i64 16, !8, i64 20}
!20 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!21 = !{!"dt_pthread_mutex_t", !7, i64 0}
!22 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!23 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!24 = !{!"", !23, i64 0, !23, i64 8}
!25 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!26 = !{!"", !25, i64 0, !8, i64 8}
!27 = !{!"", !24, i64 0, !26, i64 16}
!28 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!29 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!30 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!31 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !16, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !17, i64 608, !19, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !20, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !21, i64 712, !13, i64 752, !13, i64 760, !22, i64 768, !22, i64 776, !13, i64 784, !27, i64 792, !28, i64 824, !28, i64 832, !28, i64 840, !28, i64 848, !28, i64 856, !28, i64 864, !28, i64 872, !8, i64 880, !28, i64 888, !28, i64 896, !28, i64 904, !29, i64 912, !29, i64 920, !28, i64 928, !28, i64 936, !8, i64 944, !30, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !28, i64 1096, !13, i64 1104, !8, i64 1112}
!32 = !{!31, !20, i64 664}
!33 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!34 = !{!33, !11, i64 16}
!35 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !12}
!36 = !{!33, !8, i64 0}
!37 = !{!33, !8, i64 4}
!38 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!39 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!40 = !{!"dt_dev_histogram_collection_params_t", !39, i64 0, !8, i64 8}
!41 = !{!"short", !7, i64 0}
!42 = !{!"", !41, i64 0, !41, i64 2}
!43 = !{!"", !8, i64 0, !7, i64 16}
!44 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !42, i64 48, !43, i64 64, !7, i64 96, !8, i64 112}
!45 = !{!"p1 float", !13, i64 0}
!46 = !{!"dt_dev_distorted_mask_cache_t", !45, i64 0, !33, i64 8, !18, i64 32, !18, i64 40}
!47 = !{!"dt_dev_pixelpipe_iop_t", !25, i64 0, !38, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !40, i64 40, !17, i64 56, !19, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !18, i64 120, !8, i64 128, !8, i64 132, !33, i64 136, !33, i64 156, !33, i64 176, !33, i64 196, !8, i64 216, !8, i64 220, !44, i64 224, !44, i64 352, !7, i64 480, !8, i64 516, !23, i64 520, !46, i64 528, !46, i64 576}
!48 = !{!"p1 _ZTS6_GList", !13, i64 0}
!49 = !{!"p1 omnipotent char", !13, i64 0}
!50 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!51 = !{!"double", !7, i64 0}
!52 = !{!"dt_image_geoloc_t", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!54 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!55 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !18, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !18, i64 1448, !18, i64 1456, !18, i64 1464, !18, i64 1472, !8, i64 1480, !44, i64 1488, !7, i64 1616, !49, i64 1656, !8, i64 1664, !8, i64 1668, !50, i64 1672, !52, i64 1680, !53, i64 1704, !41, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !48, i64 1856, !54, i64 1864, !8, i64 1872, !8, i64 1876}
!56 = !{!47, !13, i64 16}
!57 = !{!31, !13, i64 704}
!58 = !{!55, !8, i64 1428}
!59 = !{!"dt_iop_demosaic_data_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16, !7, i64 24, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !8, i64 136, !11, i64 140, !8, i64 144}
!60 = !{!59, !8, i64 8}
!61 = !{!"p1 _ZTS15dt_masks_form_t", !13, i64 0}
!62 = !{!"p1 _ZTS19dt_masks_form_gui_t", !13, i64 0}
!63 = !{!"dt_dev_proxy_exposure_t", !25, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!64 = !{!"p1 _ZTS15dt_lib_module_t", !13, i64 0}
!65 = !{!"", !64, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!66 = !{!"", !64, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!67 = !{!"", !63, i64 0, !25, i64 40, !65, i64 48, !66, i64 120}
!68 = !{!"dt_dev_chroma_t", !25, i64 0, !25, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!69 = !{!"", !25, i64 0, !25, i64 8, !13, i64 16}
!70 = !{!"", !28, i64 0, !28, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !8, i64 32}
!71 = !{!"", !28, i64 0, !28, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28}
!72 = !{!"", !28, i64 0, !28, i64 8}
!73 = !{!"", !28, i64 0, !8, i64 8}
!74 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32}
!75 = !{!"dt_dev_viewport_t", !28, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !38, i64 80, !28, i64 88, !20, i64 96}
!76 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !51, i64 24, !51, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !51, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !25, i64 88, !38, i64 96, !55, i64 112, !8, i64 2000, !8, i64 2004, !21, i64 2008, !8, i64 2048, !48, i64 2056, !8, i64 2064, !25, i64 2072, !8, i64 2080, !48, i64 2088, !48, i64 2096, !8, i64 2104, !48, i64 2112, !48, i64 2120, !17, i64 2128, !17, i64 2136, !8, i64 2144, !8, i64 2148, !48, i64 2152, !61, i64 2160, !62, i64 2168, !48, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !11, i64 2196, !11, i64 2200, !25, i64 2208, !8, i64 2216, !67, i64 2224, !68, i64 2384, !69, i64 2496, !70, i64 2520, !71, i64 2560, !72, i64 2592, !73, i64 2608, !74, i64 2624, !28, i64 2664, !28, i64 2672, !75, i64 2680, !75, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !48, i64 2904, !8, i64 2912, !20, i64 2920}
!77 = !{!"p1 _ZTS7_GtkBox", !13, i64 0}
!78 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!79 = !{!"_gui_collapsible_section_t", !77, i64 0, !49, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !77, i64 40, !78, i64 48}
!80 = !{!"dt_iop_demosaic_gui_data_t", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !28, i64 104, !28, i64 112, !79, i64 120, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !11, i64 196, !11, i64 200}
!81 = !{!80, !8, i64 180}
end_hunk_1
