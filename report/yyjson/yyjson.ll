Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_read_opts:bb.a
.lr.ph5843:                                       ; preds = %.lr.ph5843.preheader, %.lr.ph5843
  %i.agf = phi i8 [ %i.agl, %.lr.ph5843 ], [ %.pre-phi76238166, %.lr.ph5843.preheader ]
  %.31.i5295842 = phi ptr [ %i.agg, %.lr.ph5843 ], [ %.30.i527.lcssa8168, %.lr.ph5843.preheader ]
  %.0928.i5285841 = phi i64 [ %i.agj, %.lr.ph5843 ], [ 0, %.lr.ph5843.preheader ]
  %i.agg = getelementptr inbounds nuw i8, ptr %.31.i5295842, i64 1 ; 3 uses
  %i.agh = zext nneg i8 %i.agf to i64
  %i.agi = mul i64 %.0928.i5285841, 10
  %i.agj = add i64 %i.agi, %i.agh                 ; 2 uses
  %i.agk = load i8, ptr %i.agg, align 1, !tbaa !100
  %i.agl = add i8 %i.agk, -48                     ; 2 uses
  %i.agm = icmp ult i8 %i.agl, 10
  br i1 %i.agm, label %.lr.ph5843, label %._crit_edge5844, !llvm.loop !12

._crit_edge5844:                                  ; preds = %.lr.ph5843, %.preheader5055
  %.30.i527.lcssa8167 = phi ptr [ %i.agd, %.preheader5055 ], [ %.30.i527.lcssa8168, %.lr.ph5843 ]
  %.0928.i528.lcssa = phi i64 [ 0, %.preheader5055 ], [ %i.agj, %.lr.ph5843 ] ; 2 uses
  %.31.i529.lcssa = phi ptr [ %i.agd, %.preheader5055 ], [ %i.agg, %.lr.ph5843 ] ; 6 uses
  %i.agn = ptrtoint ptr %.31.i529.lcssa to i64    ; 2 uses
  %i.ago = ptrtoint ptr %.30.i527.lcssa8167 to i64
  %i.agp = sub i64 %i.agn, %i.ago
  %i.agq = icmp sgt i64 %i.agp, 18
  br i1 %i.agq, label %bb.hb, label %bb.hi, !prof !45

bb.hb:                                            ; preds = %._crit_edge5844
  br i1 %i.afr, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.agr = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.ags = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.agr, ptr %i.ags, align 8, !tbaa !100
  br label %read_num.exit646

bb.hd:                                            ; preds = %bb.hb
  %i.agt = and i32 %2, 128
  %.not4919 = icmp eq i32 %i.agt, 0
  br i1 %.not4919, label %bb.hf, label %bb.he, !prof !62

bb.he:                                            ; preds = %bb.hd
  %i.agu = load ptr, ptr %i.l, align 8, !tbaa !107
  store i8 0, ptr %i.agu, align 1, !tbaa !100
  %i.agv = ptrtoint ptr %i.gl to i64
  %i.agw = sub i64 %i.agn, %i.agv
  %i.agx = shl i64 %i.agw, 8
  %i.agy = or disjoint i64 %i.agx, 1
  store i64 %i.agy, ptr %.5665.i, align 8, !tbaa !99
  %i.agz = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store ptr %i.gl, ptr %i.agz, align 8, !tbaa !100
  store ptr %.31.i529.lcssa, ptr %i.l, align 8, !tbaa !107
  br label %read_num.exit646

bb.hf:                                            ; preds = %bb.hd
  br i1 %.not4873, label %bb.hh, label %bb.hg, !prof !62

bb.hg:                                            ; preds = %bb.hf
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.aha = select i1 %i.gq, i64 -4503599627370496, i64 9218868437227405312
  %i.ahb = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.aha, ptr %i.ahb, align 8, !tbaa !100
  br label %read_num.exit646

bb.hh:                                            ; preds = %bb.hf
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !107
  br label %read_num.exit646.thread

bb.hi:                                            ; preds = %._crit_edge5844
  %i.ahc = sub nsw i64 0, %.0928.i528.lcssa
  %i.ahd = select i1 %i.afr, i64 %i.ahc, i64 %.0928.i528.lcssa
  %i.ahe = add nsw i64 %i.ahd, %.0929.i521
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %.critedge.i640
  %.1930.i530 = phi i64 [ %i.ahe, %bb.hi ], [ %i.aey, %.critedge.i640 ] ; 3 uses
  %.32.i531 = phi ptr [ %.31.i529.lcssa, %bb.hi ], [ %.27.i636, %.critedge.i640 ] ; 6 uses
  %.21893.i532 = phi i64 [ %.20892.i523, %bb.hi ], [ %i.adt, %.critedge.i640 ]
  %.22.i533 = phi ptr [ %.21.i524, %bb.hi ], [ %.19.i637, %.critedge.i640 ]
  %.2866.i534 = phi ptr [ %.1865.i525, %bb.hi ], [ %..27.i641, %.critedge.i640 ]
  %.2862.i535 = phi ptr [ %.1861.i526, %bb.hi ], [ %..24.i642, %.critedge.i640 ]
  %i.ahf = icmp slt i64 %.1930.i530, -343
  br i1 %i.ahf, label %bb.hk, label %bb.hl, !prof !45

bb.hk:                                            ; preds = %bb.hj
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.ahg = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.ahh = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.ahg, ptr %i.ahh, align 8, !tbaa !100
  br label %read_num.exit646

bb.hl:                                            ; preds = %bb.hj
  %i.ahi = icmp sgt i64 %.1930.i530, 308
  br i1 %i.ahi, label %bb.hm, label %bb.hr, !prof !45

bb.hm:                                            ; preds = %bb.hl
  %i.ahj = and i32 %2, 128
  %.not4917 = icmp eq i32 %i.ahj, 0
  br i1 %.not4917, label %bb.ho, label %bb.hn, !prof !62

bb.hn:                                            ; preds = %bb.hm
  %i.ahk = load ptr, ptr %i.l, align 8, !tbaa !107
  store i8 0, ptr %i.ahk, align 1, !tbaa !100
  %i.ahl = ptrtoint ptr %.32.i531 to i64
  %i.ahm = ptrtoint ptr %i.gl to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  %i.aho = shl i64 %i.ahn, 8
  %i.ahp = or disjoint i64 %i.aho, 1
  store i64 %i.ahp, ptr %.5665.i, align 8, !tbaa !99
  %i.ahq = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store ptr %i.gl, ptr %i.ahq, align 8, !tbaa !100
  store ptr %.32.i531, ptr %i.l, align 8, !tbaa !107
  br label %read_num.exit646

bb.ho:                                            ; preds = %bb.hm
  br i1 %.not4873, label %bb.hq, label %bb.hp, !prof !62

bb.hp:                                            ; preds = %bb.ho
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.ahr = select i1 %i.gq, i64 -4503599627370496, i64 9218868437227405312
  %i.ahs = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.ahr, ptr %i.ahs, align 8, !tbaa !100
  br label %read_num.exit646

bb.hq:                                            ; preds = %bb.ho
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !107
  br label %read_num.exit646.thread

bb.hr:                                            ; preds = %bb.hl, %bb.gy
  %storemerge.in.i536 = phi i64 [ %.neg981.i579, %bb.gy ], [ %.1930.i530, %bb.hl ] ; 3 uses
  %.33.i537 = phi ptr [ %.28.i575, %bb.gy ], [ %.32.i531, %bb.hl ] ; 7 uses
  %.22894.i538 = phi i64 [ %.19891.i576, %bb.gy ], [ %.21893.i532, %bb.hl ] ; 7 uses
  %.23.i539 = phi ptr [ %.20.i577, %bb.gy ], [ %.22.i533, %bb.hl ]
  %.3867.i540 = phi ptr [ %.28.i575, %bb.gy ], [ %.2866.i534, %bb.hl ]
  %.3863.i541 = phi ptr [ null, %bb.gy ], [ %.2862.i535, %bb.hl ] ; 2 uses
  %storemerge.i542 = trunc i64 %storemerge.in.i536 to i32 ; 8 uses
  store i32 %storemerge.i542, ptr %i.b, align 4, !tbaa !119
  %i.aht = icmp ult i64 %.22894.i538, 9007199254740992
  %i.ahu = add i32 %storemerge.i542, 22
  %i.ahv = icmp ult i32 %i.ahu, 45
  %or.cond9.i543 = and i1 %i.aht, %i.ahv
  br i1 %or.cond9.i543, label %bb.hs, label %bb.hv

bb.hs:                                            ; preds = %bb.hr
  %i.ahw = uitofp nneg i64 %.22894.i538 to double ; 2 uses
  %i.ahx = icmp slt i32 %storemerge.i542, 0
  br i1 %i.ahx, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.ahy = sub nsw i64 0, %storemerge.in.i536
  %i.ahz = and i64 %i.ahy, 4294967295
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.ahz
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !128
  %i.aic = fdiv double %i.ahw, %i.aib
  br label %.split4202

bb.hu:                                            ; preds = %bb.hs
  %i.aid = and i64 %storemerge.in.i536, 2147483647
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.aid
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !128
  %i.aig = fmul double %i.aif, %i.ahw
  br label %.split4202

.split4202:                                       ; preds = %bb.hu, %bb.ht
  %.0900.i567 = phi double [ %i.aic, %bb.ht ], [ %i.aig, %bb.hu ] ; 2 uses
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.aih = fneg double %.0900.i567
  %i.aii = select i1 %i.gq, double %i.aih, double %.0900.i567
  %i.aij = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store double %i.aii, ptr %i.aij, align 8, !tbaa !100
  store ptr %.33.i537, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

bb.hv:                                            ; preds = %bb.hr
  %i.aik = icmp eq ptr %.3863.i541, null          ; 2 uses
  %i.ail = add i32 %storemerge.i542, 306
  %i.aim = icmp ult i32 %i.ail, 594
  %i.ain = and i1 %i.aim, %i.aik
  br i1 %i.ain, label %bb.hw, label %..critedge992.i565_crit_edge, !prof !62

..critedge992.i565_crit_edge:                     ; preds = %bb.hv
  %.pre7682 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i538, i1 true) ; 3 uses
  %.pre7684 = shl i64 %.22894.i538, %.pre7682
  %.pre7686 = shl i32 %storemerge.i542, 1
  %.pre7688 = mul nsw i32 %storemerge.i542, 217706
  %.pre7690 = add nsw i32 %.pre7688, -4128768
  %.pre7692 = ashr i32 %.pre7690, 16
  %.pre7694 = zext i64 %.pre7684 to i128
  %.pre7696 = trunc nuw nsw i64 %.pre7682 to i32
  br label %.critedge992.i565

bb.hw:                                            ; preds = %bb.hv
  %i.aio = shl nsw i32 %storemerge.i542, 1        ; 2 uses
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.aip ; 2 uses
  %i.air = getelementptr i8, ptr %i.aiq, i64 5488
  %i.ais = load i64, ptr %i.air, align 16, !tbaa !106
  %i.ait = mul nsw i32 %storemerge.i542, 217706
  %i.aiu = add nsw i32 %i.ait, -4128768
  %i.aiv = ashr i32 %i.aiu, 16                    ; 2 uses
  %i.aiw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i538, i1 true) ; 3 uses
  %i.aix = trunc nuw nsw i64 %i.aiw to i32        ; 2 uses
  %i.aiy = shl i64 %.22894.i538, %i.aiw           ; 2 uses
  %i.aiz = zext i64 %i.aiy to i128                ; 2 uses
  %i.aja = zext i64 %i.ais to i128
  %i.ajb = mul nuw i128 %i.aja, %i.aiz            ; 2 uses
  %i.ajc = lshr i128 %i.ajb, 64
  %i.ajd = trunc nuw i128 %i.ajc to i64           ; 3 uses
  %i.aje = trunc i128 %i.ajb to i64               ; 2 uses
  %i.ajf = and i64 %i.ajd, 511
  %i.ajg = add nsw i64 %i.ajf, -1
  %i.ajh = icmp ult i64 %i.ajg, 510
  br i1 %i.ajh, label %.split4203, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.aji = getelementptr i8, ptr %i.aiq, i64 5496
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !106
  %15 = call i64 @llvm.umulh.i64(i64 %i.aiy, i64 %i.ajj)
  %i.ajk = add i64 %15, %i.aje                    ; 2 uses
  %i.ajl = add i64 %i.ajk, -1
  %i.ajm = icmp ult i64 %i.ajl, -2
  br i1 %i.ajm, label %bb.hy, label %.critedge992.i565

bb.hy:                                            ; preds = %bb.hx
  %i.ajn = icmp ult i64 %i.ajk, %i.aje
  %i.ajo = zext i1 %i.ajn to i64
  %i.ajp = add nuw i64 %i.ajo, %i.ajd
  br label %.split4203

.split4203:                                       ; preds = %bb.hy, %bb.hw
  %.03997 = phi i64 [ %i.ajd, %bb.hw ], [ %i.ajp, %bb.hy ] ; 2 uses
  %i.ajq = icmp sgt i64 %.03997, -1               ; 2 uses
  %.neg983.i566 = sext i1 %i.ajq to i32
  %i.ajr = zext i1 %i.ajq to i64
  %i.ajs = shl i64 %.03997, %i.ajr                ; 2 uses
  %i.ajt = and i64 %i.ajs, 1024
  %i.aju = add i64 %i.ajt, %i.ajs                 ; 2 uses
  %i.ajv = icmp ult i64 %i.aju, 1024
  %spec.select4583.v = select i1 %i.ajv, i32 65, i32 64
  %i.ajw = lshr i64 %i.aju, 11
  %reass.sub6513 = sub nsw i32 %i.aiv, %i.aix
  %i.ajx = add nsw i32 %reass.sub6513, 1086
  %spec.select4583 = add nsw i32 %i.ajx, %.neg983.i566
  %i.ajy = add nsw i32 %spec.select4583, %spec.select4583.v
  %i.ajz = zext nneg i32 %i.ajy to i64
  %i.aka = shl nuw nsw i64 %i.ajz, 52
  %i.akb = and i64 %i.ajw, 4503599627370495
  %i.akc = or disjoint i64 %i.aka, %i.akb
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.akd = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.ake = or disjoint i64 %i.akc, %i.akd
  %i.akf = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.ake, ptr %i.akf, align 8, !tbaa !100
  store ptr %.33.i537, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

.critedge992.i565:                                ; preds = %..critedge992.i565_crit_edge, %bb.hx
  %.pre-phi7697 = phi i32 [ %.pre7696, %..critedge992.i565_crit_edge ], [ %i.aix, %bb.hx ]
  %.pre-phi7695 = phi i128 [ %.pre7694, %..critedge992.i565_crit_edge ], [ %i.aiz, %bb.hx ]
  %.pre-phi7693 = phi i32 [ %.pre7692, %..critedge992.i565_crit_edge ], [ %i.aiv, %bb.hx ]
  %.pre-phi7687 = phi i32 [ %.pre7686, %..critedge992.i565_crit_edge ], [ %i.aio, %bb.hx ] ; 2 uses
  %.pre-phi7683 = phi i64 [ %.pre7682, %..critedge992.i565_crit_edge ], [ %i.aiw, %bb.hx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.akg = select i1 %i.aik, i64 0, i64 4
  %i.akh = shl i64 %i.akg, %.pre-phi7683          ; 2 uses
  %i.aki = add i32 %.pre-phi7687, 686
  %i.akj = sext i32 %i.aki to i64
  %i.akk = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.akj
  %i.akl = load i64, ptr %i.akk, align 16, !tbaa !106
  %i.akm = add i32 %.pre-phi7687, 687
  %i.akn = sext i32 %i.akm to i64
  %i.ako = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.akn
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !106
  %i.akq = lshr i64 %i.akp, 63
  %i.akr = add i64 %i.akq, %i.akl
  %i.aks = zext i64 %i.akr to i128
  %i.akt = mul nuw i128 %.pre-phi7695, %i.aks     ; 2 uses
  %i.aku = lshr i128 %i.akt, 64
  %i.akv = trunc nuw i128 %i.aku to i64
  %i.akw = trunc i128 %i.akt to i64
  %i.akx = lshr i64 %i.akw, 63
  %i.aky = add nuw i64 %i.akx, %i.akv             ; 2 uses
  %.not986.i546 = icmp eq i64 %i.akh, 0
  %i.akz = select i1 %.not986.i546, i64 8, i64 9
  %i.ala = add i64 %i.akz, %i.akh
  %i.alb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aky, i1 true) ; 3 uses
  %i.alc = trunc nuw nsw i64 %i.alb to i32
  %i.ald = shl i64 %i.aky, %i.alb                 ; 3 uses
  %i.ale = add nsw i32 %.pre-phi7693, 64
  %i.alf = add nuw nsw i32 %.pre-phi7697, %i.alc
  %i.alg = sub nsw i32 %i.ale, %i.alf             ; 7 uses
  %i.alh = shl i64 %i.ala, %i.alb                 ; 3 uses
  %i.ali = icmp sgt i32 %i.alg, -1086
  br i1 %i.ali, label %.thread4163, label %bb.hz, !prof !62

bb.hz:                                            ; preds = %.critedge992.i565
  %i.alj = icmp samesign ult i32 %i.alg, -1137
  br i1 %i.alj, label %.thread4160, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.alk = sub nuw nsw i32 -1074, %i.alg          ; 2 uses
  %i.all = icmp samesign ult i32 %i.alg, -1134
  br i1 %i.all, label %.thread4160, label %.thread4163, !prof !129

.thread4160:                                      ; preds = %bb.hz, %bb.ia
  %.0897.i5494162 = phi i32 [ %i.alk, %bb.ia ], [ 64, %bb.hz ]
  %i.alm = add nsw i32 %.0897.i5494162, -60       ; 2 uses
  %i.aln = zext nneg i32 %i.alm to i64            ; 2 uses
  %i.alo = lshr i64 %i.ald, %i.aln
  %i.alp = add nsw i32 %i.alm, %i.alg
  %i.alq = lshr i64 %i.alh, %i.aln
  %i.alr = add nuw i64 %i.alq, 9
  br label %.thread4163

.thread4163:                                      ; preds = %.critedge992.i565, %.thread4160, %bb.ia
  %.0898.i550 = phi i64 [ %i.alr, %.thread4160 ], [ %i.alh, %bb.ia ], [ %i.alh, %.critedge992.i565 ] ; 2 uses
  %.0896.i551 = phi i32 [ 60, %.thread4160 ], [ %i.alk, %bb.ia ], [ 11, %.critedge992.i565 ] ; 3 uses
  %.sroa.19.0.in.i552 = phi i32 [ %i.alp, %.thread4160 ], [ %i.alg, %bb.ia ], [ %i.alg, %.critedge992.i565 ]
  %.sroa.025.0.i553 = phi i64 [ %i.alo, %.thread4160 ], [ %i.ald, %bb.ia ], [ %i.ald, %.critedge992.i565 ] ; 2 uses
  %i.als = zext nneg i32 %.0896.i551 to i64       ; 2 uses
  %notmask.i554 = shl nsw i64 -1, %i.als
  %i.alt = xor i64 %notmask.i554, -1
  %i.alu = and i64 %.sroa.025.0.i553, %i.alt
  %i.alv = shl nuw nsw i64 %i.alu, 3              ; 2 uses
  %i.alw = add nsw i32 %.0896.i551, -1
  %i.alx = zext nneg i32 %i.alw to i64
  %i.aly = shl nuw nsw i64 8, %i.alx              ; 2 uses
  %i.alz = lshr i64 %.sroa.025.0.i553, %i.als
  %i.ama = add i64 %i.aly, %.0898.i550
  %i.amb = icmp uge i64 %i.alv, %i.ama            ; 2 uses
  %i.amc = zext i1 %i.amb to i64
  %i.amd = add nuw nsw i64 %i.alz, %i.amc         ; 3 uses
  %i.ame = icmp eq i64 %i.amd, 0
  br i1 %i.ame, label %bb.ik, label %bb.ib, !prof !45

bb.ib:                                            ; preds = %.thread4163
  %i.amf = add nsw i32 %.sroa.19.0.in.i552, %.0896.i551
  %i.amg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.amd, i1 true) ; 2 uses
  %i.amh = trunc nuw nsw i64 %i.amg to i32
  %i.ami = shl i64 %i.amd, %i.amg
  %i.amj = lshr i64 %i.ami, 11                    ; 2 uses
  %i.amk = sub nsw i32 %i.amf, %i.amh             ; 5 uses
  %i.aml = icmp sgt i32 %i.amk, 960
  br i1 %i.aml, label %diy_fp_to_ieee_raw.exit1506, label %bb.ic, !prof !45

bb.ic:                                            ; preds = %bb.ib
  %i.amm = icmp sgt i32 %i.amk, -1086
  br i1 %i.amm, label %bb.id, label %bb.ie, !prof !62

bb.id:                                            ; preds = %bb.ic
  %i.amn = add nsw i32 %i.amk, 1086
  %i.amo = zext nneg i32 %i.amn to i64
  %i.amp = shl nuw nsw i64 %i.amo, 52
  %i.amq = and i64 %i.amj, 4503599627370495
  %i.amr = or disjoint i64 %i.amp, %i.amq
  br label %bb.ik

bb.ie:                                            ; preds = %bb.ic
  %i.ams = icmp samesign ugt i32 %i.amk, -1138
  br i1 %i.ams, label %bb.if, label %bb.ik, !prof !62

bb.if:                                            ; preds = %bb.ie
  %i.amt = sub nuw nsw i32 -1085, %i.amk
  %i.amu = zext nneg i32 %i.amt to i64
  %i.amv = lshr i64 %i.amj, %i.amu
  br label %bb.ik

diy_fp_to_ieee_raw.exit1506:                      ; preds = %bb.ib
  %i.amw = and i32 %2, 128
  %.not4911 = icmp eq i32 %i.amw, 0
  br i1 %.not4911, label %bb.ih, label %bb.ig, !prof !62

bb.ig:                                            ; preds = %diy_fp_to_ieee_raw.exit1506
  %i.amx = load ptr, ptr %i.l, align 8, !tbaa !107
  store i8 0, ptr %i.amx, align 1, !tbaa !100
  %i.amy = ptrtoint ptr %.33.i537 to i64
  %i.amz = ptrtoint ptr %i.gl to i64
  %i.ana = sub i64 %i.amy, %i.amz
  %i.anb = shl i64 %i.ana, 8
  %i.anc = or disjoint i64 %i.anb, 1
  store i64 %i.anc, ptr %.5665.i, align 8, !tbaa !99
  %i.and = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store ptr %i.gl, ptr %i.and, align 8, !tbaa !100
  store ptr %.33.i537, ptr %i.l, align 8, !tbaa !107
  br label %.split4204

bb.ih:                                            ; preds = %diy_fp_to_ieee_raw.exit1506
  br i1 %.not4873, label %bb.ij, label %bb.ii, !prof !62

bb.ii:                                            ; preds = %bb.ih
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.ane = select i1 %i.gq, i64 -4503599627370496, i64 9218868437227405312
  %i.anf = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.ane, ptr %i.anf, align 8, !tbaa !100
  br label %.split4204

bb.ij:                                            ; preds = %bb.ih
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !107
  br label %.split4204.thread

bb.ik:                                            ; preds = %.thread4163, %bb.id, %bb.if, %bb.ie
  %.0.i1505.ph = phi i64 [ 0, %bb.ie ], [ %i.amv, %bb.if ], [ %i.amr, %bb.id ], [ 0, %.thread4163 ] ; 7 uses
  %i.ang = sub i64 %i.aly, %.0898.i550
  %.not987.i556 = icmp ule i64 %i.alv, %i.ang
  %spec.select.i557 = or i1 %.not987.i556, %i.amb
  br i1 %spec.select.i557, label %bb.il, label %bb.im, !prof !62

bb.il:                                            ; preds = %bb.ik
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.anh = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.ani = or disjoint i64 %.0.i1505.ph, %i.anh
  %i.anj = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.ani, ptr %i.anj, align 8, !tbaa !100
  br label %.split4204

bb.im:                                            ; preds = %bb.ik
  %.not988.i558 = icmp samesign ult i64 %.0.i1505.ph, 4503599627370496 ; 2 uses
end_hunk_0
begin_hunk_1_@yyjson_read_opts:bb.a
.lr.ph5617:                                       ; preds = %.lr.ph5617.preheader, %.lr.ph5617
  %i.fff = phi i8 [ %i.ffl, %.lr.ph5617 ], [ %.pre-phi76298241, %.lr.ph5617.preheader ]
  %.31.i6605616 = phi ptr [ %i.ffg, %.lr.ph5617 ], [ %.30.i658.lcssa8243, %.lr.ph5617.preheader ]
  %.0928.i6595615 = phi i64 [ %i.ffj, %.lr.ph5617 ], [ 0, %.lr.ph5617.preheader ]
  %i.ffg = getelementptr inbounds nuw i8, ptr %.31.i6605616, i64 1 ; 3 uses
  %i.ffh = zext nneg i8 %i.fff to i64
  %i.ffi = mul i64 %.0928.i6595615, 10
  %i.ffj = add i64 %i.ffi, %i.ffh                 ; 2 uses
  %i.ffk = load i8, ptr %i.ffg, align 1, !tbaa !100
  %i.ffl = add i8 %i.ffk, -48                     ; 2 uses
  %i.ffm = icmp ult i8 %i.ffl, 10
  br i1 %i.ffm, label %.lr.ph5617, label %._crit_edge5618, !llvm.loop !12

._crit_edge5618:                                  ; preds = %.lr.ph5617, %.preheader5093
  %.30.i658.lcssa8242 = phi ptr [ %i.ffd, %.preheader5093 ], [ %.30.i658.lcssa8243, %.lr.ph5617 ]
  %.0928.i659.lcssa = phi i64 [ 0, %.preheader5093 ], [ %i.ffj, %.lr.ph5617 ] ; 2 uses
  %.31.i660.lcssa = phi ptr [ %i.ffd, %.preheader5093 ], [ %i.ffg, %.lr.ph5617 ] ; 6 uses
  %i.ffn = ptrtoint ptr %.31.i660.lcssa to i64    ; 2 uses
  %i.ffo = ptrtoint ptr %.30.i658.lcssa8242 to i64
  %i.ffp = sub i64 %i.ffn, %i.ffo
  %i.ffq = icmp sgt i64 %i.ffp, 18
  br i1 %i.ffq, label %bb.aeh, label %bb.aeo, !prof !45

bb.aeh:                                           ; preds = %._crit_edge5618
  br i1 %i.fer, label %bb.aei, label %bb.aej

bb.aei:                                           ; preds = %bb.aeh
  store i64 20, ptr %i.efe, align 8, !tbaa !99
  %i.ffr = select i1 %i.efi, i64 -9223372036854775808, i64 0
  %i.ffs = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.ffr, ptr %i.ffs, align 8, !tbaa !100
  br label %read_num.exit777

bb.aej:                                           ; preds = %bb.aeh
  %i.fft = and i32 %2, 128
  %.not4851 = icmp eq i32 %i.fft, 0
  br i1 %.not4851, label %bb.ael, label %bb.aek, !prof !62

bb.aek:                                           ; preds = %bb.aej
  %i.ffu = load ptr, ptr %i.l, align 8, !tbaa !107
  store i8 0, ptr %i.ffu, align 1, !tbaa !100
  %i.ffv = ptrtoint ptr %i.eez to i64
  %i.ffw = sub i64 %i.ffn, %i.ffv
  %i.ffx = shl i64 %i.ffw, 8
  %i.ffy = or disjoint i64 %i.ffx, 1
  store i64 %i.ffy, ptr %i.efe, align 8, !tbaa !99
  %i.ffz = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store ptr %i.eez, ptr %i.ffz, align 8, !tbaa !100
  store ptr %.31.i660.lcssa, ptr %i.l, align 8, !tbaa !107
  br label %read_num.exit777

bb.ael:                                           ; preds = %bb.aej
  br i1 %.not4805, label %bb.aen, label %bb.aem, !prof !62

bb.aem:                                           ; preds = %bb.ael
  store i64 20, ptr %i.efe, align 8, !tbaa !99
  %i.fga = select i1 %i.efi, i64 -4503599627370496, i64 9218868437227405312
  %i.fgb = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fga, ptr %i.fgb, align 8, !tbaa !100
  br label %read_num.exit777

bb.aen:                                           ; preds = %bb.ael
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !107
  br label %read_num.exit777.thread

bb.aeo:                                           ; preds = %._crit_edge5618
  %i.fgc = sub nsw i64 0, %.0928.i659.lcssa
  %i.fgd = select i1 %i.fer, i64 %i.fgc, i64 %.0928.i659.lcssa
  %i.fge = add nsw i64 %i.fgd, %.0929.i652
  br label %bb.aep

bb.aep:                                           ; preds = %bb.aeo, %.critedge.i771
  %.1930.i661 = phi i64 [ %i.fge, %bb.aeo ], [ %i.fdy, %.critedge.i771 ] ; 3 uses
  %.32.i662 = phi ptr [ %.31.i660.lcssa, %bb.aeo ], [ %.27.i767, %.critedge.i771 ] ; 6 uses
  %.21893.i663 = phi i64 [ %.20892.i654, %bb.aeo ], [ %i.fct, %.critedge.i771 ]
  %.22.i664 = phi ptr [ %.21.i655, %bb.aeo ], [ %.19.i768, %.critedge.i771 ]
  %.2866.i665 = phi ptr [ %.1865.i656, %bb.aeo ], [ %..27.i772, %.critedge.i771 ]
  %.2862.i666 = phi ptr [ %.1861.i657, %bb.aeo ], [ %..24.i773, %.critedge.i771 ]
  %i.fgf = icmp slt i64 %.1930.i661, -343
  br i1 %i.fgf, label %bb.aeq, label %bb.aer, !prof !45

bb.aeq:                                           ; preds = %bb.aep
  store i64 20, ptr %i.efe, align 8, !tbaa !99
  %i.fgg = select i1 %i.efi, i64 -9223372036854775808, i64 0
  %i.fgh = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fgg, ptr %i.fgh, align 8, !tbaa !100
  br label %read_num.exit777

bb.aer:                                           ; preds = %bb.aep
  %i.fgi = icmp sgt i64 %.1930.i661, 308
  br i1 %i.fgi, label %bb.aes, label %bb.aex, !prof !45

bb.aes:                                           ; preds = %bb.aer
  %i.fgj = and i32 %2, 128
  %.not4849 = icmp eq i32 %i.fgj, 0
  br i1 %.not4849, label %bb.aeu, label %bb.aet, !prof !62

bb.aet:                                           ; preds = %bb.aes
  %i.fgk = load ptr, ptr %i.l, align 8, !tbaa !107
  store i8 0, ptr %i.fgk, align 1, !tbaa !100
  %i.fgl = ptrtoint ptr %.32.i662 to i64
  %i.fgm = ptrtoint ptr %i.eez to i64
  %i.fgn = sub i64 %i.fgl, %i.fgm
  %i.fgo = shl i64 %i.fgn, 8
  %i.fgp = or disjoint i64 %i.fgo, 1
  store i64 %i.fgp, ptr %i.efe, align 8, !tbaa !99
  %i.fgq = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store ptr %i.eez, ptr %i.fgq, align 8, !tbaa !100
  store ptr %.32.i662, ptr %i.l, align 8, !tbaa !107
  br label %read_num.exit777

bb.aeu:                                           ; preds = %bb.aes
  br i1 %.not4805, label %bb.aew, label %bb.aev, !prof !62

bb.aev:                                           ; preds = %bb.aeu
  store i64 20, ptr %i.efe, align 8, !tbaa !99
  %i.fgr = select i1 %i.efi, i64 -4503599627370496, i64 9218868437227405312
  %i.fgs = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fgr, ptr %i.fgs, align 8, !tbaa !100
  br label %read_num.exit777

bb.aew:                                           ; preds = %bb.aeu
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !107
  br label %read_num.exit777.thread

bb.aex:                                           ; preds = %bb.aer, %bb.aee
  %storemerge.in.i667 = phi i64 [ %.neg981.i710, %bb.aee ], [ %.1930.i661, %bb.aer ] ; 3 uses
  %.33.i668 = phi ptr [ %.28.i706, %bb.aee ], [ %.32.i662, %bb.aer ] ; 7 uses
  %.22894.i669 = phi i64 [ %.19891.i707, %bb.aee ], [ %.21893.i663, %bb.aer ] ; 7 uses
  %.23.i670 = phi ptr [ %.20.i708, %bb.aee ], [ %.22.i664, %bb.aer ]
  %.3867.i671 = phi ptr [ %.28.i706, %bb.aee ], [ %.2866.i665, %bb.aer ]
  %.3863.i672 = phi ptr [ null, %bb.aee ], [ %.2862.i666, %bb.aer ] ; 2 uses
  %storemerge.i673 = trunc i64 %storemerge.in.i667 to i32 ; 8 uses
  store i32 %storemerge.i673, ptr %i.a, align 4, !tbaa !119
  %i.fgt = icmp ult i64 %.22894.i669, 9007199254740992
  %i.fgu = add i32 %storemerge.i673, 22
  %i.fgv = icmp ult i32 %i.fgu, 45
  %or.cond9.i674 = and i1 %i.fgt, %i.fgv
  br i1 %or.cond9.i674, label %bb.aey, label %bb.afb

bb.aey:                                           ; preds = %bb.aex
  %i.fgw = uitofp nneg i64 %.22894.i669 to double ; 2 uses
  %i.fgx = icmp slt i32 %storemerge.i673, 0
  br i1 %i.fgx, label %bb.aez, label %bb.afa

bb.aez:                                           ; preds = %bb.aey
  %i.fgy = sub nsw i64 0, %storemerge.in.i667
  %i.fgz = and i64 %i.fgy, 4294967295
  %i.fha = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.fgz
  %i.fhb = load double, ptr %i.fha, align 8, !tbaa !128
  %i.fhc = fdiv double %i.fgw, %i.fhb
  br label %.split4350

bb.afa:                                           ; preds = %bb.aey
  %i.fhd = and i64 %storemerge.in.i667, 2147483647
  %i.fhe = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.fhd
  %i.fhf = load double, ptr %i.fhe, align 8, !tbaa !128
  %i.fhg = fmul double %i.fhf, %i.fgw
  br label %.split4350

.split4350:                                       ; preds = %bb.afa, %bb.aez
  %.0900.i698 = phi double [ %i.fhc, %bb.aez ], [ %i.fhg, %bb.afa ] ; 2 uses
  store i64 20, ptr %i.efe, align 8, !tbaa !99
  %i.fhh = fneg double %.0900.i698
  %i.fhi = select i1 %i.efi, double %i.fhh, double %.0900.i698
  %i.fhj = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store double %i.fhi, ptr %i.fhj, align 8, !tbaa !100
  store ptr %.33.i668, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

bb.afb:                                           ; preds = %bb.aex
  %i.fhk = icmp eq ptr %.3863.i672, null          ; 2 uses
  %i.fhl = add i32 %storemerge.i673, 306
  %i.fhm = icmp ult i32 %i.fhl, 594
  %i.fhn = and i1 %i.fhm, %i.fhk
  br i1 %i.fhn, label %bb.afc, label %..critedge992.i696_crit_edge, !prof !62

..critedge992.i696_crit_edge:                     ; preds = %bb.afb
  %.pre7704 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i669, i1 true) ; 3 uses
  %.pre7706 = shl i64 %.22894.i669, %.pre7704
  %.pre7708 = shl i32 %storemerge.i673, 1
  %.pre7710 = mul nsw i32 %storemerge.i673, 217706
  %.pre7712 = add nsw i32 %.pre7710, -4128768
  %.pre7714 = ashr i32 %.pre7712, 16
  %.pre7716 = zext i64 %.pre7706 to i128
  %.pre7718 = trunc nuw nsw i64 %.pre7704 to i32
  br label %.critedge992.i696

bb.afc:                                           ; preds = %bb.afb
  %i.fho = shl nsw i32 %storemerge.i673, 1        ; 2 uses
  %i.fhp = sext i32 %i.fho to i64
  %i.fhq = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.fhp ; 2 uses
  %i.fhr = getelementptr i8, ptr %i.fhq, i64 5488
  %i.fhs = load i64, ptr %i.fhr, align 16, !tbaa !106
  %i.fht = mul nsw i32 %storemerge.i673, 217706
  %i.fhu = add nsw i32 %i.fht, -4128768
  %i.fhv = ashr i32 %i.fhu, 16                    ; 2 uses
  %i.fhw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i669, i1 true) ; 3 uses
  %i.fhx = trunc nuw nsw i64 %i.fhw to i32        ; 2 uses
  %i.fhy = shl i64 %.22894.i669, %i.fhw           ; 2 uses
  %i.fhz = zext i64 %i.fhy to i128                ; 2 uses
  %i.fia = zext i64 %i.fhs to i128
  %i.fib = mul nuw i128 %i.fia, %i.fhz            ; 2 uses
  %i.fic = lshr i128 %i.fib, 64
  %i.fid = trunc nuw i128 %i.fic to i64           ; 3 uses
  %i.fie = trunc i128 %i.fib to i64               ; 2 uses
  %i.fif = and i64 %i.fid, 511
  %i.fig = add nsw i64 %i.fif, -1
  %i.fih = icmp ult i64 %i.fig, 510
  br i1 %i.fih, label %.split4351, label %bb.afd

bb.afd:                                           ; preds = %bb.afc
  %i.fii = getelementptr i8, ptr %i.fhq, i64 5496
  %i.fij = load i64, ptr %i.fii, align 8, !tbaa !106
  %16 = call i64 @llvm.umulh.i64(i64 %i.fhy, i64 %i.fij)
  %i.fik = add i64 %16, %i.fie                    ; 2 uses
  %i.fil = add i64 %i.fik, -1
  %i.fim = icmp ult i64 %i.fil, -2
  br i1 %i.fim, label %bb.afe, label %.critedge992.i696

bb.afe:                                           ; preds = %bb.afd
  %i.fin = icmp ult i64 %i.fik, %i.fie
  %i.fio = zext i1 %i.fin to i64
  %i.fip = add nuw i64 %i.fio, %i.fid
  br label %.split4351

.split4351:                                       ; preds = %bb.afe, %bb.afc
  %.04000 = phi i64 [ %i.fid, %bb.afc ], [ %i.fip, %bb.afe ] ; 2 uses
  %i.fiq = icmp sgt i64 %.04000, -1               ; 2 uses
  %.neg983.i697 = sext i1 %i.fiq to i32
  %i.fir = zext i1 %i.fiq to i64
  %i.fis = shl i64 %.04000, %i.fir                ; 2 uses
  %i.fit = and i64 %i.fis, 1024
  %i.fiu = add i64 %i.fit, %i.fis                 ; 2 uses
  %i.fiv = icmp ult i64 %i.fiu, 1024
  %spec.select4598.v = select i1 %i.fiv, i32 65, i32 64
  %i.fiw = lshr i64 %i.fiu, 11
  %reass.sub6505 = sub nsw i32 %i.fhv, %i.fhx
  %i.fix = add nsw i32 %reass.sub6505, 1086
  %spec.select4598 = add nsw i32 %i.fix, %.neg983.i697
  %i.fiy = add nsw i32 %spec.select4598, %spec.select4598.v
  %i.fiz = zext nneg i32 %i.fiy to i64
  %i.fja = shl nuw nsw i64 %i.fiz, 52
  %i.fjb = and i64 %i.fiw, 4503599627370495
  %i.fjc = or disjoint i64 %i.fja, %i.fjb
  store i64 20, ptr %i.efe, align 8, !tbaa !99
  %i.fjd = select i1 %i.efi, i64 -9223372036854775808, i64 0
  %i.fje = or disjoint i64 %i.fjc, %i.fjd
  %i.fjf = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fje, ptr %i.fjf, align 8, !tbaa !100
  store ptr %.33.i668, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

.critedge992.i696:                                ; preds = %..critedge992.i696_crit_edge, %bb.afd
  %.pre-phi7719 = phi i32 [ %.pre7718, %..critedge992.i696_crit_edge ], [ %i.fhx, %bb.afd ]
  %.pre-phi7717 = phi i128 [ %.pre7716, %..critedge992.i696_crit_edge ], [ %i.fhz, %bb.afd ]
  %.pre-phi7715 = phi i32 [ %.pre7714, %..critedge992.i696_crit_edge ], [ %i.fhv, %bb.afd ]
  %.pre-phi7709 = phi i32 [ %.pre7708, %..critedge992.i696_crit_edge ], [ %i.fho, %bb.afd ] ; 2 uses
  %.pre-phi7705 = phi i64 [ %.pre7704, %..critedge992.i696_crit_edge ], [ %i.fhw, %bb.afd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.fjg = select i1 %i.fhk, i64 0, i64 4
  %i.fjh = shl i64 %i.fjg, %.pre-phi7705          ; 2 uses
  %i.fji = add i32 %.pre-phi7709, 686
  %i.fjj = sext i32 %i.fji to i64
  %i.fjk = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.fjj
  %i.fjl = load i64, ptr %i.fjk, align 16, !tbaa !106
  %i.fjm = add i32 %.pre-phi7709, 687
  %i.fjn = sext i32 %i.fjm to i64
  %i.fjo = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.fjn
  %i.fjp = load i64, ptr %i.fjo, align 8, !tbaa !106
  %i.fjq = lshr i64 %i.fjp, 63
  %i.fjr = add i64 %i.fjq, %i.fjl
  %i.fjs = zext i64 %i.fjr to i128
  %i.fjt = mul nuw i128 %.pre-phi7717, %i.fjs     ; 2 uses
  %i.fju = lshr i128 %i.fjt, 64
  %i.fjv = trunc nuw i128 %i.fju to i64
  %i.fjw = trunc i128 %i.fjt to i64
  %i.fjx = lshr i64 %i.fjw, 63
  %i.fjy = add nuw i64 %i.fjx, %i.fjv             ; 2 uses
  %.not986.i677 = icmp eq i64 %i.fjh, 0
  %i.fjz = select i1 %.not986.i677, i64 8, i64 9
  %i.fka = add i64 %i.fjz, %i.fjh
  %i.fkb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fjy, i1 true) ; 3 uses
  %i.fkc = trunc nuw nsw i64 %i.fkb to i32
  %i.fkd = shl i64 %i.fjy, %i.fkb                 ; 3 uses
  %i.fke = add nsw i32 %.pre-phi7715, 64
  %i.fkf = add nuw nsw i32 %.pre-phi7719, %i.fkc
  %i.fkg = sub nsw i32 %i.fke, %i.fkf             ; 7 uses
  %i.fkh = shl i64 %i.fka, %i.fkb                 ; 3 uses
  %i.fki = icmp sgt i32 %i.fkg, -1086
  br i1 %i.fki, label %.thread4310, label %bb.aff, !prof !62

bb.aff:                                           ; preds = %.critedge992.i696
  %i.fkj = icmp samesign ult i32 %i.fkg, -1137
  br i1 %i.fkj, label %.thread4307, label %bb.afg

bb.afg:                                           ; preds = %bb.aff
  %i.fkk = sub nuw nsw i32 -1074, %i.fkg          ; 2 uses
  %i.fkl = icmp samesign ult i32 %i.fkg, -1134
  br i1 %i.fkl, label %.thread4307, label %.thread4310, !prof !129

.thread4307:                                      ; preds = %bb.aff, %bb.afg
  %.0897.i6804309 = phi i32 [ %i.fkk, %bb.afg ], [ 64, %bb.aff ]
  %i.fkm = add nsw i32 %.0897.i6804309, -60       ; 2 uses
  %i.fkn = zext nneg i32 %i.fkm to i64            ; 2 uses
  %i.fko = lshr i64 %i.fkd, %i.fkn
  %i.fkp = add nsw i32 %i.fkm, %i.fkg
  %i.fkq = lshr i64 %i.fkh, %i.fkn
  %i.fkr = add nuw i64 %i.fkq, 9
  br label %.thread4310

.thread4310:                                      ; preds = %.critedge992.i696, %.thread4307, %bb.afg
  %.0898.i681 = phi i64 [ %i.fkr, %.thread4307 ], [ %i.fkh, %bb.afg ], [ %i.fkh, %.critedge992.i696 ] ; 2 uses
  %.0896.i682 = phi i32 [ 60, %.thread4307 ], [ %i.fkk, %bb.afg ], [ 11, %.critedge992.i696 ] ; 3 uses
  %.sroa.19.0.in.i683 = phi i32 [ %i.fkp, %.thread4307 ], [ %i.fkg, %bb.afg ], [ %i.fkg, %.critedge992.i696 ]
  %.sroa.025.0.i684 = phi i64 [ %i.fko, %.thread4307 ], [ %i.fkd, %bb.afg ], [ %i.fkd, %.critedge992.i696 ] ; 2 uses
  %i.fks = zext nneg i32 %.0896.i682 to i64       ; 2 uses
  %notmask.i685 = shl nsw i64 -1, %i.fks
  %i.fkt = xor i64 %notmask.i685, -1
  %i.fku = and i64 %.sroa.025.0.i684, %i.fkt
  %i.fkv = shl nuw nsw i64 %i.fku, 3              ; 2 uses
  %i.fkw = add nsw i32 %.0896.i682, -1
  %i.fkx = zext nneg i32 %i.fkw to i64
  %i.fky = shl nuw nsw i64 8, %i.fkx              ; 2 uses
  %i.fkz = lshr i64 %.sroa.025.0.i684, %i.fks
  %i.fla = add i64 %i.fky, %.0898.i681
  %i.flb = icmp uge i64 %i.fkv, %i.fla            ; 2 uses
  %i.flc = zext i1 %i.flb to i64
  %i.fld = add nuw nsw i64 %i.fkz, %i.flc         ; 3 uses
  %i.fle = icmp eq i64 %i.fld, 0
  br i1 %i.fle, label %bb.afq, label %bb.afh, !prof !45

bb.afh:                                           ; preds = %.thread4310
  %i.flf = add nsw i32 %.sroa.19.0.in.i683, %.0896.i682
  %i.flg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.fld, i1 true) ; 2 uses
  %i.flh = trunc nuw nsw i64 %i.flg to i32
  %i.fli = shl i64 %i.fld, %i.flg
  %i.flj = lshr i64 %i.fli, 11                    ; 2 uses
  %i.flk = sub nsw i32 %i.flf, %i.flh             ; 5 uses
  %i.fll = icmp sgt i32 %i.flk, 960
  br i1 %i.fll, label %diy_fp_to_ieee_raw.exit, label %bb.afi, !prof !45

bb.afi:                                           ; preds = %bb.afh
  %i.flm = icmp sgt i32 %i.flk, -1086
  br i1 %i.flm, label %bb.afj, label %bb.afk, !prof !62

bb.afj:                                           ; preds = %bb.afi
  %i.fln = add nsw i32 %i.flk, 1086
  %i.flo = zext nneg i32 %i.fln to i64
  %i.flp = shl nuw nsw i64 %i.flo, 52
  %i.flq = and i64 %i.flj, 4503599627370495
  %i.flr = or disjoint i64 %i.flp, %i.flq
  br label %bb.afq

bb.afk:                                           ; preds = %bb.afi
  %i.fls = icmp samesign ugt i32 %i.flk, -1138
  br i1 %i.fls, label %bb.afl, label %bb.afq, !prof !62

bb.afl:                                           ; preds = %bb.afk
  %i.flt = sub nuw nsw i32 -1085, %i.flk
  %i.flu = zext nneg i32 %i.flt to i64
  %i.flv = lshr i64 %i.flj, %i.flu
  br label %bb.afq

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.afh
  %i.flw = and i32 %2, 128
  %.not4843 = icmp eq i32 %i.flw, 0
  br i1 %.not4843, label %bb.afn, label %bb.afm, !prof !62

bb.afm:                                           ; preds = %diy_fp_to_ieee_raw.exit
  %i.flx = load ptr, ptr %i.l, align 8, !tbaa !107
  store i8 0, ptr %i.flx, align 1, !tbaa !100
  %i.fly = ptrtoint ptr %.33.i668 to i64
  %i.flz = ptrtoint ptr %i.eez to i64
  %i.fma = sub i64 %i.fly, %i.flz
  %i.fmb = shl i64 %i.fma, 8
  %i.fmc = or disjoint i64 %i.fmb, 1
  store i64 %i.fmc, ptr %i.efe, align 8, !tbaa !99
  %i.fmd = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store ptr %i.eez, ptr %i.fmd, align 8, !tbaa !100
  store ptr %.33.i668, ptr %i.l, align 8, !tbaa !107
  br label %.split4352

bb.afn:                                           ; preds = %diy_fp_to_ieee_raw.exit
  br i1 %.not4805, label %bb.afp, label %bb.afo, !prof !62

bb.afo:                                           ; preds = %bb.afn
  store i64 20, ptr %i.efe, align 8, !tbaa !99
  %i.fme = select i1 %i.efi, i64 -4503599627370496, i64 9218868437227405312
  %i.fmf = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fme, ptr %i.fmf, align 8, !tbaa !100
  br label %.split4352

bb.afp:                                           ; preds = %bb.afn
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !107
  br label %.split4352.thread

bb.afq:                                           ; preds = %.thread4310, %bb.afj, %bb.afl, %bb.afk
  %.0.i1504.ph = phi i64 [ 0, %bb.afk ], [ %i.flv, %bb.afl ], [ %i.flr, %bb.afj ], [ 0, %.thread4310 ] ; 7 uses
  %i.fmg = sub i64 %i.fky, %.0898.i681
  %.not987.i687 = icmp ule i64 %i.fkv, %i.fmg
  %spec.select.i688 = or i1 %.not987.i687, %i.flb
  br i1 %spec.select.i688, label %bb.afr, label %bb.afs, !prof !62

bb.afr:                                           ; preds = %bb.afq
  store i64 20, ptr %i.efe, align 8, !tbaa !99
  %i.fmh = select i1 %i.efi, i64 -9223372036854775808, i64 0
  %i.fmi = or disjoint i64 %.0.i1504.ph, %i.fmh
  %i.fmj = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fmi, ptr %i.fmj, align 8, !tbaa !100
  br label %.split4352

bb.afs:                                           ; preds = %bb.afq
  %.not988.i689 = icmp samesign ult i64 %.0.i1504.ph, 4503599627370496 ; 2 uses
end_hunk_1
begin_hunk_2_@yyjson_read_opts:bb.a
.lr.ph6321:                                       ; preds = %.lr.ph6321.preheader, %.lr.ph6321
  %i.htq = phi i8 [ %i.htw, %.lr.ph6321 ], [ %.pre-phi76118284, %.lr.ph6321.preheader ]
  %.31.i3546320 = phi ptr [ %i.htr, %.lr.ph6321 ], [ %.30.i353.lcssa8286, %.lr.ph6321.preheader ]
  %.0928.i6319 = phi i64 [ %i.htu, %.lr.ph6321 ], [ 0, %.lr.ph6321.preheader ]
  %i.htr = getelementptr inbounds nuw i8, ptr %.31.i3546320, i64 1 ; 3 uses
  %i.hts = zext nneg i8 %i.htq to i64
  %i.htt = mul i64 %.0928.i6319, 10
  %i.htu = add i64 %i.htt, %i.hts                 ; 2 uses
  %i.htv = load i8, ptr %i.htr, align 1, !tbaa !100
  %i.htw = add i8 %i.htv, -48                     ; 2 uses
  %i.htx = icmp ult i8 %i.htw, 10
  br i1 %i.htx, label %.lr.ph6321, label %._crit_edge6322, !llvm.loop !12

._crit_edge6322:                                  ; preds = %.lr.ph6321, %.preheader4965
  %.30.i353.lcssa8285 = phi ptr [ %i.hto, %.preheader4965 ], [ %.30.i353.lcssa8286, %.lr.ph6321 ]
  %.0928.i.lcssa = phi i64 [ 0, %.preheader4965 ], [ %i.htu, %.lr.ph6321 ] ; 2 uses
  %.31.i354.lcssa = phi ptr [ %i.hto, %.preheader4965 ], [ %i.htr, %.lr.ph6321 ] ; 6 uses
  %i.hty = ptrtoint ptr %.31.i354.lcssa to i64    ; 2 uses
  %i.htz = ptrtoint ptr %.30.i353.lcssa8285 to i64
  %i.hua = sub i64 %i.hty, %i.htz
  %i.hub = icmp sgt i64 %i.hua, 18
  br i1 %i.hub, label %bb.apq, label %bb.apx, !prof !45

bb.apq:                                           ; preds = %._crit_edge6322
  br i1 %i.htc, label %bb.apr, label %bb.aps

bb.apr:                                           ; preds = %bb.apq
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.huc = select i1 %i.gub, i64 -9223372036854775808, i64 0
  %i.hud = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.huc, ptr %i.hud, align 8, !tbaa !100
  br label %read_num.exit

bb.aps:                                           ; preds = %bb.apq
  %i.hue = and i32 %2, 128
  %.not4768 = icmp eq i32 %i.hue, 0
  br i1 %.not4768, label %bb.apu, label %bb.apt, !prof !62

bb.apt:                                           ; preds = %bb.aps
  %i.huf = load ptr, ptr %i.h, align 8, !tbaa !107
  store i8 0, ptr %i.huf, align 1, !tbaa !100
  %i.hug = ptrtoint ptr %i.gtw to i64
  %i.huh = sub i64 %i.hty, %i.hug
  %i.hui = shl i64 %i.huh, 8
  %i.huj = or disjoint i64 %i.hui, 1
  store i64 %i.huj, ptr %.5665.i347, align 8, !tbaa !99
  %i.huk = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store ptr %i.gtw, ptr %i.huk, align 8, !tbaa !100
  store ptr %.31.i354.lcssa, ptr %i.h, align 8, !tbaa !107
  br label %read_num.exit

bb.apu:                                           ; preds = %bb.aps
  br i1 %.not4722, label %bb.apw, label %bb.apv, !prof !62

bb.apv:                                           ; preds = %bb.apu
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.hul = select i1 %i.gub, i64 -4503599627370496, i64 9218868437227405312
  %i.hum = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.hul, ptr %i.hum, align 8, !tbaa !100
  br label %read_num.exit

bb.apw:                                           ; preds = %bb.apu
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.apx:                                           ; preds = %._crit_edge6322
  %i.hun = sub nsw i64 0, %.0928.i.lcssa
  %i.huo = select i1 %i.htc, i64 %i.hun, i64 %.0928.i.lcssa
  %i.hup = add nsw i64 %i.huo, %.0929.i
  br label %bb.apy

bb.apy:                                           ; preds = %bb.apx, %.critedge.i
  %.1930.i = phi i64 [ %i.hup, %bb.apx ], [ %i.hsj, %.critedge.i ] ; 3 uses
  %.32.i355 = phi ptr [ %.31.i354.lcssa, %bb.apx ], [ %.27.i381, %.critedge.i ] ; 6 uses
  %.21893.i = phi i64 [ %.20892.i, %bb.apx ], [ %i.hre, %.critedge.i ]
  %.22.i356 = phi ptr [ %.21.i352, %bb.apx ], [ %.19.i382, %.critedge.i ]
  %.2866.i = phi ptr [ %.1865.i, %bb.apx ], [ %..27.i, %.critedge.i ]
  %.2862.i = phi ptr [ %.1861.i, %bb.apx ], [ %..24.i, %.critedge.i ]
  %i.huq = icmp slt i64 %.1930.i, -343
  br i1 %i.huq, label %bb.apz, label %bb.aqa, !prof !45

bb.apz:                                           ; preds = %bb.apy
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.hur = select i1 %i.gub, i64 -9223372036854775808, i64 0
  %i.hus = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.hur, ptr %i.hus, align 8, !tbaa !100
  br label %read_num.exit

bb.aqa:                                           ; preds = %bb.apy
  %i.hut = icmp sgt i64 %.1930.i, 308
  br i1 %i.hut, label %bb.aqb, label %bb.aqg, !prof !45

bb.aqb:                                           ; preds = %bb.aqa
  %i.huu = and i32 %2, 128
  %.not4766 = icmp eq i32 %i.huu, 0
  br i1 %.not4766, label %bb.aqd, label %bb.aqc, !prof !62

bb.aqc:                                           ; preds = %bb.aqb
  %i.huv = load ptr, ptr %i.h, align 8, !tbaa !107
  store i8 0, ptr %i.huv, align 1, !tbaa !100
  %i.huw = ptrtoint ptr %.32.i355 to i64
  %i.hux = ptrtoint ptr %i.gtw to i64
  %i.huy = sub i64 %i.huw, %i.hux
  %i.huz = shl i64 %i.huy, 8
  %i.hva = or disjoint i64 %i.huz, 1
  store i64 %i.hva, ptr %.5665.i347, align 8, !tbaa !99
  %i.hvb = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store ptr %i.gtw, ptr %i.hvb, align 8, !tbaa !100
  store ptr %.32.i355, ptr %i.h, align 8, !tbaa !107
  br label %read_num.exit

bb.aqd:                                           ; preds = %bb.aqb
  br i1 %.not4722, label %bb.aqf, label %bb.aqe, !prof !62

bb.aqe:                                           ; preds = %bb.aqd
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.hvc = select i1 %i.gub, i64 -4503599627370496, i64 9218868437227405312
  %i.hvd = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.hvc, ptr %i.hvd, align 8, !tbaa !100
  br label %read_num.exit

bb.aqf:                                           ; preds = %bb.aqd
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.aqg:                                           ; preds = %bb.aqa, %bb.apn
  %storemerge.in.i = phi i64 [ %.neg981.i, %bb.apn ], [ %.1930.i, %bb.aqa ] ; 3 uses
  %.33.i357 = phi ptr [ %.28.i362, %bb.apn ], [ %.32.i355, %bb.aqa ] ; 7 uses
  %.22894.i = phi i64 [ %.19891.i, %bb.apn ], [ %.21893.i, %bb.aqa ] ; 7 uses
  %.23.i358 = phi ptr [ %.20.i363, %bb.apn ], [ %.22.i356, %bb.aqa ]
  %.3867.i = phi ptr [ %.28.i362, %bb.apn ], [ %.2866.i, %bb.aqa ]
  %.3863.i = phi ptr [ null, %bb.apn ], [ %.2862.i, %bb.aqa ] ; 2 uses
  %storemerge.i359 = trunc i64 %storemerge.in.i to i32 ; 8 uses
  store i32 %storemerge.i359, ptr %i.d, align 4, !tbaa !119
  %i.hve = icmp ult i64 %.22894.i, 9007199254740992
  %i.hvf = add i32 %storemerge.i359, 22
  %i.hvg = icmp ult i32 %i.hvf, 45
  %or.cond9.i = and i1 %i.hve, %i.hvg
  br i1 %or.cond9.i, label %bb.aqh, label %bb.aqk

bb.aqh:                                           ; preds = %bb.aqg
  %i.hvh = uitofp nneg i64 %.22894.i to double    ; 2 uses
  %i.hvi = icmp slt i32 %storemerge.i359, 0
  br i1 %i.hvi, label %bb.aqi, label %bb.aqj

bb.aqi:                                           ; preds = %bb.aqh
  %i.hvj = sub nsw i64 0, %storemerge.in.i
  %i.hvk = and i64 %i.hvj, 4294967295
  %i.hvl = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.hvk
  %i.hvm = load double, ptr %i.hvl, align 8, !tbaa !128
  %i.hvn = fdiv double %i.hvh, %i.hvm
  br label %.split4418

bb.aqj:                                           ; preds = %bb.aqh
  %i.hvo = and i64 %storemerge.in.i, 2147483647
  %i.hvp = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.hvo
  %i.hvq = load double, ptr %i.hvp, align 8, !tbaa !128
  %i.hvr = fmul double %i.hvq, %i.hvh
  br label %.split4418

.split4418:                                       ; preds = %bb.aqj, %bb.aqi
  %.0900.i = phi double [ %i.hvn, %bb.aqi ], [ %i.hvr, %bb.aqj ] ; 2 uses
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.hvs = fneg double %.0900.i
  %i.hvt = select i1 %i.gub, double %i.hvs, double %.0900.i
  %i.hvu = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store double %i.hvt, ptr %i.hvu, align 8, !tbaa !100
  store ptr %.33.i357, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

bb.aqk:                                           ; preds = %bb.aqg
  %i.hvv = icmp eq ptr %.3863.i, null             ; 2 uses
  %i.hvw = add i32 %storemerge.i359, 306
  %i.hvx = icmp ult i32 %i.hvw, 594
  %i.hvy = and i1 %i.hvx, %i.hvv
  br i1 %i.hvy, label %bb.aql, label %..critedge992.i_crit_edge, !prof !62

..critedge992.i_crit_edge:                        ; preds = %bb.aqk
  %.pre7638 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %.pre7640 = shl i64 %.22894.i, %.pre7638
  %.pre7642 = shl i32 %storemerge.i359, 1
  %.pre7644 = mul nsw i32 %storemerge.i359, 217706
  %.pre7646 = add nsw i32 %.pre7644, -4128768
  %.pre7648 = ashr i32 %.pre7646, 16
  %.pre7650 = zext i64 %.pre7640 to i128
  %.pre7652 = trunc nuw nsw i64 %.pre7638 to i32
  br label %.critedge992.i

bb.aql:                                           ; preds = %bb.aqk
  %i.hvz = shl nsw i32 %storemerge.i359, 1        ; 2 uses
  %i.hwa = sext i32 %i.hvz to i64
  %i.hwb = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.hwa ; 2 uses
  %i.hwc = getelementptr i8, ptr %i.hwb, i64 5488
  %i.hwd = load i64, ptr %i.hwc, align 16, !tbaa !106
  %i.hwe = mul nsw i32 %storemerge.i359, 217706
  %i.hwf = add nsw i32 %i.hwe, -4128768
  %i.hwg = ashr i32 %i.hwf, 16                    ; 2 uses
  %i.hwh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %i.hwi = trunc nuw nsw i64 %i.hwh to i32        ; 2 uses
  %i.hwj = shl i64 %.22894.i, %i.hwh              ; 2 uses
  %i.hwk = zext i64 %i.hwj to i128                ; 2 uses
  %i.hwl = zext i64 %i.hwd to i128
  %i.hwm = mul nuw i128 %i.hwl, %i.hwk            ; 2 uses
  %i.hwn = lshr i128 %i.hwm, 64
  %i.hwo = trunc nuw i128 %i.hwn to i64           ; 3 uses
  %i.hwp = trunc i128 %i.hwm to i64               ; 2 uses
  %i.hwq = and i64 %i.hwo, 511
  %i.hwr = add nsw i64 %i.hwq, -1
  %i.hws = icmp ult i64 %i.hwr, 510
  br i1 %i.hws, label %.split4419, label %bb.aqm

bb.aqm:                                           ; preds = %bb.aql
  %i.hwt = getelementptr i8, ptr %i.hwb, i64 5496
  %i.hwu = load i64, ptr %i.hwt, align 8, !tbaa !106
  %17 = call i64 @llvm.umulh.i64(i64 %i.hwj, i64 %i.hwu)
  %i.hwv = add i64 %17, %i.hwp                    ; 2 uses
  %i.hww = add i64 %i.hwv, -1
  %i.hwx = icmp ult i64 %i.hww, -2
  br i1 %i.hwx, label %bb.aqn, label %.critedge992.i

bb.aqn:                                           ; preds = %bb.aqm
  %i.hwy = icmp ult i64 %i.hwv, %i.hwp
  %i.hwz = zext i1 %i.hwy to i64
  %i.hxa = add nuw i64 %i.hwz, %i.hwo
  br label %.split4419

.split4419:                                       ; preds = %bb.aqn, %bb.aql
  %.03992 = phi i64 [ %i.hwo, %bb.aql ], [ %i.hxa, %bb.aqn ] ; 2 uses
  %i.hxb = icmp sgt i64 %.03992, -1               ; 2 uses
  %.neg983.i = sext i1 %i.hxb to i32
  %i.hxc = zext i1 %i.hxb to i64
  %i.hxd = shl i64 %.03992, %i.hxc                ; 2 uses
  %i.hxe = and i64 %i.hxd, 1024
  %i.hxf = add i64 %i.hxe, %i.hxd                 ; 2 uses
  %i.hxg = icmp ult i64 %i.hxf, 1024
  %spec.select4611.v = select i1 %i.hxg, i32 65, i32 64
  %i.hxh = lshr i64 %i.hxf, 11
  %reass.sub6529 = sub nsw i32 %i.hwg, %i.hwi
  %i.hxi = add nsw i32 %reass.sub6529, 1086
  %spec.select4611 = add nsw i32 %i.hxi, %.neg983.i
  %i.hxj = add nsw i32 %spec.select4611, %spec.select4611.v
  %i.hxk = zext nneg i32 %i.hxj to i64
  %i.hxl = shl nuw nsw i64 %i.hxk, 52
  %i.hxm = and i64 %i.hxh, 4503599627370495
  %i.hxn = or disjoint i64 %i.hxl, %i.hxm
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.hxo = select i1 %i.gub, i64 -9223372036854775808, i64 0
  %i.hxp = or disjoint i64 %i.hxn, %i.hxo
  %i.hxq = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.hxp, ptr %i.hxq, align 8, !tbaa !100
  store ptr %.33.i357, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.aqm
  %.pre-phi7653 = phi i32 [ %.pre7652, %..critedge992.i_crit_edge ], [ %i.hwi, %bb.aqm ]
  %.pre-phi7651 = phi i128 [ %.pre7650, %..critedge992.i_crit_edge ], [ %i.hwk, %bb.aqm ]
  %.pre-phi7649 = phi i32 [ %.pre7648, %..critedge992.i_crit_edge ], [ %i.hwg, %bb.aqm ]
  %.pre-phi7643 = phi i32 [ %.pre7642, %..critedge992.i_crit_edge ], [ %i.hvz, %bb.aqm ] ; 2 uses
  %.pre-phi7639 = phi i64 [ %.pre7638, %..critedge992.i_crit_edge ], [ %i.hwh, %bb.aqm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.hxr = select i1 %i.hvv, i64 0, i64 4
  %i.hxs = shl i64 %i.hxr, %.pre-phi7639          ; 2 uses
  %i.hxt = add i32 %.pre-phi7643, 686
  %i.hxu = sext i32 %i.hxt to i64
  %i.hxv = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.hxu
  %i.hxw = load i64, ptr %i.hxv, align 16, !tbaa !106
  %i.hxx = add i32 %.pre-phi7643, 687
  %i.hxy = sext i32 %i.hxx to i64
  %i.hxz = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.hxy
  %i.hya = load i64, ptr %i.hxz, align 8, !tbaa !106
  %i.hyb = lshr i64 %i.hya, 63
  %i.hyc = add i64 %i.hyb, %i.hxw
  %i.hyd = zext i64 %i.hyc to i128
  %i.hye = mul nuw i128 %.pre-phi7651, %i.hyd     ; 2 uses
  %i.hyf = lshr i128 %i.hye, 64
  %i.hyg = trunc nuw i128 %i.hyf to i64
  %i.hyh = trunc i128 %i.hye to i64
  %i.hyi = lshr i64 %i.hyh, 63
  %i.hyj = add nuw i64 %i.hyi, %i.hyg             ; 2 uses
  %.not986.i = icmp eq i64 %i.hxs, 0
  %i.hyk = select i1 %.not986.i, i64 8, i64 9
  %i.hyl = add i64 %i.hyk, %i.hxs
  %i.hym = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hyj, i1 true) ; 3 uses
  %i.hyn = trunc nuw nsw i64 %i.hym to i32
  %i.hyo = shl i64 %i.hyj, %i.hym                 ; 3 uses
  %i.hyp = add nsw i32 %.pre-phi7649, 64
  %i.hyq = add nuw nsw i32 %.pre-phi7653, %i.hyn
  %i.hyr = sub nsw i32 %i.hyp, %i.hyq             ; 7 uses
  %i.hys = shl i64 %i.hyl, %i.hym                 ; 3 uses
  %i.hyt = icmp sgt i32 %i.hyr, -1086
  br i1 %i.hyt, label %.thread4378, label %bb.aqo, !prof !62

bb.aqo:                                           ; preds = %.critedge992.i
  %i.hyu = icmp samesign ult i32 %i.hyr, -1137
  br i1 %i.hyu, label %.thread4375, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  %i.hyv = sub nuw nsw i32 -1074, %i.hyr          ; 2 uses
  %i.hyw = icmp samesign ult i32 %i.hyr, -1134
  br i1 %i.hyw, label %.thread4375, label %.thread4378, !prof !263

.thread4375:                                      ; preds = %bb.aqo, %bb.aqp
  %.0897.i4377 = phi i32 [ %i.hyv, %bb.aqp ], [ 64, %bb.aqo ]
  %i.hyx = add nsw i32 %.0897.i4377, -60          ; 2 uses
  %i.hyy = zext nneg i32 %i.hyx to i64            ; 2 uses
  %i.hyz = lshr i64 %i.hyo, %i.hyy
  %i.hza = add nsw i32 %i.hyx, %i.hyr
  %i.hzb = lshr i64 %i.hys, %i.hyy
  %i.hzc = add nuw i64 %i.hzb, 9
  br label %.thread4378

.thread4378:                                      ; preds = %.critedge992.i, %.thread4375, %bb.aqp
  %.0898.i = phi i64 [ %i.hzc, %.thread4375 ], [ %i.hys, %bb.aqp ], [ %i.hys, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread4375 ], [ %i.hyv, %bb.aqp ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.hza, %.thread4375 ], [ %i.hyr, %bb.aqp ], [ %i.hyr, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.hyz, %.thread4375 ], [ %i.hyo, %bb.aqp ], [ %i.hyo, %.critedge992.i ] ; 2 uses
  %i.hzd = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.hzd
  %i.hze = xor i64 %notmask.i, -1
  %i.hzf = and i64 %.sroa.025.0.i, %i.hze
  %i.hzg = shl nuw nsw i64 %i.hzf, 3              ; 2 uses
  %i.hzh = add nsw i32 %.0896.i, -1
  %i.hzi = zext nneg i32 %i.hzh to i64
  %i.hzj = shl nuw nsw i64 8, %i.hzi              ; 2 uses
  %i.hzk = lshr i64 %.sroa.025.0.i, %i.hzd
  %i.hzl = add i64 %i.hzj, %.0898.i
  %i.hzm = icmp uge i64 %i.hzg, %i.hzl            ; 2 uses
  %i.hzn = zext i1 %i.hzm to i64
  %i.hzo = add nuw nsw i64 %i.hzk, %i.hzn         ; 3 uses
  %i.hzp = icmp eq i64 %i.hzo, 0
  br i1 %i.hzp, label %bb.aqz, label %bb.aqq, !prof !45

bb.aqq:                                           ; preds = %.thread4378
  %i.hzq = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.hzr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.hzo, i1 true) ; 2 uses
  %i.hzs = trunc nuw nsw i64 %i.hzr to i32
  %i.hzt = shl i64 %i.hzo, %i.hzr
  %i.hzu = lshr i64 %i.hzt, 11                    ; 2 uses
  %i.hzv = sub nsw i32 %i.hzq, %i.hzs             ; 5 uses
  %i.hzw = icmp sgt i32 %i.hzv, 960
  br i1 %i.hzw, label %diy_fp_to_ieee_raw.exit1510, label %bb.aqr, !prof !45

bb.aqr:                                           ; preds = %bb.aqq
  %i.hzx = icmp sgt i32 %i.hzv, -1086
  br i1 %i.hzx, label %bb.aqs, label %bb.aqt, !prof !62

bb.aqs:                                           ; preds = %bb.aqr
  %i.hzy = add nsw i32 %i.hzv, 1086
  %i.hzz = zext nneg i32 %i.hzy to i64
  %i.iaa = shl nuw nsw i64 %i.hzz, 52
  %i.iab = and i64 %i.hzu, 4503599627370495
  %i.iac = or disjoint i64 %i.iaa, %i.iab
  br label %bb.aqz

bb.aqt:                                           ; preds = %bb.aqr
  %i.iad = icmp samesign ugt i32 %i.hzv, -1138
  br i1 %i.iad, label %bb.aqu, label %bb.aqz, !prof !62

bb.aqu:                                           ; preds = %bb.aqt
  %i.iae = sub nuw nsw i32 -1085, %i.hzv
  %i.iaf = zext nneg i32 %i.iae to i64
  %i.iag = lshr i64 %i.hzu, %i.iaf
  br label %bb.aqz

diy_fp_to_ieee_raw.exit1510:                      ; preds = %bb.aqq
  %i.iah = and i32 %2, 128
  %.not4760 = icmp eq i32 %i.iah, 0
  br i1 %.not4760, label %bb.aqw, label %bb.aqv, !prof !62

bb.aqv:                                           ; preds = %diy_fp_to_ieee_raw.exit1510
  %i.iai = load ptr, ptr %i.h, align 8, !tbaa !107
  store i8 0, ptr %i.iai, align 1, !tbaa !100
  %i.iaj = ptrtoint ptr %.33.i357 to i64
  %i.iak = ptrtoint ptr %i.gtw to i64
  %i.ial = sub i64 %i.iaj, %i.iak
  %i.iam = shl i64 %i.ial, 8
  %i.ian = or disjoint i64 %i.iam, 1
  store i64 %i.ian, ptr %.5665.i347, align 8, !tbaa !99
  %i.iao = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store ptr %i.gtw, ptr %i.iao, align 8, !tbaa !100
  store ptr %.33.i357, ptr %i.h, align 8, !tbaa !107
  br label %.split4420

bb.aqw:                                           ; preds = %diy_fp_to_ieee_raw.exit1510
  br i1 %.not4722, label %bb.aqy, label %bb.aqx, !prof !62

bb.aqx:                                           ; preds = %bb.aqw
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.iap = select i1 %i.gub, i64 -4503599627370496, i64 9218868437227405312
  %i.iaq = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.iap, ptr %i.iaq, align 8, !tbaa !100
  br label %.split4420

bb.aqy:                                           ; preds = %bb.aqw
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !107
  br label %.split4420.thread

bb.aqz:                                           ; preds = %.thread4378, %bb.aqs, %bb.aqu, %bb.aqt
  %.0.i1509.ph = phi i64 [ 0, %bb.aqt ], [ %i.iag, %bb.aqu ], [ %i.iac, %bb.aqs ], [ 0, %.thread4378 ] ; 7 uses
  %i.iar = sub i64 %i.hzj, %.0898.i
  %.not987.i = icmp ule i64 %i.hzg, %i.iar
  %spec.select.i = or i1 %.not987.i, %i.hzm
  br i1 %spec.select.i, label %bb.ara, label %bb.arb, !prof !62

bb.ara:                                           ; preds = %bb.aqz
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.ias = select i1 %i.gub, i64 -9223372036854775808, i64 0
  %i.iat = or disjoint i64 %.0.i1509.ph, %i.ias
  %i.iau = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.iat, ptr %i.iau, align 8, !tbaa !100
  br label %.split4420

bb.arb:                                           ; preds = %bb.aqz
  %.not988.i = icmp samesign ult i64 %.0.i1509.ph, 4503599627370496 ; 2 uses
end_hunk_2
begin_hunk_3_@yyjson_read_opts:bb.a
.lr.ph6123:                                       ; preds = %.lr.ph6123.preheader, %.lr.ph6123
  %i.mqh = phi i8 [ %i.mqn, %.lr.ph6123 ], [ %.pre-phi76178360, %.lr.ph6123.preheader ]
  %.31.i3986122 = phi ptr [ %i.mqi, %.lr.ph6123 ], [ %.30.i396.lcssa8362, %.lr.ph6123.preheader ]
  %.0928.i3976121 = phi i64 [ %i.mql, %.lr.ph6123 ], [ 0, %.lr.ph6123.preheader ]
  %i.mqi = getelementptr inbounds nuw i8, ptr %.31.i3986122, i64 1 ; 3 uses
  %i.mqj = zext nneg i8 %i.mqh to i64
  %i.mqk = mul i64 %.0928.i3976121, 10
  %i.mql = add i64 %i.mqk, %i.mqj                 ; 2 uses
  %i.mqm = load i8, ptr %i.mqi, align 1, !tbaa !100
  %i.mqn = add i8 %i.mqm, -48                     ; 2 uses
  %i.mqo = icmp ult i8 %i.mqn, 10
  br i1 %i.mqo, label %.lr.ph6123, label %._crit_edge6124, !llvm.loop !12

._crit_edge6124:                                  ; preds = %.lr.ph6123, %.preheader5003
  %.30.i396.lcssa8361 = phi ptr [ %i.mqf, %.preheader5003 ], [ %.30.i396.lcssa8362, %.lr.ph6123 ]
  %.0928.i397.lcssa = phi i64 [ 0, %.preheader5003 ], [ %i.mql, %.lr.ph6123 ] ; 2 uses
  %.31.i398.lcssa = phi ptr [ %i.mqf, %.preheader5003 ], [ %i.mqi, %.lr.ph6123 ] ; 6 uses
  %i.mqp = ptrtoint ptr %.31.i398.lcssa to i64    ; 2 uses
  %i.mqq = ptrtoint ptr %.30.i396.lcssa8361 to i64
  %i.mqr = sub i64 %i.mqp, %i.mqq
  %i.mqs = icmp sgt i64 %i.mqr, 18
  br i1 %i.mqs, label %bb.bmb, label %bb.bmi, !prof !45

bb.bmb:                                           ; preds = %._crit_edge6124
  br i1 %i.mpt, label %bb.bmc, label %bb.bmd

bb.bmc:                                           ; preds = %bb.bmb
  store i64 20, ptr %i.lqg, align 8, !tbaa !99
  %i.mqt = select i1 %i.lqk, i64 -9223372036854775808, i64 0
  %i.mqu = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mqt, ptr %i.mqu, align 8, !tbaa !100
  br label %read_num.exit515

bb.bmd:                                           ; preds = %bb.bmb
  %i.mqv = and i32 %2, 128
  %.not4704 = icmp eq i32 %i.mqv, 0
  br i1 %.not4704, label %bb.bmf, label %bb.bme, !prof !62

bb.bme:                                           ; preds = %bb.bmd
  %i.mqw = load ptr, ptr %i.h, align 8, !tbaa !107
  store i8 0, ptr %i.mqw, align 1, !tbaa !100
  %i.mqx = ptrtoint ptr %i.lqb to i64
  %i.mqy = sub i64 %i.mqp, %i.mqx
  %i.mqz = shl i64 %i.mqy, 8
  %i.mra = or disjoint i64 %i.mqz, 1
  store i64 %i.mra, ptr %i.lqg, align 8, !tbaa !99
  %i.mrb = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store ptr %i.lqb, ptr %i.mrb, align 8, !tbaa !100
  store ptr %.31.i398.lcssa, ptr %i.h, align 8, !tbaa !107
  br label %read_num.exit515

bb.bmf:                                           ; preds = %bb.bmd
  br i1 %.not4658, label %bb.bmh, label %bb.bmg, !prof !62

bb.bmg:                                           ; preds = %bb.bmf
  store i64 20, ptr %i.lqg, align 8, !tbaa !99
  %i.mrc = select i1 %i.lqk, i64 -4503599627370496, i64 9218868437227405312
  %i.mrd = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mrc, ptr %i.mrd, align 8, !tbaa !100
  br label %read_num.exit515

bb.bmh:                                           ; preds = %bb.bmf
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !107
  br label %read_num.exit515.thread

bb.bmi:                                           ; preds = %._crit_edge6124
  %i.mre = sub nsw i64 0, %.0928.i397.lcssa
  %i.mrf = select i1 %i.mpt, i64 %i.mre, i64 %.0928.i397.lcssa
  %i.mrg = add nsw i64 %i.mrf, %.0929.i390
  br label %bb.bmj

bb.bmj:                                           ; preds = %bb.bmi, %.critedge.i509
  %.1930.i399 = phi i64 [ %i.mrg, %bb.bmi ], [ %i.mpa, %.critedge.i509 ] ; 3 uses
  %.32.i400 = phi ptr [ %.31.i398.lcssa, %bb.bmi ], [ %.27.i505, %.critedge.i509 ] ; 6 uses
  %.21893.i401 = phi i64 [ %.20892.i392, %bb.bmi ], [ %i.mnv, %.critedge.i509 ]
  %.22.i402 = phi ptr [ %.21.i393, %bb.bmi ], [ %.19.i506, %.critedge.i509 ]
  %.2866.i403 = phi ptr [ %.1865.i394, %bb.bmi ], [ %..27.i510, %.critedge.i509 ]
  %.2862.i404 = phi ptr [ %.1861.i395, %bb.bmi ], [ %..24.i511, %.critedge.i509 ]
  %i.mrh = icmp slt i64 %.1930.i399, -343
  br i1 %i.mrh, label %bb.bmk, label %bb.bml, !prof !45

bb.bmk:                                           ; preds = %bb.bmj
  store i64 20, ptr %i.lqg, align 8, !tbaa !99
  %i.mri = select i1 %i.lqk, i64 -9223372036854775808, i64 0
  %i.mrj = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mri, ptr %i.mrj, align 8, !tbaa !100
  br label %read_num.exit515

bb.bml:                                           ; preds = %bb.bmj
  %i.mrk = icmp sgt i64 %.1930.i399, 308
  br i1 %i.mrk, label %bb.bmm, label %bb.bmr, !prof !45

bb.bmm:                                           ; preds = %bb.bml
  %i.mrl = and i32 %2, 128
  %.not4702 = icmp eq i32 %i.mrl, 0
  br i1 %.not4702, label %bb.bmo, label %bb.bmn, !prof !62

bb.bmn:                                           ; preds = %bb.bmm
  %i.mrm = load ptr, ptr %i.h, align 8, !tbaa !107
  store i8 0, ptr %i.mrm, align 1, !tbaa !100
  %i.mrn = ptrtoint ptr %.32.i400 to i64
  %i.mro = ptrtoint ptr %i.lqb to i64
  %i.mrp = sub i64 %i.mrn, %i.mro
  %i.mrq = shl i64 %i.mrp, 8
  %i.mrr = or disjoint i64 %i.mrq, 1
  store i64 %i.mrr, ptr %i.lqg, align 8, !tbaa !99
  %i.mrs = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store ptr %i.lqb, ptr %i.mrs, align 8, !tbaa !100
  store ptr %.32.i400, ptr %i.h, align 8, !tbaa !107
  br label %read_num.exit515

bb.bmo:                                           ; preds = %bb.bmm
  br i1 %.not4658, label %bb.bmq, label %bb.bmp, !prof !62

bb.bmp:                                           ; preds = %bb.bmo
  store i64 20, ptr %i.lqg, align 8, !tbaa !99
  %i.mrt = select i1 %i.lqk, i64 -4503599627370496, i64 9218868437227405312
  %i.mru = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mrt, ptr %i.mru, align 8, !tbaa !100
  br label %read_num.exit515

bb.bmq:                                           ; preds = %bb.bmo
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !107
  br label %read_num.exit515.thread

bb.bmr:                                           ; preds = %bb.bml, %bb.bly
  %storemerge.in.i405 = phi i64 [ %.neg981.i448, %bb.bly ], [ %.1930.i399, %bb.bml ] ; 3 uses
  %.33.i406 = phi ptr [ %.28.i444, %bb.bly ], [ %.32.i400, %bb.bml ] ; 7 uses
  %.22894.i407 = phi i64 [ %.19891.i445, %bb.bly ], [ %.21893.i401, %bb.bml ] ; 7 uses
  %.23.i408 = phi ptr [ %.20.i446, %bb.bly ], [ %.22.i402, %bb.bml ]
  %.3867.i409 = phi ptr [ %.28.i444, %bb.bly ], [ %.2866.i403, %bb.bml ]
  %.3863.i410 = phi ptr [ null, %bb.bly ], [ %.2862.i404, %bb.bml ] ; 2 uses
  %storemerge.i411 = trunc i64 %storemerge.in.i405 to i32 ; 8 uses
  store i32 %storemerge.i411, ptr %i.c, align 4, !tbaa !119
  %i.mrv = icmp ult i64 %.22894.i407, 9007199254740992
  %i.mrw = add i32 %storemerge.i411, 22
  %i.mrx = icmp ult i32 %i.mrw, 45
  %or.cond9.i412 = and i1 %i.mrv, %i.mrx
  br i1 %or.cond9.i412, label %bb.bms, label %bb.bmv

bb.bms:                                           ; preds = %bb.bmr
  %i.mry = uitofp nneg i64 %.22894.i407 to double ; 2 uses
  %i.mrz = icmp slt i32 %storemerge.i411, 0
  br i1 %i.mrz, label %bb.bmt, label %bb.bmu

bb.bmt:                                           ; preds = %bb.bms
  %i.msa = sub nsw i64 0, %storemerge.in.i405
  %i.msb = and i64 %i.msa, 4294967295
  %i.msc = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.msb
  %i.msd = load double, ptr %i.msc, align 8, !tbaa !128
  %i.mse = fdiv double %i.mry, %i.msd
  br label %.split4567

bb.bmu:                                           ; preds = %bb.bms
  %i.msf = and i64 %storemerge.in.i405, 2147483647
  %i.msg = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.msf
  %i.msh = load double, ptr %i.msg, align 8, !tbaa !128
  %i.msi = fmul double %i.msh, %i.mry
  br label %.split4567

.split4567:                                       ; preds = %bb.bmu, %bb.bmt
  %.0900.i436 = phi double [ %i.mse, %bb.bmt ], [ %i.msi, %bb.bmu ] ; 2 uses
  store i64 20, ptr %i.lqg, align 8, !tbaa !99
  %i.msj = fneg double %.0900.i436
  %i.msk = select i1 %i.lqk, double %i.msj, double %.0900.i436
  %i.msl = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store double %i.msk, ptr %i.msl, align 8, !tbaa !100
  store ptr %.33.i406, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

bb.bmv:                                           ; preds = %bb.bmr
  %i.msm = icmp eq ptr %.3863.i410, null          ; 2 uses
  %i.msn = add i32 %storemerge.i411, 306
  %i.mso = icmp ult i32 %i.msn, 594
  %i.msp = and i1 %i.mso, %i.msm
  br i1 %i.msp, label %bb.bmw, label %..critedge992.i434_crit_edge, !prof !62

..critedge992.i434_crit_edge:                     ; preds = %bb.bmv
  %.pre7660 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i407, i1 true) ; 3 uses
  %.pre7662 = shl i64 %.22894.i407, %.pre7660
  %.pre7664 = shl i32 %storemerge.i411, 1
  %.pre7666 = mul nsw i32 %storemerge.i411, 217706
  %.pre7668 = add nsw i32 %.pre7666, -4128768
  %.pre7670 = ashr i32 %.pre7668, 16
  %.pre7672 = zext i64 %.pre7662 to i128
  %.pre7674 = trunc nuw nsw i64 %.pre7660 to i32
  br label %.critedge992.i434

bb.bmw:                                           ; preds = %bb.bmv
  %i.msq = shl nsw i32 %storemerge.i411, 1        ; 2 uses
  %i.msr = sext i32 %i.msq to i64
  %i.mss = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.msr ; 2 uses
  %i.mst = getelementptr i8, ptr %i.mss, i64 5488
  %i.msu = load i64, ptr %i.mst, align 16, !tbaa !106
  %i.msv = mul nsw i32 %storemerge.i411, 217706
  %i.msw = add nsw i32 %i.msv, -4128768
  %i.msx = ashr i32 %i.msw, 16                    ; 2 uses
  %i.msy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i407, i1 true) ; 3 uses
  %i.msz = trunc nuw nsw i64 %i.msy to i32        ; 2 uses
  %i.mta = shl i64 %.22894.i407, %i.msy           ; 2 uses
  %i.mtb = zext i64 %i.mta to i128                ; 2 uses
  %i.mtc = zext i64 %i.msu to i128
  %i.mtd = mul nuw i128 %i.mtc, %i.mtb            ; 2 uses
  %i.mte = lshr i128 %i.mtd, 64
  %i.mtf = trunc nuw i128 %i.mte to i64           ; 3 uses
  %i.mtg = trunc i128 %i.mtd to i64               ; 2 uses
  %i.mth = and i64 %i.mtf, 511
  %i.mti = add nsw i64 %i.mth, -1
  %i.mtj = icmp ult i64 %i.mti, 510
  br i1 %i.mtj, label %.split4568, label %bb.bmx

bb.bmx:                                           ; preds = %bb.bmw
  %i.mtk = getelementptr i8, ptr %i.mss, i64 5496
  %i.mtl = load i64, ptr %i.mtk, align 8, !tbaa !106
  %18 = call i64 @llvm.umulh.i64(i64 %i.mta, i64 %i.mtl)
  %i.mtm = add i64 %18, %i.mtg                    ; 2 uses
  %i.mtn = add i64 %i.mtm, -1
  %i.mto = icmp ult i64 %i.mtn, -2
  br i1 %i.mto, label %bb.bmy, label %.critedge992.i434

bb.bmy:                                           ; preds = %bb.bmx
  %i.mtp = icmp ult i64 %i.mtm, %i.mtg
  %i.mtq = zext i1 %i.mtp to i64
  %i.mtr = add nuw i64 %i.mtq, %i.mtf
  br label %.split4568

.split4568:                                       ; preds = %bb.bmy, %bb.bmw
  %.03994 = phi i64 [ %i.mtf, %bb.bmw ], [ %i.mtr, %bb.bmy ] ; 2 uses
  %i.mts = icmp sgt i64 %.03994, -1               ; 2 uses
  %.neg983.i435 = sext i1 %i.mts to i32
  %i.mtt = zext i1 %i.mts to i64
  %i.mtu = shl i64 %.03994, %i.mtt                ; 2 uses
  %i.mtv = and i64 %i.mtu, 1024
  %i.mtw = add i64 %i.mtv, %i.mtu                 ; 2 uses
  %i.mtx = icmp ult i64 %i.mtw, 1024
  %spec.select4626.v = select i1 %i.mtx, i32 65, i32 64
  %i.mty = lshr i64 %i.mtw, 11
  %reass.sub6521 = sub nsw i32 %i.msx, %i.msz
  %i.mtz = add nsw i32 %reass.sub6521, 1086
  %spec.select4626 = add nsw i32 %i.mtz, %.neg983.i435
  %i.mua = add nsw i32 %spec.select4626, %spec.select4626.v
  %i.mub = zext nneg i32 %i.mua to i64
  %i.muc = shl nuw nsw i64 %i.mub, 52
  %i.mud = and i64 %i.mty, 4503599627370495
  %i.mue = or disjoint i64 %i.muc, %i.mud
  store i64 20, ptr %i.lqg, align 8, !tbaa !99
  %i.muf = select i1 %i.lqk, i64 -9223372036854775808, i64 0
  %i.mug = or disjoint i64 %i.mue, %i.muf
  %i.muh = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mug, ptr %i.muh, align 8, !tbaa !100
  store ptr %.33.i406, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

.critedge992.i434:                                ; preds = %..critedge992.i434_crit_edge, %bb.bmx
  %.pre-phi7675 = phi i32 [ %.pre7674, %..critedge992.i434_crit_edge ], [ %i.msz, %bb.bmx ]
  %.pre-phi7673 = phi i128 [ %.pre7672, %..critedge992.i434_crit_edge ], [ %i.mtb, %bb.bmx ]
  %.pre-phi7671 = phi i32 [ %.pre7670, %..critedge992.i434_crit_edge ], [ %i.msx, %bb.bmx ]
  %.pre-phi7665 = phi i32 [ %.pre7664, %..critedge992.i434_crit_edge ], [ %i.msq, %bb.bmx ] ; 2 uses
  %.pre-phi7661 = phi i64 [ %.pre7660, %..critedge992.i434_crit_edge ], [ %i.msy, %bb.bmx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.mui = select i1 %i.msm, i64 0, i64 4
  %i.muj = shl i64 %i.mui, %.pre-phi7661          ; 2 uses
  %i.muk = add i32 %.pre-phi7665, 686
  %i.mul = sext i32 %i.muk to i64
  %i.mum = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.mul
  %i.mun = load i64, ptr %i.mum, align 16, !tbaa !106
  %i.muo = add i32 %.pre-phi7665, 687
  %i.mup = sext i32 %i.muo to i64
  %i.muq = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.mup
  %i.mur = load i64, ptr %i.muq, align 8, !tbaa !106
  %i.mus = lshr i64 %i.mur, 63
  %i.mut = add i64 %i.mus, %i.mun
  %i.muu = zext i64 %i.mut to i128
  %i.muv = mul nuw i128 %.pre-phi7673, %i.muu     ; 2 uses
  %i.muw = lshr i128 %i.muv, 64
  %i.mux = trunc nuw i128 %i.muw to i64
  %i.muy = trunc i128 %i.muv to i64
  %i.muz = lshr i64 %i.muy, 63
  %i.mva = add nuw i64 %i.muz, %i.mux             ; 2 uses
  %.not986.i415 = icmp eq i64 %i.muj, 0
  %i.mvb = select i1 %.not986.i415, i64 8, i64 9
  %i.mvc = add i64 %i.mvb, %i.muj
  %i.mvd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mva, i1 true) ; 3 uses
  %i.mve = trunc nuw nsw i64 %i.mvd to i32
  %i.mvf = shl i64 %i.mva, %i.mvd                 ; 3 uses
  %i.mvg = add nsw i32 %.pre-phi7671, 64
  %i.mvh = add nuw nsw i32 %.pre-phi7675, %i.mve
  %i.mvi = sub nsw i32 %i.mvg, %i.mvh             ; 7 uses
  %i.mvj = shl i64 %i.mvc, %i.mvd                 ; 3 uses
  %i.mvk = icmp sgt i32 %i.mvi, -1086
  br i1 %i.mvk, label %.thread4527, label %bb.bmz, !prof !62

bb.bmz:                                           ; preds = %.critedge992.i434
  %i.mvl = icmp samesign ult i32 %i.mvi, -1137
  br i1 %i.mvl, label %.thread4524, label %bb.bna

bb.bna:                                           ; preds = %bb.bmz
  %i.mvm = sub nuw nsw i32 -1074, %i.mvi          ; 2 uses
  %i.mvn = icmp samesign ult i32 %i.mvi, -1134
  br i1 %i.mvn, label %.thread4524, label %.thread4527, !prof !129

.thread4524:                                      ; preds = %bb.bmz, %bb.bna
  %.0897.i4184526 = phi i32 [ %i.mvm, %bb.bna ], [ 64, %bb.bmz ]
  %i.mvo = add nsw i32 %.0897.i4184526, -60       ; 2 uses
  %i.mvp = zext nneg i32 %i.mvo to i64            ; 2 uses
  %i.mvq = lshr i64 %i.mvf, %i.mvp
  %i.mvr = add nsw i32 %i.mvo, %i.mvi
  %i.mvs = lshr i64 %i.mvj, %i.mvp
  %i.mvt = add nuw i64 %i.mvs, 9
  br label %.thread4527

.thread4527:                                      ; preds = %.critedge992.i434, %.thread4524, %bb.bna
  %.0898.i419 = phi i64 [ %i.mvt, %.thread4524 ], [ %i.mvj, %bb.bna ], [ %i.mvj, %.critedge992.i434 ] ; 2 uses
  %.0896.i420 = phi i32 [ 60, %.thread4524 ], [ %i.mvm, %bb.bna ], [ 11, %.critedge992.i434 ] ; 3 uses
  %.sroa.19.0.in.i421 = phi i32 [ %i.mvr, %.thread4524 ], [ %i.mvi, %bb.bna ], [ %i.mvi, %.critedge992.i434 ]
  %.sroa.025.0.i422 = phi i64 [ %i.mvq, %.thread4524 ], [ %i.mvf, %bb.bna ], [ %i.mvf, %.critedge992.i434 ] ; 2 uses
  %i.mvu = zext nneg i32 %.0896.i420 to i64       ; 2 uses
  %notmask.i423 = shl nsw i64 -1, %i.mvu
  %i.mvv = xor i64 %notmask.i423, -1
  %i.mvw = and i64 %.sroa.025.0.i422, %i.mvv
  %i.mvx = shl nuw nsw i64 %i.mvw, 3              ; 2 uses
  %i.mvy = add nsw i32 %.0896.i420, -1
  %i.mvz = zext nneg i32 %i.mvy to i64
  %i.mwa = shl nuw nsw i64 8, %i.mvz              ; 2 uses
  %i.mwb = lshr i64 %.sroa.025.0.i422, %i.mvu
  %i.mwc = add i64 %i.mwa, %.0898.i419
  %i.mwd = icmp uge i64 %i.mvx, %i.mwc            ; 2 uses
  %i.mwe = zext i1 %i.mwd to i64
  %i.mwf = add nuw nsw i64 %i.mwb, %i.mwe         ; 3 uses
  %i.mwg = icmp eq i64 %i.mwf, 0
  br i1 %i.mwg, label %bb.bnk, label %bb.bnb, !prof !45

bb.bnb:                                           ; preds = %.thread4527
  %i.mwh = add nsw i32 %.sroa.19.0.in.i421, %.0896.i420
  %i.mwi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.mwf, i1 true) ; 2 uses
  %i.mwj = trunc nuw nsw i64 %i.mwi to i32
  %i.mwk = shl i64 %i.mwf, %i.mwi
  %i.mwl = lshr i64 %i.mwk, 11                    ; 2 uses
  %i.mwm = sub nsw i32 %i.mwh, %i.mwj             ; 5 uses
  %i.mwn = icmp sgt i32 %i.mwm, 960
  br i1 %i.mwn, label %diy_fp_to_ieee_raw.exit1508, label %bb.bnc, !prof !45

bb.bnc:                                           ; preds = %bb.bnb
  %i.mwo = icmp sgt i32 %i.mwm, -1086
  br i1 %i.mwo, label %bb.bnd, label %bb.bne, !prof !62

bb.bnd:                                           ; preds = %bb.bnc
  %i.mwp = add nsw i32 %i.mwm, 1086
  %i.mwq = zext nneg i32 %i.mwp to i64
  %i.mwr = shl nuw nsw i64 %i.mwq, 52
  %i.mws = and i64 %i.mwl, 4503599627370495
  %i.mwt = or disjoint i64 %i.mwr, %i.mws
  br label %bb.bnk

bb.bne:                                           ; preds = %bb.bnc
  %i.mwu = icmp samesign ugt i32 %i.mwm, -1138
  br i1 %i.mwu, label %bb.bnf, label %bb.bnk, !prof !62

bb.bnf:                                           ; preds = %bb.bne
  %i.mwv = sub nuw nsw i32 -1085, %i.mwm
  %i.mww = zext nneg i32 %i.mwv to i64
  %i.mwx = lshr i64 %i.mwl, %i.mww
  br label %bb.bnk

diy_fp_to_ieee_raw.exit1508:                      ; preds = %bb.bnb
  %i.mwy = and i32 %2, 128
  %.not4696 = icmp eq i32 %i.mwy, 0
  br i1 %.not4696, label %bb.bnh, label %bb.bng, !prof !62

bb.bng:                                           ; preds = %diy_fp_to_ieee_raw.exit1508
  %i.mwz = load ptr, ptr %i.h, align 8, !tbaa !107
  store i8 0, ptr %i.mwz, align 1, !tbaa !100
  %i.mxa = ptrtoint ptr %.33.i406 to i64
  %i.mxb = ptrtoint ptr %i.lqb to i64
  %i.mxc = sub i64 %i.mxa, %i.mxb
  %i.mxd = shl i64 %i.mxc, 8
  %i.mxe = or disjoint i64 %i.mxd, 1
  store i64 %i.mxe, ptr %i.lqg, align 8, !tbaa !99
  %i.mxf = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store ptr %i.lqb, ptr %i.mxf, align 8, !tbaa !100
  store ptr %.33.i406, ptr %i.h, align 8, !tbaa !107
  br label %.split4569

bb.bnh:                                           ; preds = %diy_fp_to_ieee_raw.exit1508
  br i1 %.not4658, label %bb.bnj, label %bb.bni, !prof !62

bb.bni:                                           ; preds = %bb.bnh
  store i64 20, ptr %i.lqg, align 8, !tbaa !99
  %i.mxg = select i1 %i.lqk, i64 -4503599627370496, i64 9218868437227405312
  %i.mxh = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mxg, ptr %i.mxh, align 8, !tbaa !100
  br label %.split4569

bb.bnj:                                           ; preds = %bb.bnh
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !107
  br label %.split4569.thread

bb.bnk:                                           ; preds = %.thread4527, %bb.bnd, %bb.bnf, %bb.bne
  %.0.i1507.ph = phi i64 [ 0, %bb.bne ], [ %i.mwx, %bb.bnf ], [ %i.mwt, %bb.bnd ], [ 0, %.thread4527 ] ; 7 uses
  %i.mxi = sub i64 %i.mwa, %.0898.i419
  %.not987.i425 = icmp ule i64 %i.mvx, %i.mxi
  %spec.select.i426 = or i1 %.not987.i425, %i.mwd
  br i1 %spec.select.i426, label %bb.bnl, label %bb.bnm, !prof !62

bb.bnl:                                           ; preds = %bb.bnk
  store i64 20, ptr %i.lqg, align 8, !tbaa !99
  %i.mxj = select i1 %i.lqk, i64 -9223372036854775808, i64 0
  %i.mxk = or disjoint i64 %.0.i1507.ph, %i.mxj
  %i.mxl = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mxk, ptr %i.mxl, align 8, !tbaa !100
  br label %.split4569

bb.bnm:                                           ; preds = %bb.bnk
  %.not988.i427 = icmp samesign ult i64 %.0.i1507.ph, 4503599627370496 ; 2 uses
end_hunk_3
begin_hunk_4_@read_root_single:bb.a
  %i.zf = add i64 %i.ze, %i.zd                    ; 2 uses
  %i.zg = load i8, ptr %i.zc, align 1, !tbaa !100
  %i.zh = add i8 %i.zg, -48                       ; 2 uses
  %i.zi = icmp ult i8 %i.zh, 10
  br i1 %i.zi, label %.lr.ph804, label %._crit_edge805, !llvm.loop !12

._crit_edge805:                                   ; preds = %.lr.ph804, %.preheader732
  %.30.i.lcssa1260 = phi ptr [ %i.yz, %.preheader732 ], [ %.30.i.lcssa1261, %.lr.ph804 ]
  %.0928.i.lcssa = phi i64 [ 0, %.preheader732 ], [ %i.zf, %.lr.ph804 ] ; 2 uses
  %.31.i.lcssa = phi ptr [ %i.yz, %.preheader732 ], [ %i.zc, %.lr.ph804 ] ; 6 uses
  %i.zj = ptrtoint ptr %.31.i.lcssa to i64        ; 2 uses
  %i.zk = ptrtoint ptr %.30.i.lcssa1260 to i64
  %i.zl = sub i64 %i.zj, %i.zk
  %i.zm = icmp sgt i64 %i.zl, 18
  br i1 %i.zm, label %bb.fw, label %bb.gd, !prof !45

bb.fw:                                            ; preds = %._crit_edge805
  br i1 %i.yn, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.zn = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.zo = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.zn, ptr %i.zo, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.fy:                                            ; preds = %bb.fw
  %i.zp = and i32 %4, 128
  %.not708 = icmp eq i32 %i.zp, 0
  br i1 %.not708, label %bb.ga, label %bb.fz, !prof !62

bb.fz:                                            ; preds = %bb.fy
  store i8 0, ptr %i.d, align 1, !tbaa !100
  %i.zq = ptrtoint ptr %1 to i64
  %i.zr = sub i64 %i.zj, %i.zq
  %i.zs = shl i64 %i.zr, 8
  %i.zt = or disjoint i64 %i.zs, 1
  store i64 %i.zt, ptr %i.j, align 8, !tbaa !99
  %i.zu = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.zu, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.e, align 8, !tbaa !107
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.ga:                                            ; preds = %bb.fy
  %i.zv = and i32 %4, 16
  %.not709 = icmp eq i32 %i.zv, 0
  br i1 %.not709, label %bb.gc, label %bb.gb, !prof !62

bb.gb:                                            ; preds = %bb.ga
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.zw = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.zx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.zw, ptr %i.zx, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gc:                                            ; preds = %bb.ga
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !107
  br label %.sink.split

bb.gd:                                            ; preds = %._crit_edge805
  %i.zy = sub nsw i64 0, %.0928.i.lcssa
  %i.zz = select i1 %i.yn, i64 %i.zy, i64 %.0928.i.lcssa
  %i.aaa = add nsw i64 %i.zz, %.0929.i
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.critedge.i
  %.1930.i = phi i64 [ %i.aaa, %bb.gd ], [ %i.xu, %.critedge.i ] ; 3 uses
  %.32.i = phi ptr [ %.31.i.lcssa, %bb.gd ], [ %.27.i, %.critedge.i ] ; 6 uses
  %.21893.i = phi i64 [ %.20892.i, %bb.gd ], [ %i.wq, %.critedge.i ]
  %.22.i = phi ptr [ %.21.i, %bb.gd ], [ %.19.i, %.critedge.i ]
  %.2866.i = phi ptr [ %.1865.i, %bb.gd ], [ %..27.i, %.critedge.i ]
  %.2862.i = phi ptr [ %.1861.i, %bb.gd ], [ %..24.i, %.critedge.i ]
  %i.aab = icmp slt i64 %.1930.i, -343
  br i1 %i.aab, label %bb.gf, label %bb.gg, !prof !45

bb.gf:                                            ; preds = %bb.ge
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.aac = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.aad = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.aac, ptr %i.aad, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gg:                                            ; preds = %bb.ge
  %i.aae = icmp sgt i64 %.1930.i, 308
  br i1 %i.aae, label %bb.gh, label %bb.gm, !prof !45

bb.gh:                                            ; preds = %bb.gg
  %i.aaf = and i32 %4, 128
  %.not706 = icmp eq i32 %i.aaf, 0
  br i1 %.not706, label %bb.gj, label %bb.gi, !prof !62

bb.gi:                                            ; preds = %bb.gh
  store i8 0, ptr %i.d, align 1, !tbaa !100
  %i.aag = ptrtoint ptr %.32.i to i64
  %i.aah = ptrtoint ptr %1 to i64
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = shl i64 %i.aai, 8
  %i.aak = or disjoint i64 %i.aaj, 1
  store i64 %i.aak, ptr %i.j, align 8, !tbaa !99
  %i.aal = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.aal, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.e, align 8, !tbaa !107
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gj:                                            ; preds = %bb.gh
  %i.aam = and i32 %4, 16
  %.not707 = icmp eq i32 %i.aam, 0
  br i1 %.not707, label %bb.gl, label %bb.gk, !prof !62

bb.gk:                                            ; preds = %bb.gj
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.aan = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.aao = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.aan, ptr %i.aao, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gl:                                            ; preds = %bb.gj
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !107
  br label %.sink.split

bb.gm:                                            ; preds = %bb.gg, %bb.fs
  %storemerge.in.i = phi i64 [ %.neg981.i, %bb.fs ], [ %.1930.i, %bb.gg ] ; 3 uses
  %.33.i = phi ptr [ %.28.i, %bb.fs ], [ %.32.i, %bb.gg ] ; 7 uses
  %.22894.i = phi i64 [ %.19891.i, %bb.fs ], [ %.21893.i, %bb.gg ] ; 7 uses
  %.23.i = phi ptr [ %.20.i, %bb.fs ], [ %.22.i, %bb.gg ]
  %.3867.i = phi ptr [ %.28.i, %bb.fs ], [ %.2866.i, %bb.gg ]
  %.3863.i = phi ptr [ null, %bb.fs ], [ %.2862.i, %bb.gg ] ; 2 uses
  %storemerge.i = trunc i64 %storemerge.in.i to i32 ; 8 uses
  store i32 %storemerge.i, ptr %i.a, align 4, !tbaa !119
  %i.aap = icmp ult i64 %.22894.i, 9007199254740992
  %i.aaq = add i32 %storemerge.i, 22
  %i.aar = icmp ult i32 %i.aaq, 45
  %or.cond9.i = and i1 %i.aap, %i.aar
  br i1 %or.cond9.i, label %bb.gn, label %bb.gr

bb.gn:                                            ; preds = %bb.gm
  %i.aas = uitofp nneg i64 %.22894.i to double    ; 2 uses
  %i.aat = icmp slt i32 %storemerge.i, 0
  br i1 %i.aat, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.aau = sub nsw i64 0, %storemerge.in.i
  %i.aav = and i64 %i.aau, 4294967295
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.aav
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !128
  %i.aay = fdiv double %i.aas, %i.aax
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %i.aaz = and i64 %storemerge.in.i, 2147483647
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.aaz
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !128
  %i.abc = fmul double %i.abb, %i.aas
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.0900.i = phi double [ %i.aay, %bb.go ], [ %i.abc, %bb.gp ] ; 2 uses
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.abd = fneg double %.0900.i
  %i.abe = select i1 %i.r, double %i.abd, double %.0900.i
  %i.abf = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store double %i.abe, ptr %i.abf, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gr:                                            ; preds = %bb.gm
  %i.abg = icmp eq ptr %.3863.i, null             ; 2 uses
  %i.abh = add i32 %storemerge.i, 306
  %i.abi = icmp ult i32 %i.abh, 594
  %i.abj = and i1 %i.abi, %i.abg
  br i1 %i.abj, label %bb.gs, label %..critedge992.i_crit_edge, !prof !62

..critedge992.i_crit_edge:                        ; preds = %bb.gr
  %.pre1136 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %.pre1138 = shl i64 %.22894.i, %.pre1136
  %.pre1140 = shl i32 %storemerge.i, 1
  %.pre1142 = mul nsw i32 %storemerge.i, 217706
  %.pre1144 = add nsw i32 %.pre1142, -4128768
  %.pre1146 = ashr i32 %.pre1144, 16
  %.pre1148 = zext i64 %.pre1138 to i128
  %.pre1150 = trunc nuw nsw i64 %.pre1136 to i32
  br label %.critedge992.i

bb.gs:                                            ; preds = %bb.gr
  %i.abk = shl nsw i32 %storemerge.i, 1           ; 2 uses
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.abl ; 2 uses
  %i.abn = getelementptr i8, ptr %i.abm, i64 5488
  %i.abo = load i64, ptr %i.abn, align 16, !tbaa !106
  %i.abp = mul nsw i32 %storemerge.i, 217706
  %i.abq = add nsw i32 %i.abp, -4128768
  %i.abr = ashr i32 %i.abq, 16                    ; 2 uses
  %i.abs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %i.abt = trunc nuw nsw i64 %i.abs to i32        ; 2 uses
  %i.abu = shl i64 %.22894.i, %i.abs              ; 2 uses
  %i.abv = zext i64 %i.abu to i128                ; 2 uses
  %i.abw = zext i64 %i.abo to i128
  %i.abx = mul nuw i128 %i.abw, %i.abv            ; 2 uses
  %i.aby = lshr i128 %i.abx, 64
  %i.abz = trunc nuw i128 %i.aby to i64           ; 3 uses
  %i.aca = trunc i128 %i.abx to i64               ; 2 uses
  %i.acb = and i64 %i.abz, 511
  %i.acc = add nsw i64 %i.acb, -1
  %i.acd = icmp ult i64 %i.acc, 510
  br i1 %i.acd, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ace = getelementptr i8, ptr %i.abm, i64 5496
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !106
  %8 = call i64 @llvm.umulh.i64(i64 %i.abu, i64 %i.acf)
  %i.acg = add i64 %8, %i.aca                     ; 2 uses
  %i.ach = add i64 %i.acg, -1
  %i.aci = icmp ult i64 %i.ach, -2
  br i1 %i.aci, label %bb.gu, label %.critedge992.i

bb.gu:                                            ; preds = %bb.gt
  %i.acj = icmp ult i64 %i.acg, %i.aca
  %i.ack = zext i1 %i.acj to i64
  %i.acl = add nuw i64 %i.ack, %i.abz
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gs
  %.0596 = phi i64 [ %i.abz, %bb.gs ], [ %i.acl, %bb.gu ] ; 2 uses
  %i.acm = icmp sgt i64 %.0596, -1                ; 2 uses
  %.neg983.i = sext i1 %i.acm to i32
  %i.acn = zext i1 %i.acm to i64
  %i.aco = shl i64 %.0596, %i.acn                 ; 2 uses
  %i.acp = and i64 %i.aco, 1024
  %i.acq = add i64 %i.acp, %i.aco                 ; 2 uses
  %i.acr = icmp ult i64 %i.acq, 1024
  %spec.select651.v = select i1 %i.acr, i32 65, i32 64
  %i.acs = lshr i64 %i.acq, 11
  %reass.sub980 = sub nsw i32 %i.abr, %i.abt
  %i.act = add nsw i32 %reass.sub980, 1086
  %spec.select651 = add nsw i32 %i.act, %.neg983.i
  %i.acu = add nsw i32 %spec.select651, %spec.select651.v
  %i.acv = zext nneg i32 %i.acu to i64
  %i.acw = shl nuw nsw i64 %i.acv, 52
  %i.acx = and i64 %i.acs, 4503599627370495
  %i.acy = or disjoint i64 %i.acw, %i.acx
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.acz = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.ada = or disjoint i64 %i.acy, %i.acz
  %i.adb = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.ada, ptr %i.adb, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.gt
  %.pre-phi1151 = phi i32 [ %.pre1150, %..critedge992.i_crit_edge ], [ %i.abt, %bb.gt ]
  %.pre-phi1149 = phi i128 [ %.pre1148, %..critedge992.i_crit_edge ], [ %i.abv, %bb.gt ]
  %.pre-phi1147 = phi i32 [ %.pre1146, %..critedge992.i_crit_edge ], [ %i.abr, %bb.gt ]
  %.pre-phi1141 = phi i32 [ %.pre1140, %..critedge992.i_crit_edge ], [ %i.abk, %bb.gt ] ; 2 uses
  %.pre-phi1137 = phi i64 [ %.pre1136, %..critedge992.i_crit_edge ], [ %i.abs, %bb.gt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.adc = select i1 %i.abg, i64 0, i64 4
  %i.add = shl i64 %i.adc, %.pre-phi1137          ; 2 uses
  %i.ade = add i32 %.pre-phi1141, 686
  %i.adf = sext i32 %i.ade to i64
  %i.adg = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.adf
  %i.adh = load i64, ptr %i.adg, align 16, !tbaa !106
  %i.adi = add i32 %.pre-phi1141, 687
  %i.adj = sext i32 %i.adi to i64
  %i.adk = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.adj
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !106
  %i.adm = lshr i64 %i.adl, 63
  %i.adn = add i64 %i.adm, %i.adh
  %i.ado = zext i64 %i.adn to i128
  %i.adp = mul nuw i128 %.pre-phi1149, %i.ado     ; 2 uses
  %i.adq = lshr i128 %i.adp, 64
  %i.adr = trunc nuw i128 %i.adq to i64
  %i.ads = trunc i128 %i.adp to i64
  %i.adt = lshr i64 %i.ads, 63
  %i.adu = add nuw i64 %i.adt, %i.adr             ; 2 uses
  %.not986.i = icmp eq i64 %i.add, 0
  %i.adv = select i1 %.not986.i, i64 8, i64 9
  %i.adw = add i64 %i.adv, %i.add
  %i.adx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.adu, i1 true) ; 3 uses
  %i.ady = trunc nuw nsw i64 %i.adx to i32
  %i.adz = shl i64 %i.adu, %i.adx                 ; 3 uses
  %i.aea = add nsw i32 %.pre-phi1147, 64
  %i.aeb = add nuw nsw i32 %.pre-phi1151, %i.ady
  %i.aec = sub nsw i32 %i.aea, %i.aeb             ; 7 uses
  %i.aed = shl i64 %i.adw, %i.adx                 ; 3 uses
  %i.aee = icmp sgt i32 %i.aec, -1086
  br i1 %i.aee, label %.thread616, label %bb.gw, !prof !62

bb.gw:                                            ; preds = %.critedge992.i
  %i.aef = icmp samesign ult i32 %i.aec, -1137
  br i1 %i.aef, label %.thread613, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aeg = sub nuw nsw i32 -1074, %i.aec          ; 2 uses
  %i.aeh = icmp samesign ult i32 %i.aec, -1134
  br i1 %i.aeh, label %.thread613, label %.thread616, !prof !286

.thread613:                                       ; preds = %bb.gw, %bb.gx
  %.0897.i615 = phi i32 [ %i.aeg, %bb.gx ], [ 64, %bb.gw ]
  %i.aei = add nsw i32 %.0897.i615, -60           ; 2 uses
  %i.aej = zext nneg i32 %i.aei to i64            ; 2 uses
  %i.aek = lshr i64 %i.adz, %i.aej
  %i.ael = add nsw i32 %i.aei, %i.aec
  %i.aem = lshr i64 %i.aed, %i.aej
  %i.aen = add nuw i64 %i.aem, 9
  br label %.thread616

.thread616:                                       ; preds = %.critedge992.i, %.thread613, %bb.gx
  %.0898.i = phi i64 [ %i.aen, %.thread613 ], [ %i.aed, %bb.gx ], [ %i.aed, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread613 ], [ %i.aeg, %bb.gx ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.ael, %.thread613 ], [ %i.aec, %bb.gx ], [ %i.aec, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.aek, %.thread613 ], [ %i.adz, %bb.gx ], [ %i.adz, %.critedge992.i ] ; 2 uses
  %i.aeo = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aeo
  %i.aep = xor i64 %notmask.i, -1
  %i.aeq = and i64 %.sroa.025.0.i, %i.aep
  %i.aer = shl nuw nsw i64 %i.aeq, 3              ; 2 uses
  %i.aes = add nsw i32 %.0896.i, -1
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = shl nuw nsw i64 8, %i.aet              ; 2 uses
  %i.aev = lshr i64 %.sroa.025.0.i, %i.aeo
  %i.aew = add i64 %i.aeu, %.0898.i
  %i.aex = icmp uge i64 %i.aer, %i.aew            ; 2 uses
  %i.aey = zext i1 %i.aex to i64
  %i.aez = add nuw nsw i64 %i.aev, %i.aey         ; 3 uses
  %i.afa = icmp eq i64 %i.aez, 0
  br i1 %i.afa, label %bb.hh, label %bb.gy, !prof !45

bb.gy:                                            ; preds = %.thread616
  %i.afb = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.afc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.aez, i1 true) ; 2 uses
  %i.afd = trunc nuw nsw i64 %i.afc to i32
  %i.afe = shl i64 %i.aez, %i.afc
  %i.aff = lshr i64 %i.afe, 11                    ; 2 uses
  %i.afg = sub nsw i32 %i.afb, %i.afd             ; 5 uses
  %i.afh = icmp sgt i32 %i.afg, 960
  br i1 %i.afh, label %diy_fp_to_ieee_raw.exit, label %bb.gz, !prof !45

bb.gz:                                            ; preds = %bb.gy
  %i.afi = icmp sgt i32 %i.afg, -1086
  br i1 %i.afi, label %bb.ha, label %bb.hb, !prof !62

bb.ha:                                            ; preds = %bb.gz
  %i.afj = add nsw i32 %i.afg, 1086
  %i.afk = zext nneg i32 %i.afj to i64
  %i.afl = shl nuw nsw i64 %i.afk, 52
  %i.afm = and i64 %i.aff, 4503599627370495
  %i.afn = or disjoint i64 %i.afl, %i.afm
  br label %bb.hh

bb.hb:                                            ; preds = %bb.gz
  %i.afo = icmp samesign ugt i32 %i.afg, -1138
  br i1 %i.afo, label %bb.hc, label %bb.hh, !prof !62

bb.hc:                                            ; preds = %bb.hb
  %i.afp = sub nuw nsw i32 -1085, %i.afg
  %i.afq = zext nneg i32 %i.afp to i64
  %i.afr = lshr i64 %i.aff, %i.afq
  br label %bb.hh

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.gy
  %i.afs = and i32 %4, 128
  %.not700 = icmp eq i32 %i.afs, 0
  br i1 %.not700, label %bb.he, label %bb.hd, !prof !62

bb.hd:                                            ; preds = %diy_fp_to_ieee_raw.exit
  store i8 0, ptr %i.d, align 1, !tbaa !100
  %i.aft = ptrtoint ptr %.33.i to i64
  %i.afu = ptrtoint ptr %1 to i64
  %i.afv = sub i64 %i.aft, %i.afu
  %i.afw = shl i64 %i.afv, 8
  %i.afx = or disjoint i64 %i.afw, 1
  store i64 %i.afx, ptr %i.j, align 8, !tbaa !99
  %i.afy = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.afy, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread632

bb.he:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.afz = and i32 %4, 16
  %.not701 = icmp eq i32 %i.afz, 0
  br i1 %.not701, label %bb.hg, label %bb.hf, !prof !62

bb.hf:                                            ; preds = %bb.he
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.aga = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.agb = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.aga, ptr %i.agb, align 8, !tbaa !100
  br label %read_num.exit.thread632

bb.hg:                                            ; preds = %bb.he
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit

bb.hh:                                            ; preds = %.thread616, %bb.ha, %bb.hc, %bb.hb
  %.0.i254.ph = phi i64 [ 0, %bb.hb ], [ %i.afr, %bb.hc ], [ %i.afn, %bb.ha ], [ 0, %.thread616 ] ; 7 uses
  %i.agc = sub i64 %i.aeu, %.0898.i
  %.not987.i = icmp ule i64 %i.aer, %i.agc
  %spec.select.i = or i1 %.not987.i, %i.aex
  br i1 %spec.select.i, label %bb.hi, label %bb.hj, !prof !62

bb.hi:                                            ; preds = %bb.hh
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.agd = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.age = or disjoint i64 %.0.i254.ph, %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.age, ptr %i.agf, align 8, !tbaa !100
  br label %read_num.exit.thread632

bb.hj:                                            ; preds = %bb.hh
  %.not988.i = icmp samesign ult i64 %.0.i254.ph, 4503599627370496 ; 2 uses
end_hunk_4
begin_hunk_5_@yyjson_read_number:bb.a
  %i.yr = phi i8 [ %i.yx, %.lr.ph238 ], [ %.pre-phi436554, %.lr.ph238.preheader ]
  %.31.i237 = phi ptr [ %i.ys, %.lr.ph238 ], [ %.30.i.lcssa556, %.lr.ph238.preheader ]
  %.0928.i236 = phi i64 [ %i.yv, %.lr.ph238 ], [ 0, %.lr.ph238.preheader ]
  %i.ys = getelementptr inbounds nuw i8, ptr %.31.i237, i64 1 ; 3 uses
  %i.yt = zext nneg i8 %i.yr to i64
  %i.yu = mul i64 %.0928.i236, 10
  %i.yv = add i64 %i.yu, %i.yt                    ; 2 uses
  %i.yw = load i8, ptr %i.ys, align 1, !tbaa !100
  %i.yx = add i8 %i.yw, -48                       ; 2 uses
  %i.yy = icmp ult i8 %i.yx, 10
  br i1 %i.yy, label %.lr.ph238, label %._crit_edge239, !llvm.loop !12

._crit_edge239:                                   ; preds = %.lr.ph238, %.preheader199
  %.30.i.lcssa555 = phi ptr [ %i.yp, %.preheader199 ], [ %.30.i.lcssa556, %.lr.ph238 ]
  %.0928.i.lcssa = phi i64 [ 0, %.preheader199 ], [ %i.yv, %.lr.ph238 ] ; 2 uses
  %.31.i.lcssa = phi ptr [ %i.yp, %.preheader199 ], [ %i.ys, %.lr.ph238 ] ; 5 uses
  %i.yz = ptrtoint ptr %.31.i.lcssa to i64        ; 2 uses
  %i.za = ptrtoint ptr %.30.i.lcssa555 to i64
  %i.zb = sub i64 %i.yz, %i.za
  %i.zc = icmp sgt i64 %i.zb, 18
  br i1 %i.zc, label %bb.fy, label %bb.gf, !prof !45

bb.fy:                                            ; preds = %._crit_edge239
  br i1 %i.yd, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.zd = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.zd, ptr %i.ze, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.ga:                                            ; preds = %bb.fy
  %i.zf = and i32 %2, 128
  %.not188 = icmp eq i32 %i.zf, 0
  br i1 %.not188, label %bb.gc, label %bb.gb, !prof !62

bb.gb:                                            ; preds = %bb.ga
  %i.zg = sub i64 %i.yz, %i.f
  %i.zh = shl i64 %i.zg, 8
  %i.zi = or disjoint i64 %i.zh, 1
  store i64 %i.zi, ptr %1, align 8, !tbaa !99
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.zj, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.gc:                                            ; preds = %bb.ga
  %i.zk = and i32 %2, 16
  %.not189 = icmp eq i32 %i.zk, 0
  br i1 %.not189, label %bb.ge, label %bb.gd, !prof !62

bb.gd:                                            ; preds = %bb.gc
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.zl = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.zl, ptr %i.zm, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.ge:                                            ; preds = %bb.gc
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread138

bb.gf:                                            ; preds = %._crit_edge239
  %i.zn = sub nsw i64 0, %.0928.i.lcssa
  %i.zo = select i1 %i.yd, i64 %i.zn, i64 %.0928.i.lcssa
  %i.zp = add nsw i64 %i.zo, %.0929.i
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.critedge.i
  %.1930.i = phi i64 [ %i.zp, %bb.gf ], [ %i.xk, %.critedge.i ] ; 3 uses
  %.32.i = phi ptr [ %.31.i.lcssa, %bb.gf ], [ %.27.i, %.critedge.i ] ; 5 uses
  %.21893.i = phi i64 [ %.20892.i, %bb.gf ], [ %i.wh, %.critedge.i ]
  %.22.i = phi ptr [ %.21.i, %bb.gf ], [ %.19.i, %.critedge.i ]
  %.2866.i = phi ptr [ %.1865.i, %bb.gf ], [ %..27.i, %.critedge.i ]
  %.2862.i = phi ptr [ %.1861.i, %bb.gf ], [ %..24.i, %.critedge.i ]
  %i.zq = icmp slt i64 %.1930.i, -343
  br i1 %i.zq, label %bb.gh, label %bb.gi, !prof !45

bb.gh:                                            ; preds = %bb.gg
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.zr = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.zr, ptr %i.zs, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.gi:                                            ; preds = %bb.gg
  %i.zt = icmp sgt i64 %.1930.i, 308
  br i1 %i.zt, label %bb.gj, label %bb.go, !prof !45

bb.gj:                                            ; preds = %bb.gi
  %i.zu = and i32 %2, 128
  %.not186 = icmp eq i32 %i.zu, 0
  br i1 %.not186, label %bb.gl, label %bb.gk, !prof !62

bb.gk:                                            ; preds = %bb.gj
  %i.zv = ptrtoint ptr %.32.i to i64
  %i.zw = sub i64 %i.zv, %i.f
  %i.zx = shl i64 %i.zw, 8
  %i.zy = or disjoint i64 %i.zx, 1
  store i64 %i.zy, ptr %1, align 8, !tbaa !99
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.zz, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.gl:                                            ; preds = %bb.gj
  %i.aaa = and i32 %2, 16
  %.not187 = icmp eq i32 %i.aaa, 0
  br i1 %.not187, label %bb.gn, label %bb.gm, !prof !62

bb.gm:                                            ; preds = %bb.gl
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.aab = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aab, ptr %i.aac, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.gn:                                            ; preds = %bb.gl
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread138

bb.go:                                            ; preds = %bb.gi, %bb.fu
  %storemerge.in.i = phi i64 [ %.neg981.i, %bb.fu ], [ %.1930.i, %bb.gi ] ; 3 uses
  %.33.i = phi ptr [ %.28.i, %bb.fu ], [ %.32.i, %bb.gi ] ; 5 uses
  %.22894.i = phi i64 [ %.19891.i, %bb.fu ], [ %.21893.i, %bb.gi ] ; 7 uses
  %.23.i = phi ptr [ %.20.i, %bb.fu ], [ %.22.i, %bb.gi ]
  %.3867.i = phi ptr [ %.28.i, %bb.fu ], [ %.2866.i, %bb.gi ]
  %.3863.i = phi ptr [ null, %bb.fu ], [ %.2862.i, %bb.gi ] ; 2 uses
  %storemerge.i = trunc i64 %storemerge.in.i to i32 ; 8 uses
  store i32 %storemerge.i, ptr %i.a, align 4, !tbaa !119
  %i.aad = icmp ult i64 %.22894.i, 9007199254740992
  %i.aae = add i32 %storemerge.i, 22
  %i.aaf = icmp ult i32 %i.aae, 45
  %or.cond9.i = and i1 %i.aad, %i.aaf
  br i1 %or.cond9.i, label %bb.gp, label %bb.gt

bb.gp:                                            ; preds = %bb.go
  %i.aag = uitofp nneg i64 %.22894.i to double    ; 2 uses
  %i.aah = icmp slt i32 %storemerge.i, 0
  br i1 %i.aah, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aai = sub nsw i64 0, %storemerge.in.i
  %i.aaj = and i64 %i.aai, 4294967295
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.aaj
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !128
  %i.aam = fdiv double %i.aag, %i.aal
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.aan = and i64 %storemerge.in.i, 2147483647
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.aan
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !128
  %i.aaq = fmul double %i.aap, %i.aag
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.0900.i = phi double [ %i.aam, %bb.gq ], [ %i.aaq, %bb.gr ] ; 2 uses
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.aar = fneg double %.0900.i
  %i.aas = select i1 %i.j, double %i.aar, double %.0900.i
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.aas, ptr %i.aat, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

bb.gt:                                            ; preds = %bb.go
  %i.aau = icmp eq ptr %.3863.i, null             ; 2 uses
  %i.aav = add i32 %storemerge.i, 306
  %i.aaw = icmp ult i32 %i.aav, 594
  %i.aax = and i1 %i.aaw, %i.aau
  br i1 %i.aax, label %bb.gu, label %..critedge992.i_crit_edge, !prof !62

..critedge992.i_crit_edge:                        ; preds = %bb.gt
  %.pre442 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %.pre444 = shl i64 %.22894.i, %.pre442
  %.pre446 = shl i32 %storemerge.i, 1
  %.pre448 = mul nsw i32 %storemerge.i, 217706
  %.pre450 = add nsw i32 %.pre448, -4128768
  %.pre452 = ashr i32 %.pre450, 16
  %.pre454 = zext i64 %.pre444 to i128
  %.pre456 = trunc nuw nsw i64 %.pre442 to i32
  br label %.critedge992.i

bb.gu:                                            ; preds = %bb.gt
  %i.aay = shl nsw i32 %storemerge.i, 1           ; 2 uses
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.aaz ; 2 uses
  %i.abb = getelementptr i8, ptr %i.aba, i64 5488
  %i.abc = load i64, ptr %i.abb, align 16, !tbaa !106
  %i.abd = mul nsw i32 %storemerge.i, 217706
  %i.abe = add nsw i32 %i.abd, -4128768
  %i.abf = ashr i32 %i.abe, 16                    ; 2 uses
  %i.abg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %i.abh = trunc nuw nsw i64 %i.abg to i32        ; 2 uses
  %i.abi = shl i64 %.22894.i, %i.abg              ; 2 uses
  %i.abj = zext i64 %i.abi to i128                ; 2 uses
  %i.abk = zext i64 %i.abc to i128
  %i.abl = mul nuw i128 %i.abk, %i.abj            ; 2 uses
  %i.abm = lshr i128 %i.abl, 64
  %i.abn = trunc nuw i128 %i.abm to i64           ; 3 uses
  %i.abo = trunc i128 %i.abl to i64               ; 2 uses
  %i.abp = and i64 %i.abn, 511
  %i.abq = add nsw i64 %i.abp, -1
  %i.abr = icmp ult i64 %i.abq, 510
  br i1 %i.abr, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.abs = getelementptr i8, ptr %i.aba, i64 5496
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !106
  %7 = call i64 @llvm.umulh.i64(i64 %i.abi, i64 %i.abt)
  %i.abu = add i64 %7, %i.abo                     ; 2 uses
  %i.abv = add i64 %i.abu, -1
  %i.abw = icmp ult i64 %i.abv, -2
  br i1 %i.abw, label %bb.gw, label %.critedge992.i

bb.gw:                                            ; preds = %bb.gv
  %i.abx = icmp ult i64 %i.abu, %i.abo
  %i.aby = zext i1 %i.abx to i64
  %i.abz = add nuw i64 %i.aby, %i.abn
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  %.0116 = phi i64 [ %i.abn, %bb.gu ], [ %i.abz, %bb.gw ] ; 2 uses
  %i.aca = icmp sgt i64 %.0116, -1                ; 2 uses
  %.neg983.i = sext i1 %i.aca to i32
  %i.acb = zext i1 %i.aca to i64
  %i.acc = shl i64 %.0116, %i.acb                 ; 2 uses
  %i.acd = and i64 %i.acc, 1024
  %i.ace = add i64 %i.acd, %i.acc                 ; 2 uses
  %i.acf = icmp ult i64 %i.ace, 1024
  %spec.select149.v = select i1 %i.acf, i32 65, i32 64
  %i.acg = lshr i64 %i.ace, 11
  %reass.sub348 = sub nsw i32 %i.abf, %i.abh
  %i.ach = add nsw i32 %reass.sub348, 1086
  %spec.select149 = add nsw i32 %i.ach, %.neg983.i
  %i.aci = add nsw i32 %spec.select149, %spec.select149.v
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = shl nuw nsw i64 %i.acj, 52
  %i.acl = and i64 %i.acg, 4503599627370495
  %i.acm = or disjoint i64 %i.ack, %i.acl
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.acn = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.aco = or disjoint i64 %i.acm, %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aco, ptr %i.acp, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split618

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.gv
  %.pre-phi457 = phi i32 [ %.pre456, %..critedge992.i_crit_edge ], [ %i.abh, %bb.gv ]
  %.pre-phi455 = phi i128 [ %.pre454, %..critedge992.i_crit_edge ], [ %i.abj, %bb.gv ]
  %.pre-phi453 = phi i32 [ %.pre452, %..critedge992.i_crit_edge ], [ %i.abf, %bb.gv ]
  %.pre-phi447 = phi i32 [ %.pre446, %..critedge992.i_crit_edge ], [ %i.aay, %bb.gv ] ; 2 uses
  %.pre-phi443 = phi i64 [ %.pre442, %..critedge992.i_crit_edge ], [ %i.abg, %bb.gv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.acq = select i1 %i.aau, i64 0, i64 4
  %i.acr = shl i64 %i.acq, %.pre-phi443           ; 2 uses
  %i.acs = add i32 %.pre-phi447, 686
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.act
  %i.acv = load i64, ptr %i.acu, align 16, !tbaa !106
  %i.acw = add i32 %.pre-phi447, 687
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.acx
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !106
  %i.ada = lshr i64 %i.acz, 63
  %i.adb = add i64 %i.ada, %i.acv
  %i.adc = zext i64 %i.adb to i128
  %i.add = mul nuw i128 %.pre-phi455, %i.adc      ; 2 uses
  %i.ade = lshr i128 %i.add, 64
  %i.adf = trunc nuw i128 %i.ade to i64
  %i.adg = trunc i128 %i.add to i64
  %i.adh = lshr i64 %i.adg, 63
  %i.adi = add nuw i64 %i.adh, %i.adf             ; 2 uses
  %.not986.i = icmp eq i64 %i.acr, 0
  %i.adj = select i1 %.not986.i, i64 8, i64 9
  %i.adk = add i64 %i.adj, %i.acr
  %i.adl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.adi, i1 true) ; 3 uses
  %i.adm = trunc nuw nsw i64 %i.adl to i32
  %i.adn = shl i64 %i.adi, %i.adl                 ; 3 uses
  %i.ado = add nsw i32 %.pre-phi453, 64
  %i.adp = add nuw nsw i32 %.pre-phi457, %i.adm
  %i.adq = sub nsw i32 %i.ado, %i.adp             ; 7 uses
  %i.adr = shl i64 %i.adk, %i.adl                 ; 3 uses
  %i.ads = icmp sgt i32 %i.adq, -1086
  br i1 %i.ads, label %.thread126, label %bb.gy, !prof !62

bb.gy:                                            ; preds = %.critedge992.i
  %i.adt = icmp samesign ult i32 %i.adq, -1137
  br i1 %i.adt, label %.thread123, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.adu = sub nuw nsw i32 -1074, %i.adq          ; 2 uses
  %i.adv = icmp samesign ult i32 %i.adq, -1134
  br i1 %i.adv, label %.thread123, label %.thread126, !prof !301

.thread123:                                       ; preds = %bb.gy, %bb.gz
  %.0897.i125 = phi i32 [ %i.adu, %bb.gz ], [ 64, %bb.gy ]
  %i.adw = add nsw i32 %.0897.i125, -60           ; 2 uses
  %i.adx = zext nneg i32 %i.adw to i64            ; 2 uses
  %i.ady = lshr i64 %i.adn, %i.adx
  %i.adz = add nsw i32 %i.adw, %i.adq
  %i.aea = lshr i64 %i.adr, %i.adx
  %i.aeb = add nuw i64 %i.aea, 9
  br label %.thread126

.thread126:                                       ; preds = %.critedge992.i, %.thread123, %bb.gz
  %.0898.i = phi i64 [ %i.aeb, %.thread123 ], [ %i.adr, %bb.gz ], [ %i.adr, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread123 ], [ %i.adu, %bb.gz ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.adz, %.thread123 ], [ %i.adq, %bb.gz ], [ %i.adq, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.ady, %.thread123 ], [ %i.adn, %bb.gz ], [ %i.adn, %.critedge992.i ] ; 2 uses
  %i.aec = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aec
  %i.aed = xor i64 %notmask.i, -1
  %i.aee = and i64 %.sroa.025.0.i, %i.aed
  %i.aef = shl nuw nsw i64 %i.aee, 3              ; 2 uses
  %i.aeg = add nsw i32 %.0896.i, -1
  %i.aeh = zext nneg i32 %i.aeg to i64
  %i.aei = shl nuw nsw i64 8, %i.aeh              ; 2 uses
  %i.aej = lshr i64 %.sroa.025.0.i, %i.aec
  %i.aek = add i64 %i.aei, %.0898.i
  %i.ael = icmp uge i64 %i.aef, %i.aek            ; 2 uses
  %i.aem = zext i1 %i.ael to i64
  %i.aen = add nuw nsw i64 %i.aej, %i.aem         ; 3 uses
  %i.aeo = icmp eq i64 %i.aen, 0
  br i1 %i.aeo, label %bb.hi, label %bb.ha, !prof !45

bb.ha:                                            ; preds = %.thread126
  %i.aep = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.aeq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.aen, i1 true) ; 2 uses
  %i.aer = trunc nuw nsw i64 %i.aeq to i32
  %i.aes = shl i64 %i.aen, %i.aeq
  %i.aet = lshr i64 %i.aes, 11                    ; 2 uses
  %i.aeu = sub nsw i32 %i.aep, %i.aer             ; 5 uses
  %i.aev = icmp sgt i32 %i.aeu, 960
  br i1 %i.aev, label %diy_fp_to_ieee_raw.exit, label %bb.hb, !prof !45

bb.hb:                                            ; preds = %bb.ha
  %i.aew = icmp sgt i32 %i.aeu, -1086
  br i1 %i.aew, label %bb.hc, label %bb.hd, !prof !62

bb.hc:                                            ; preds = %bb.hb
  %i.aex = add nsw i32 %i.aeu, 1086
  %i.aey = zext nneg i32 %i.aex to i64
  %i.aez = shl nuw nsw i64 %i.aey, 52
  %i.afa = and i64 %i.aet, 4503599627370495
  %i.afb = or disjoint i64 %i.aez, %i.afa
  br label %bb.hi

bb.hd:                                            ; preds = %bb.hb
  %i.afc = icmp samesign ugt i32 %i.aeu, -1138
  br i1 %i.afc, label %bb.he, label %bb.hi, !prof !62

bb.he:                                            ; preds = %bb.hd
  %i.afd = sub nuw nsw i32 -1085, %i.aeu
  %i.afe = zext nneg i32 %i.afd to i64
  %i.aff = lshr i64 %i.aet, %i.afe
  br label %bb.hi

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.ha
  %i.afg = and i32 %2, 128
  %.not180 = icmp eq i32 %i.afg, 0
  br i1 %.not180, label %bb.hg, label %bb.hf, !prof !62

bb.hf:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.afh = ptrtoint ptr %.33.i to i64
  %i.afi = sub i64 %i.afh, %i.f
  %i.afj = shl i64 %i.afi, 8
  %i.afk = or disjoint i64 %i.afj, 1
  store i64 %i.afk, ptr %1, align 8, !tbaa !99
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.afl, align 8, !tbaa !100
  br label %read_num.exit.thread142

bb.hg:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.afm = and i32 %2, 16
  %.not181 = icmp eq i32 %i.afm, 0
  br i1 %.not181, label %read_num.exit, label %bb.hh, !prof !62

bb.hh:                                            ; preds = %bb.hg
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.afn = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.afn, ptr %i.afo, align 8, !tbaa !100
  br label %read_num.exit.thread142

bb.hi:                                            ; preds = %.thread126, %bb.hc, %bb.he, %bb.hd
  %.0.i28.ph = phi i64 [ 0, %bb.hd ], [ %i.aff, %bb.he ], [ %i.afb, %bb.hc ], [ 0, %.thread126 ] ; 7 uses
  %i.afp = sub i64 %i.aei, %.0898.i
  %.not987.i = icmp ule i64 %i.aef, %i.afp
  %spec.select.i = or i1 %.not987.i, %i.ael
  br i1 %spec.select.i, label %bb.hj, label %bb.hk, !prof !62

bb.hj:                                            ; preds = %bb.hi
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.afq = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.afr = or disjoint i64 %.0.i28.ph, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.afr, ptr %i.afs, align 8, !tbaa !100
  br label %read_num.exit.thread142

bb.hk:                                            ; preds = %bb.hi
  %.not988.i = icmp samesign ult i64 %.0.i28.ph, 4503599627370496 ; 2 uses
  %i.aft = and i64 %.0.i28.ph, 4503599627370495
  %i.afu = or disjoint i64 %i.aft, 4503599627370496
  %i.afv = lshr i64 %.0.i28.ph, 52
  %i.afw = trunc nuw nsw i64 %i.afv to i32
  %i.afx = add nsw i32 %i.afw, -1076
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.afx ; 4 uses
  %.sroa.018.0.i = select i1 %.not988.i, i64 %.0.i28.ph, i64 %i.afu
end_hunk_5
begin_hunk_6_@yyjson_incr_read:bb.a
  %i.aca = add i64 %i.abz, %i.aby                 ; 2 uses
  %i.acb = load i8, ptr %i.abx, align 1, !tbaa !100
  %i.acc = add i8 %i.acb, -48                     ; 2 uses
  %i.acd = icmp ult i8 %i.acc, 10
  br i1 %i.acd, label %.lr.ph4269, label %._crit_edge4270, !llvm.loop !12

._crit_edge4270:                                  ; preds = %.lr.ph4269, %.preheader3534
  %.30.i998.lcssa5353 = phi ptr [ %i.abu, %.preheader3534 ], [ %.30.i998.lcssa5354, %.lr.ph4269 ]
  %.0928.i999.lcssa = phi i64 [ 0, %.preheader3534 ], [ %i.aca, %.lr.ph4269 ] ; 2 uses
  %.31.i1000.lcssa = phi ptr [ %i.abu, %.preheader3534 ], [ %i.abx, %.lr.ph4269 ] ; 6 uses
  %i.ace = ptrtoint ptr %.31.i1000.lcssa to i64   ; 2 uses
  %i.acf = ptrtoint ptr %.30.i998.lcssa5353 to i64
  %i.acg = sub i64 %i.ace, %i.acf
  %i.ach = icmp sgt i64 %i.acg, 18
  br i1 %i.ach, label %bb.gp, label %bb.gw, !prof !45

bb.gp:                                            ; preds = %._crit_edge4270
  br i1 %i.abi, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.aci = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.acj = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.aci, ptr %i.acj, align 8, !tbaa !100
  store ptr %.31.i1000.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.gr:                                            ; preds = %bb.gp
  %i.ack = and i32 %.fr, 128
  %.not3502 = icmp eq i32 %i.ack, 0
  br i1 %.not3502, label %bb.gt, label %bb.gs, !prof !62

bb.gs:                                            ; preds = %bb.gr
  store i8 0, ptr %i.f, align 1, !tbaa !100
  %i.acl = ptrtoint ptr %i.bq to i64
  %i.acm = sub i64 %i.ace, %i.acl
  %i.acn = shl i64 %i.acm, 8
  %i.aco = or disjoint i64 %i.acn, 1
  store i64 %i.aco, ptr %.0617, align 8, !tbaa !99
  %i.acp = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store ptr %i.bq, ptr %i.acp, align 8, !tbaa !100
  store ptr %.31.i1000.lcssa, ptr %i.g, align 8, !tbaa !107
  store ptr %.31.i1000.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.gt:                                            ; preds = %bb.gr
  %i.acq = and i32 %.fr, 16
  %.not3503 = icmp eq i32 %i.acq, 0
  br i1 %.not3503, label %bb.gv, label %bb.gu, !prof !62

bb.gu:                                            ; preds = %bb.gt
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.acr = select i1 %i.cb, i64 -4503599627370496, i64 9218868437227405312
  %i.acs = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.acr, ptr %i.acs, align 8, !tbaa !100
  store ptr %.31.i1000.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.gv:                                            ; preds = %bb.gt
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit1117.thread3167

bb.gw:                                            ; preds = %._crit_edge4270
  %i.act = sub nsw i64 0, %.0928.i999.lcssa
  %i.acu = select i1 %i.abi, i64 %i.act, i64 %.0928.i999.lcssa
  %i.acv = add nsw i64 %i.acu, %.0929.i992
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.critedge.i1111
  %.1930.i1001 = phi i64 [ %i.acv, %bb.gw ], [ %i.aap, %.critedge.i1111 ] ; 3 uses
  %.32.i1002 = phi ptr [ %.31.i1000.lcssa, %bb.gw ], [ %.27.i1107, %.critedge.i1111 ] ; 6 uses
  %.21893.i1003 = phi i64 [ %.20892.i994, %bb.gw ], [ %i.zl, %.critedge.i1111 ]
  %.22.i1004 = phi ptr [ %.21.i995, %bb.gw ], [ %.19.i1108, %.critedge.i1111 ]
  %.2866.i1005 = phi ptr [ %.1865.i996, %bb.gw ], [ %..27.i1112, %.critedge.i1111 ]
  %.2862.i1006 = phi ptr [ %.1861.i997, %bb.gw ], [ %..24.i1113, %.critedge.i1111 ]
  %i.acw = icmp slt i64 %.1930.i1001, -343
  br i1 %i.acw, label %bb.gy, label %bb.gz, !prof !45

bb.gy:                                            ; preds = %bb.gx
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.acx = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.acy = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.acx, ptr %i.acy, align 8, !tbaa !100
  store ptr %.32.i1002, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.gz:                                            ; preds = %bb.gx
  %i.acz = icmp sgt i64 %.1930.i1001, 308
  br i1 %i.acz, label %bb.ha, label %bb.hf, !prof !45

bb.ha:                                            ; preds = %bb.gz
  %i.ada = and i32 %.fr, 128
  %.not3500 = icmp eq i32 %i.ada, 0
  br i1 %.not3500, label %bb.hc, label %bb.hb, !prof !62

bb.hb:                                            ; preds = %bb.ha
  store i8 0, ptr %i.f, align 1, !tbaa !100
  %i.adb = ptrtoint ptr %.32.i1002 to i64
  %i.adc = ptrtoint ptr %i.bq to i64
  %i.add = sub i64 %i.adb, %i.adc
  %i.ade = shl i64 %i.add, 8
  %i.adf = or disjoint i64 %i.ade, 1
  store i64 %i.adf, ptr %.0617, align 8, !tbaa !99
  %i.adg = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store ptr %i.bq, ptr %i.adg, align 8, !tbaa !100
  store ptr %.32.i1002, ptr %i.g, align 8, !tbaa !107
  store ptr %.32.i1002, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.hc:                                            ; preds = %bb.ha
  %i.adh = and i32 %.fr, 16
  %.not3501 = icmp eq i32 %i.adh, 0
  br i1 %.not3501, label %bb.he, label %bb.hd, !prof !62

bb.hd:                                            ; preds = %bb.hc
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.adi = select i1 %i.cb, i64 -4503599627370496, i64 9218868437227405312
  %i.adj = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.adi, ptr %i.adj, align 8, !tbaa !100
  store ptr %.32.i1002, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.he:                                            ; preds = %bb.hc
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit1117.thread3167

bb.hf:                                            ; preds = %bb.gz, %bb.gl
  %storemerge.in.i1007 = phi i64 [ %.neg981.i1050, %bb.gl ], [ %.1930.i1001, %bb.gz ] ; 3 uses
  %.33.i1008 = phi ptr [ %.28.i1046, %bb.gl ], [ %.32.i1002, %bb.gz ] ; 7 uses
  %.22894.i1009 = phi i64 [ %.19891.i1047, %bb.gl ], [ %.21893.i1003, %bb.gz ] ; 7 uses
  %.23.i1010 = phi ptr [ %.20.i1048, %bb.gl ], [ %.22.i1004, %bb.gz ]
  %.3867.i1011 = phi ptr [ %.28.i1046, %bb.gl ], [ %.2866.i1005, %bb.gz ]
  %.3863.i1012 = phi ptr [ null, %bb.gl ], [ %.2862.i1006, %bb.gz ] ; 2 uses
  %storemerge.i1013 = trunc i64 %storemerge.in.i1007 to i32 ; 8 uses
  store i32 %storemerge.i1013, ptr %i.a, align 4, !tbaa !119
  %i.adk = icmp ult i64 %.22894.i1009, 9007199254740992
  %i.adl = add i32 %storemerge.i1013, 22
  %i.adm = icmp ult i32 %i.adl, 45
  %or.cond9.i1014 = and i1 %i.adk, %i.adm
  br i1 %or.cond9.i1014, label %bb.hg, label %bb.hk

bb.hg:                                            ; preds = %bb.hf
  %i.adn = uitofp nneg i64 %.22894.i1009 to double ; 2 uses
  %i.ado = icmp slt i32 %storemerge.i1013, 0
  br i1 %i.ado, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.adp = sub nsw i64 0, %storemerge.in.i1007
  %i.adq = and i64 %i.adp, 4294967295
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.adq
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !128
  %i.adt = fdiv double %i.adn, %i.ads
  br label %bb.hj

bb.hi:                                            ; preds = %bb.hg
  %i.adu = and i64 %storemerge.in.i1007, 2147483647
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.adu
  %i.adw = load double, ptr %i.adv, align 8, !tbaa !128
  %i.adx = fmul double %i.adw, %i.adn
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.0900.i1038 = phi double [ %i.adt, %bb.hh ], [ %i.adx, %bb.hi ] ; 2 uses
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.ady = fneg double %.0900.i1038
  %i.adz = select i1 %i.cb, double %i.ady, double %.0900.i1038
  %i.aea = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store double %i.adz, ptr %i.aea, align 8, !tbaa !100
  store ptr %.33.i1008, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

bb.hk:                                            ; preds = %bb.hf
  %i.aeb = icmp eq ptr %.3863.i1012, null         ; 2 uses
  %i.aec = add i32 %storemerge.i1013, 306
  %i.aed = icmp ult i32 %i.aec, 594
  %i.aee = and i1 %i.aed, %i.aeb
  br i1 %i.aee, label %bb.hl, label %..critedge992.i1036_crit_edge, !prof !62

..critedge992.i1036_crit_edge:                    ; preds = %bb.hk
  %.pre4981 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i1009, i1 true) ; 3 uses
  %.pre4983 = shl i64 %.22894.i1009, %.pre4981
  %.pre4985 = shl i32 %storemerge.i1013, 1
  %.pre4987 = mul nsw i32 %storemerge.i1013, 217706
  %.pre4989 = add nsw i32 %.pre4987, -4128768
  %.pre4991 = ashr i32 %.pre4989, 16
  %.pre4993 = zext i64 %.pre4983 to i128
  %.pre4995 = trunc nuw nsw i64 %.pre4981 to i32
  br label %.critedge992.i1036

bb.hl:                                            ; preds = %bb.hk
  %i.aef = shl nsw i32 %storemerge.i1013, 1       ; 2 uses
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.aeg ; 2 uses
  %i.aei = getelementptr i8, ptr %i.aeh, i64 5488
  %i.aej = load i64, ptr %i.aei, align 16, !tbaa !106
  %i.aek = mul nsw i32 %storemerge.i1013, 217706
  %i.ael = add nsw i32 %i.aek, -4128768
  %i.aem = ashr i32 %i.ael, 16                    ; 2 uses
  %i.aen = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i1009, i1 true) ; 3 uses
  %i.aeo = trunc nuw nsw i64 %i.aen to i32        ; 2 uses
  %i.aep = shl i64 %.22894.i1009, %i.aen          ; 2 uses
  %i.aeq = zext i64 %i.aep to i128                ; 2 uses
  %i.aer = zext i64 %i.aej to i128
  %i.aes = mul nuw i128 %i.aer, %i.aeq            ; 2 uses
  %i.aet = lshr i128 %i.aes, 64
  %i.aeu = trunc nuw i128 %i.aet to i64           ; 3 uses
  %i.aev = trunc i128 %i.aes to i64               ; 2 uses
  %i.aew = and i64 %i.aeu, 511
  %i.aex = add nsw i64 %i.aew, -1
  %i.aey = icmp ult i64 %i.aex, 510
  br i1 %i.aey, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.aez = getelementptr i8, ptr %i.aeh, i64 5496
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !106
  %10 = call i64 @llvm.umulh.i64(i64 %i.aep, i64 %i.afa)
  %i.afb = add i64 %10, %i.aev                    ; 2 uses
  %i.afc = add i64 %i.afb, -1
  %i.afd = icmp ult i64 %i.afc, -2
  br i1 %i.afd, label %bb.hn, label %.critedge992.i1036

bb.hn:                                            ; preds = %bb.hm
  %i.afe = icmp ult i64 %i.afb, %i.aev
  %i.aff = zext i1 %i.afe to i64
  %i.afg = add nuw i64 %i.aff, %i.aeu
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hl
  %.03034 = phi i64 [ %i.aeu, %bb.hl ], [ %i.afg, %bb.hn ] ; 2 uses
  %i.afh = icmp sgt i64 %.03034, -1               ; 2 uses
  %.neg983.i1037 = sext i1 %i.afh to i32
  %i.afi = zext i1 %i.afh to i64
  %i.afj = shl i64 %.03034, %i.afi                ; 2 uses
  %i.afk = and i64 %i.afj, 1024
  %i.afl = add i64 %i.afk, %i.afj                 ; 2 uses
  %i.afm = icmp ult i64 %i.afl, 1024
  %spec.select3332.v = select i1 %i.afm, i32 65, i32 64
  %i.afn = lshr i64 %i.afl, 11
  %reass.sub4467 = sub nsw i32 %i.aem, %i.aeo
  %i.afo = add nsw i32 %reass.sub4467, 1086
  %spec.select3332 = add nsw i32 %i.afo, %.neg983.i1037
  %i.afp = add nsw i32 %spec.select3332, %spec.select3332.v
  %i.afq = zext nneg i32 %i.afp to i64
  %i.afr = shl nuw nsw i64 %i.afq, 52
  %i.afs = and i64 %i.afn, 4503599627370495
  %i.aft = or disjoint i64 %i.afr, %i.afs
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.afu = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.afv = or disjoint i64 %i.aft, %i.afu
  %i.afw = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.afv, ptr %i.afw, align 8, !tbaa !100
  store ptr %.33.i1008, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117.thread

.critedge992.i1036:                               ; preds = %..critedge992.i1036_crit_edge, %bb.hm
  %.pre-phi4996 = phi i32 [ %.pre4995, %..critedge992.i1036_crit_edge ], [ %i.aeo, %bb.hm ]
  %.pre-phi4994 = phi i128 [ %.pre4993, %..critedge992.i1036_crit_edge ], [ %i.aeq, %bb.hm ]
  %.pre-phi4992 = phi i32 [ %.pre4991, %..critedge992.i1036_crit_edge ], [ %i.aem, %bb.hm ]
  %.pre-phi4986 = phi i32 [ %.pre4985, %..critedge992.i1036_crit_edge ], [ %i.aef, %bb.hm ] ; 2 uses
  %.pre-phi4982 = phi i64 [ %.pre4981, %..critedge992.i1036_crit_edge ], [ %i.aen, %bb.hm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.afx = select i1 %i.aeb, i64 0, i64 4
  %i.afy = shl i64 %i.afx, %.pre-phi4982          ; 2 uses
  %i.afz = add i32 %.pre-phi4986, 686
  %i.aga = sext i32 %i.afz to i64
  %i.agb = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.aga
  %i.agc = load i64, ptr %i.agb, align 16, !tbaa !106
  %i.agd = add i32 %.pre-phi4986, 687
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.age
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !106
  %i.agh = lshr i64 %i.agg, 63
  %i.agi = add i64 %i.agh, %i.agc
  %i.agj = zext i64 %i.agi to i128
  %i.agk = mul nuw i128 %.pre-phi4994, %i.agj     ; 2 uses
  %i.agl = lshr i128 %i.agk, 64
  %i.agm = trunc nuw i128 %i.agl to i64
  %i.agn = trunc i128 %i.agk to i64
  %i.ago = lshr i64 %i.agn, 63
  %i.agp = add nuw i64 %i.ago, %i.agm             ; 2 uses
  %.not986.i1017 = icmp eq i64 %i.afy, 0
  %i.agq = select i1 %.not986.i1017, i64 8, i64 9
  %i.agr = add i64 %i.agq, %i.afy
  %i.ags = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.agp, i1 true) ; 3 uses
  %i.agt = trunc nuw nsw i64 %i.ags to i32
  %i.agu = shl i64 %i.agp, %i.ags                 ; 3 uses
  %i.agv = add nsw i32 %.pre-phi4992, 64
  %i.agw = add nuw nsw i32 %.pre-phi4996, %i.agt
  %i.agx = sub nsw i32 %i.agv, %i.agw             ; 7 uses
  %i.agy = shl i64 %i.agr, %i.ags                 ; 3 uses
  %i.agz = icmp sgt i32 %i.agx, -1086
  br i1 %i.agz, label %.thread3155, label %bb.hp, !prof !62

bb.hp:                                            ; preds = %.critedge992.i1036
  %i.aha = icmp samesign ult i32 %i.agx, -1137
  br i1 %i.aha, label %.thread3152, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ahb = sub nuw nsw i32 -1074, %i.agx          ; 2 uses
  %i.ahc = icmp samesign ult i32 %i.agx, -1134
  br i1 %i.ahc, label %.thread3152, label %.thread3155, !prof !137

.thread3152:                                      ; preds = %bb.hp, %bb.hq
  %.0897.i10203154 = phi i32 [ %i.ahb, %bb.hq ], [ 64, %bb.hp ]
  %i.ahd = add nsw i32 %.0897.i10203154, -60      ; 2 uses
  %i.ahe = zext nneg i32 %i.ahd to i64            ; 2 uses
  %i.ahf = lshr i64 %i.agu, %i.ahe
  %i.ahg = add nsw i32 %i.ahd, %i.agx
  %i.ahh = lshr i64 %i.agy, %i.ahe
  %i.ahi = add nuw i64 %i.ahh, 9
  br label %.thread3155

.thread3155:                                      ; preds = %.critedge992.i1036, %.thread3152, %bb.hq
  %.0898.i1021 = phi i64 [ %i.ahi, %.thread3152 ], [ %i.agy, %bb.hq ], [ %i.agy, %.critedge992.i1036 ] ; 2 uses
  %.0896.i1022 = phi i32 [ 60, %.thread3152 ], [ %i.ahb, %bb.hq ], [ 11, %.critedge992.i1036 ] ; 3 uses
  %.sroa.19.0.in.i1023 = phi i32 [ %i.ahg, %.thread3152 ], [ %i.agx, %bb.hq ], [ %i.agx, %.critedge992.i1036 ]
  %.sroa.025.0.i1024 = phi i64 [ %i.ahf, %.thread3152 ], [ %i.agu, %bb.hq ], [ %i.agu, %.critedge992.i1036 ] ; 2 uses
  %i.ahj = zext nneg i32 %.0896.i1022 to i64      ; 2 uses
  %notmask.i1025 = shl nsw i64 -1, %i.ahj
  %i.ahk = xor i64 %notmask.i1025, -1
  %i.ahl = and i64 %.sroa.025.0.i1024, %i.ahk
  %i.ahm = shl nuw nsw i64 %i.ahl, 3              ; 2 uses
  %i.ahn = add nsw i32 %.0896.i1022, -1
  %i.aho = zext nneg i32 %i.ahn to i64
  %i.ahp = shl nuw nsw i64 8, %i.aho              ; 2 uses
  %i.ahq = lshr i64 %.sroa.025.0.i1024, %i.ahj
  %i.ahr = add i64 %i.ahp, %.0898.i1021
  %i.ahs = icmp uge i64 %i.ahm, %i.ahr            ; 2 uses
  %i.aht = zext i1 %i.ahs to i64
  %i.ahu = add nuw nsw i64 %i.ahq, %i.aht         ; 3 uses
  %i.ahv = icmp eq i64 %i.ahu, 0
  br i1 %i.ahv, label %bb.ia, label %bb.hr, !prof !45

bb.hr:                                            ; preds = %.thread3155
  %i.ahw = add nsw i32 %.sroa.19.0.in.i1023, %.0896.i1022
  %i.ahx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.ahu, i1 true) ; 2 uses
  %i.ahy = trunc nuw nsw i64 %i.ahx to i32
  %i.ahz = shl i64 %i.ahu, %i.ahx
  %i.aia = lshr i64 %i.ahz, 11                    ; 2 uses
  %i.aib = sub nsw i32 %i.ahw, %i.ahy             ; 5 uses
  %i.aic = icmp sgt i32 %i.aib, 960
  br i1 %i.aic, label %diy_fp_to_ieee_raw.exit, label %bb.hs, !prof !45

bb.hs:                                            ; preds = %bb.hr
  %i.aid = icmp sgt i32 %i.aib, -1086
  br i1 %i.aid, label %bb.ht, label %bb.hu, !prof !62

bb.ht:                                            ; preds = %bb.hs
  %i.aie = add nsw i32 %i.aib, 1086
  %i.aif = zext nneg i32 %i.aie to i64
  %i.aig = shl nuw nsw i64 %i.aif, 52
  %i.aih = and i64 %i.aia, 4503599627370495
  %i.aii = or disjoint i64 %i.aig, %i.aih
  br label %bb.ia

bb.hu:                                            ; preds = %bb.hs
  %i.aij = icmp samesign ugt i32 %i.aib, -1138
  br i1 %i.aij, label %bb.hv, label %bb.ia, !prof !62

bb.hv:                                            ; preds = %bb.hu
  %i.aik = sub nuw nsw i32 -1085, %i.aib
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = lshr i64 %i.aia, %i.ail
  br label %bb.ia

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.hr
  %i.ain = and i32 %.fr, 128
  %.not3494 = icmp eq i32 %i.ain, 0
  br i1 %.not3494, label %bb.hx, label %bb.hw, !prof !62

bb.hw:                                            ; preds = %diy_fp_to_ieee_raw.exit
  store i8 0, ptr %i.f, align 1, !tbaa !100
  %i.aio = ptrtoint ptr %.33.i1008 to i64
  %i.aip = ptrtoint ptr %i.bq to i64
  %i.aiq = sub i64 %i.aio, %i.aip
  %i.air = shl i64 %i.aiq, 8
  %i.ais = or disjoint i64 %i.air, 1
  store i64 %i.ais, ptr %.0617, align 8, !tbaa !99
  %i.ait = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store ptr %i.bq, ptr %i.ait, align 8, !tbaa !100
  store ptr %.33.i1008, ptr %i.g, align 8, !tbaa !107
  br label %read_num.exit1117.thread3171

bb.hx:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.aiu = and i32 %.fr, 16
  %.not3495 = icmp eq i32 %i.aiu, 0
  br i1 %.not3495, label %bb.hz, label %bb.hy, !prof !62

bb.hy:                                            ; preds = %bb.hx
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.aiv = select i1 %i.cb, i64 -4503599627370496, i64 9218868437227405312
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.aiv, ptr %i.aiw, align 8, !tbaa !100
  br label %read_num.exit1117.thread3171

bb.hz:                                            ; preds = %bb.hx
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit1117

bb.ia:                                            ; preds = %.thread3155, %bb.ht, %bb.hv, %bb.hu
  %.0.i1497.ph = phi i64 [ 0, %bb.hu ], [ %i.aim, %bb.hv ], [ %i.aii, %bb.ht ], [ 0, %.thread3155 ] ; 7 uses
  %i.aix = sub i64 %i.ahp, %.0898.i1021
  %.not987.i1027 = icmp ule i64 %i.ahm, %i.aix
  %spec.select.i1028 = or i1 %.not987.i1027, %i.ahs
  br i1 %spec.select.i1028, label %bb.ib, label %bb.ic, !prof !62

bb.ib:                                            ; preds = %bb.ia
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.aiy = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.aiz = or disjoint i64 %.0.i1497.ph, %i.aiy
  %i.aja = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.aiz, ptr %i.aja, align 8, !tbaa !100
  br label %read_num.exit1117.thread3171

bb.ic:                                            ; preds = %bb.ia
  %.not988.i1029 = icmp samesign ult i64 %.0.i1497.ph, 4503599627370496 ; 2 uses
end_hunk_6
begin_hunk_7_@yyjson_incr_read:bb.a
  %i.czz = add i8 %i.czy, -48                     ; 2 uses
  %i.daa = icmp ult i8 %i.czz, 10
  br i1 %i.daa, label %.lr.ph4070, label %._crit_edge4071, !llvm.loop !12

._crit_edge4071:                                  ; preds = %.lr.ph4070, %.preheader3560
  %.30.i867.lcssa5395 = phi ptr [ %i.czr, %.preheader3560 ], [ %.30.i867.lcssa5396, %.lr.ph4070 ]
  %.0928.i868.lcssa = phi i64 [ 0, %.preheader3560 ], [ %i.czx, %.lr.ph4070 ] ; 2 uses
  %.31.i869.lcssa = phi ptr [ %i.czr, %.preheader3560 ], [ %i.czu, %.lr.ph4070 ] ; 6 uses
  %i.dab = ptrtoint ptr %.31.i869.lcssa to i64    ; 2 uses
  %i.dac = ptrtoint ptr %.30.i867.lcssa5395 to i64
  %i.dad = sub i64 %i.dab, %i.dac
  %i.dae = icmp sgt i64 %i.dad, 18
  br i1 %i.dae, label %bb.ui, label %bb.up, !prof !45

bb.ui:                                            ; preds = %._crit_edge4071
  br i1 %i.czf, label %bb.uj, label %bb.uk

bb.uj:                                            ; preds = %bb.ui
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.daf = select i1 %i.cad, i64 -9223372036854775808, i64 0
  %i.dag = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.daf, ptr %i.dag, align 8, !tbaa !100
  store ptr %.31.i869.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.uk:                                            ; preds = %bb.ui
  %i.dah = and i32 %.fr, 128
  %.not3451 = icmp eq i32 %i.dah, 0
  br i1 %.not3451, label %bb.um, label %bb.ul, !prof !62

bb.ul:                                            ; preds = %bb.uk
  %i.dai = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.dai, align 1, !tbaa !100
  %i.daj = ptrtoint ptr %i.bzz to i64
  %i.dak = sub i64 %i.dab, %i.daj
  %i.dal = shl i64 %i.dak, 8
  %i.dam = or disjoint i64 %i.dal, 1
  store i64 %i.dam, ptr %.6623, align 8, !tbaa !99
  %i.dan = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store ptr %i.bzz, ptr %i.dan, align 8, !tbaa !100
  store ptr %.31.i869.lcssa, ptr %i.g, align 8, !tbaa !107
  store ptr %.31.i869.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.um:                                            ; preds = %bb.uk
  %i.dao = and i32 %.fr, 16
  %.not3452 = icmp eq i32 %i.dao, 0
  br i1 %.not3452, label %bb.uo, label %bb.un, !prof !62

bb.un:                                            ; preds = %bb.um
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.dap = select i1 %i.cad, i64 -4503599627370496, i64 9218868437227405312
  %i.daq = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dap, ptr %i.daq, align 8, !tbaa !100
  store ptr %.31.i869.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.uo:                                            ; preds = %bb.um
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit986.thread3220

bb.up:                                            ; preds = %._crit_edge4071
  %i.dar = sub nsw i64 0, %.0928.i868.lcssa
  %i.das = select i1 %i.czf, i64 %i.dar, i64 %.0928.i868.lcssa
  %i.dat = add nsw i64 %i.das, %.0929.i861
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %.critedge.i980
  %.1930.i870 = phi i64 [ %i.dat, %bb.up ], [ %i.cym, %.critedge.i980 ] ; 3 uses
  %.32.i871 = phi ptr [ %.31.i869.lcssa, %bb.up ], [ %.27.i976, %.critedge.i980 ] ; 6 uses
  %.21893.i872 = phi i64 [ %.20892.i863, %bb.up ], [ %i.cxh, %.critedge.i980 ]
  %.22.i873 = phi ptr [ %.21.i864, %bb.up ], [ %.19.i977, %.critedge.i980 ]
  %.2866.i874 = phi ptr [ %.1865.i865, %bb.up ], [ %..27.i981, %.critedge.i980 ]
  %.2862.i875 = phi ptr [ %.1861.i866, %bb.up ], [ %..24.i982, %.critedge.i980 ]
  %i.dau = icmp slt i64 %.1930.i870, -343
  br i1 %i.dau, label %bb.ur, label %bb.us, !prof !45

bb.ur:                                            ; preds = %bb.uq
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.dav = select i1 %i.cad, i64 -9223372036854775808, i64 0
  %i.daw = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dav, ptr %i.daw, align 8, !tbaa !100
  store ptr %.32.i871, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.us:                                            ; preds = %bb.uq
  %i.dax = icmp sgt i64 %.1930.i870, 308
  br i1 %i.dax, label %bb.ut, label %bb.uy, !prof !45

bb.ut:                                            ; preds = %bb.us
  %i.day = and i32 %.fr, 128
  %.not3449 = icmp eq i32 %i.day, 0
  br i1 %.not3449, label %bb.uv, label %bb.uu, !prof !62

bb.uu:                                            ; preds = %bb.ut
  %i.daz = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.daz, align 1, !tbaa !100
  %i.dba = ptrtoint ptr %.32.i871 to i64
  %i.dbb = ptrtoint ptr %i.bzz to i64
  %i.dbc = sub i64 %i.dba, %i.dbb
  %i.dbd = shl i64 %i.dbc, 8
  %i.dbe = or disjoint i64 %i.dbd, 1
  store i64 %i.dbe, ptr %.6623, align 8, !tbaa !99
  %i.dbf = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store ptr %i.bzz, ptr %i.dbf, align 8, !tbaa !100
  store ptr %.32.i871, ptr %i.g, align 8, !tbaa !107
  store ptr %.32.i871, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.uv:                                            ; preds = %bb.ut
  %i.dbg = and i32 %.fr, 16
  %.not3450 = icmp eq i32 %i.dbg, 0
  br i1 %.not3450, label %bb.ux, label %bb.uw, !prof !62

bb.uw:                                            ; preds = %bb.uv
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.dbh = select i1 %i.cad, i64 -4503599627370496, i64 9218868437227405312
  %i.dbi = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dbh, ptr %i.dbi, align 8, !tbaa !100
  store ptr %.32.i871, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.ux:                                            ; preds = %bb.uv
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit986.thread3220

bb.uy:                                            ; preds = %bb.us, %bb.ue
  %storemerge.in.i876 = phi i64 [ %.neg981.i919, %bb.ue ], [ %.1930.i870, %bb.us ] ; 3 uses
  %.33.i877 = phi ptr [ %.28.i915, %bb.ue ], [ %.32.i871, %bb.us ] ; 7 uses
  %.22894.i878 = phi i64 [ %.19891.i916, %bb.ue ], [ %.21893.i872, %bb.us ] ; 7 uses
  %.23.i879 = phi ptr [ %.20.i917, %bb.ue ], [ %.22.i873, %bb.us ]
  %.3867.i880 = phi ptr [ %.28.i915, %bb.ue ], [ %.2866.i874, %bb.us ]
  %.3863.i881 = phi ptr [ null, %bb.ue ], [ %.2862.i875, %bb.us ] ; 2 uses
  %storemerge.i882 = trunc i64 %storemerge.in.i876 to i32 ; 8 uses
  store i32 %storemerge.i882, ptr %i.b, align 4, !tbaa !119
  %i.dbj = icmp ult i64 %.22894.i878, 9007199254740992
  %i.dbk = add i32 %storemerge.i882, 22
  %i.dbl = icmp ult i32 %i.dbk, 45
  %or.cond9.i883 = and i1 %i.dbj, %i.dbl
  br i1 %or.cond9.i883, label %bb.uz, label %bb.vd

bb.uz:                                            ; preds = %bb.uy
  %i.dbm = uitofp nneg i64 %.22894.i878 to double ; 2 uses
  %i.dbn = icmp slt i32 %storemerge.i882, 0
  br i1 %i.dbn, label %bb.va, label %bb.vb

bb.va:                                            ; preds = %bb.uz
  %i.dbo = sub nsw i64 0, %storemerge.in.i876
  %i.dbp = and i64 %i.dbo, 4294967295
  %i.dbq = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.dbp
  %i.dbr = load double, ptr %i.dbq, align 8, !tbaa !128
  %i.dbs = fdiv double %i.dbm, %i.dbr
  br label %bb.vc

bb.vb:                                            ; preds = %bb.uz
  %i.dbt = and i64 %storemerge.in.i876, 2147483647
  %i.dbu = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.dbt
  %i.dbv = load double, ptr %i.dbu, align 8, !tbaa !128
  %i.dbw = fmul double %i.dbv, %i.dbm
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.va
  %.0900.i907 = phi double [ %i.dbs, %bb.va ], [ %i.dbw, %bb.vb ] ; 2 uses
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.dbx = fneg double %.0900.i907
  %i.dby = select i1 %i.cad, double %i.dbx, double %.0900.i907
  %i.dbz = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store double %i.dby, ptr %i.dbz, align 8, !tbaa !100
  store ptr %.33.i877, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

bb.vd:                                            ; preds = %bb.uy
  %i.dca = icmp eq ptr %.3863.i881, null          ; 2 uses
  %i.dcb = add i32 %storemerge.i882, 306
  %i.dcc = icmp ult i32 %i.dcb, 594
  %i.dcd = and i1 %i.dcc, %i.dca
  br i1 %i.dcd, label %bb.ve, label %..critedge992.i905_crit_edge, !prof !62

..critedge992.i905_crit_edge:                     ; preds = %bb.vd
  %.pre5003 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i878, i1 true) ; 3 uses
  %.pre5005 = shl i64 %.22894.i878, %.pre5003
  %.pre5007 = shl i32 %storemerge.i882, 1
  %.pre5009 = mul nsw i32 %storemerge.i882, 217706
  %.pre5011 = add nsw i32 %.pre5009, -4128768
  %.pre5013 = ashr i32 %.pre5011, 16
  %.pre5015 = zext i64 %.pre5005 to i128
  %.pre5017 = trunc nuw nsw i64 %.pre5003 to i32
  br label %.critedge992.i905

bb.ve:                                            ; preds = %bb.vd
  %i.dce = shl nsw i32 %storemerge.i882, 1        ; 2 uses
  %i.dcf = sext i32 %i.dce to i64
  %i.dcg = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.dcf ; 2 uses
  %i.dch = getelementptr i8, ptr %i.dcg, i64 5488
  %i.dci = load i64, ptr %i.dch, align 16, !tbaa !106
  %i.dcj = mul nsw i32 %storemerge.i882, 217706
  %i.dck = add nsw i32 %i.dcj, -4128768
  %i.dcl = ashr i32 %i.dck, 16                    ; 2 uses
  %i.dcm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i878, i1 true) ; 3 uses
  %i.dcn = trunc nuw nsw i64 %i.dcm to i32        ; 2 uses
  %i.dco = shl i64 %.22894.i878, %i.dcm           ; 2 uses
  %i.dcp = zext i64 %i.dco to i128                ; 2 uses
  %i.dcq = zext i64 %i.dci to i128
  %i.dcr = mul nuw i128 %i.dcq, %i.dcp            ; 2 uses
  %i.dcs = lshr i128 %i.dcr, 64
  %i.dct = trunc nuw i128 %i.dcs to i64           ; 3 uses
  %i.dcu = trunc i128 %i.dcr to i64               ; 2 uses
  %i.dcv = and i64 %i.dct, 511
  %i.dcw = add nsw i64 %i.dcv, -1
  %i.dcx = icmp ult i64 %i.dcw, 510
  br i1 %i.dcx, label %bb.vh, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.dcy = getelementptr i8, ptr %i.dcg, i64 5496
  %i.dcz = load i64, ptr %i.dcy, align 8, !tbaa !106
  %11 = call i64 @llvm.umulh.i64(i64 %i.dco, i64 %i.dcz)
  %i.dda = add i64 %11, %i.dcu                    ; 2 uses
  %i.ddb = add i64 %i.dda, -1
  %i.ddc = icmp ult i64 %i.ddb, -2
  br i1 %i.ddc, label %bb.vg, label %.critedge992.i905

bb.vg:                                            ; preds = %bb.vf
  %i.ddd = icmp ult i64 %i.dda, %i.dcu
  %i.dde = zext i1 %i.ddd to i64
  %i.ddf = add nuw i64 %i.dde, %i.dct
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.ve
  %.03031 = phi i64 [ %i.dct, %bb.ve ], [ %i.ddf, %bb.vg ] ; 2 uses
  %i.ddg = icmp sgt i64 %.03031, -1               ; 2 uses
  %.neg983.i906 = sext i1 %i.ddg to i32
  %i.ddh = zext i1 %i.ddg to i64
  %i.ddi = shl i64 %.03031, %i.ddh                ; 2 uses
  %i.ddj = and i64 %i.ddi, 1024
  %i.ddk = add i64 %i.ddj, %i.ddi                 ; 2 uses
  %i.ddl = icmp ult i64 %i.ddk, 1024
  %spec.select3341.v = select i1 %i.ddl, i32 65, i32 64
  %i.ddm = lshr i64 %i.ddk, 11
  %reass.sub4459 = sub nsw i32 %i.dcl, %i.dcn
  %i.ddn = add nsw i32 %reass.sub4459, 1086
  %spec.select3341 = add nsw i32 %i.ddn, %.neg983.i906
  %i.ddo = add nsw i32 %spec.select3341, %spec.select3341.v
  %i.ddp = zext nneg i32 %i.ddo to i64
  %i.ddq = shl nuw nsw i64 %i.ddp, 52
  %i.ddr = and i64 %i.ddm, 4503599627370495
  %i.dds = or disjoint i64 %i.ddq, %i.ddr
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.ddt = select i1 %i.cad, i64 -9223372036854775808, i64 0
  %i.ddu = or disjoint i64 %i.dds, %i.ddt
  %i.ddv = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.ddu, ptr %i.ddv, align 8, !tbaa !100
  store ptr %.33.i877, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5703

.critedge992.i905:                                ; preds = %..critedge992.i905_crit_edge, %bb.vf
  %.pre-phi5018 = phi i32 [ %.pre5017, %..critedge992.i905_crit_edge ], [ %i.dcn, %bb.vf ]
  %.pre-phi5016 = phi i128 [ %.pre5015, %..critedge992.i905_crit_edge ], [ %i.dcp, %bb.vf ]
  %.pre-phi5014 = phi i32 [ %.pre5013, %..critedge992.i905_crit_edge ], [ %i.dcl, %bb.vf ]
  %.pre-phi5008 = phi i32 [ %.pre5007, %..critedge992.i905_crit_edge ], [ %i.dce, %bb.vf ] ; 2 uses
  %.pre-phi5004 = phi i64 [ %.pre5003, %..critedge992.i905_crit_edge ], [ %i.dcm, %bb.vf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.ddw = select i1 %i.dca, i64 0, i64 4
  %i.ddx = shl i64 %i.ddw, %.pre-phi5004          ; 2 uses
  %i.ddy = add i32 %.pre-phi5008, 686
  %i.ddz = sext i32 %i.ddy to i64
  %i.dea = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.ddz
  %i.deb = load i64, ptr %i.dea, align 16, !tbaa !106
  %i.dec = add i32 %.pre-phi5008, 687
  %i.ded = sext i32 %i.dec to i64
  %i.dee = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.ded
  %i.def = load i64, ptr %i.dee, align 8, !tbaa !106
  %i.deg = lshr i64 %i.def, 63
  %i.deh = add i64 %i.deg, %i.deb
  %i.dei = zext i64 %i.deh to i128
  %i.dej = mul nuw i128 %.pre-phi5016, %i.dei     ; 2 uses
  %i.dek = lshr i128 %i.dej, 64
  %i.del = trunc nuw i128 %i.dek to i64
  %i.dem = trunc i128 %i.dej to i64
  %i.den = lshr i64 %i.dem, 63
  %i.deo = add nuw i64 %i.den, %i.del             ; 2 uses
  %.not986.i886 = icmp eq i64 %i.ddx, 0
  %i.dep = select i1 %.not986.i886, i64 8, i64 9
  %i.deq = add i64 %i.dep, %i.ddx
  %i.der = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.deo, i1 true) ; 3 uses
  %i.des = trunc nuw nsw i64 %i.der to i32
  %i.det = shl i64 %i.deo, %i.der                 ; 3 uses
  %i.deu = add nsw i32 %.pre-phi5014, 64
  %i.dev = add nuw nsw i32 %.pre-phi5018, %i.des
  %i.dew = sub nsw i32 %i.deu, %i.dev             ; 7 uses
  %i.dex = shl i64 %i.deq, %i.der                 ; 3 uses
  %i.dey = icmp sgt i32 %i.dew, -1086
  br i1 %i.dey, label %.thread3208, label %bb.vi, !prof !62

bb.vi:                                            ; preds = %.critedge992.i905
  %i.dez = icmp samesign ult i32 %i.dew, -1137
  br i1 %i.dez, label %.thread3205, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.dfa = sub nuw nsw i32 -1074, %i.dew          ; 2 uses
  %i.dfb = icmp samesign ult i32 %i.dew, -1134
  br i1 %i.dfb, label %.thread3205, label %.thread3208, !prof !129

.thread3205:                                      ; preds = %bb.vi, %bb.vj
  %.0897.i8893207 = phi i32 [ %i.dfa, %bb.vj ], [ 64, %bb.vi ]
  %i.dfc = add nsw i32 %.0897.i8893207, -60       ; 2 uses
  %i.dfd = zext nneg i32 %i.dfc to i64            ; 2 uses
  %i.dfe = lshr i64 %i.det, %i.dfd
  %i.dff = add nsw i32 %i.dfc, %i.dew
  %i.dfg = lshr i64 %i.dex, %i.dfd
  %i.dfh = add nuw i64 %i.dfg, 9
  br label %.thread3208

.thread3208:                                      ; preds = %.critedge992.i905, %.thread3205, %bb.vj
  %.0898.i890 = phi i64 [ %i.dfh, %.thread3205 ], [ %i.dex, %bb.vj ], [ %i.dex, %.critedge992.i905 ] ; 2 uses
  %.0896.i891 = phi i32 [ 60, %.thread3205 ], [ %i.dfa, %bb.vj ], [ 11, %.critedge992.i905 ] ; 3 uses
  %.sroa.19.0.in.i892 = phi i32 [ %i.dff, %.thread3205 ], [ %i.dew, %bb.vj ], [ %i.dew, %.critedge992.i905 ]
  %.sroa.025.0.i893 = phi i64 [ %i.dfe, %.thread3205 ], [ %i.det, %bb.vj ], [ %i.det, %.critedge992.i905 ] ; 2 uses
  %i.dfi = zext nneg i32 %.0896.i891 to i64       ; 2 uses
  %notmask.i894 = shl nsw i64 -1, %i.dfi
  %i.dfj = xor i64 %notmask.i894, -1
  %i.dfk = and i64 %.sroa.025.0.i893, %i.dfj
  %i.dfl = shl nuw nsw i64 %i.dfk, 3              ; 2 uses
  %i.dfm = add nsw i32 %.0896.i891, -1
  %i.dfn = zext nneg i32 %i.dfm to i64
  %i.dfo = shl nuw nsw i64 8, %i.dfn              ; 2 uses
  %i.dfp = lshr i64 %.sroa.025.0.i893, %i.dfi
  %i.dfq = add i64 %i.dfo, %.0898.i890
  %i.dfr = icmp uge i64 %i.dfl, %i.dfq            ; 2 uses
  %i.dfs = zext i1 %i.dfr to i64
  %i.dft = add nuw nsw i64 %i.dfp, %i.dfs         ; 3 uses
  %i.dfu = icmp eq i64 %i.dft, 0
  br i1 %i.dfu, label %bb.vt, label %bb.vk, !prof !45

bb.vk:                                            ; preds = %.thread3208
  %i.dfv = add nsw i32 %.sroa.19.0.in.i892, %.0896.i891
  %i.dfw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.dft, i1 true) ; 2 uses
  %i.dfx = trunc nuw nsw i64 %i.dfw to i32
  %i.dfy = shl i64 %i.dft, %i.dfw
  %i.dfz = lshr i64 %i.dfy, 11                    ; 2 uses
  %i.dga = sub nsw i32 %i.dfv, %i.dfx             ; 5 uses
  %i.dgb = icmp sgt i32 %i.dga, 960
  br i1 %i.dgb, label %diy_fp_to_ieee_raw.exit1499, label %bb.vl, !prof !45

bb.vl:                                            ; preds = %bb.vk
  %i.dgc = icmp sgt i32 %i.dga, -1086
  br i1 %i.dgc, label %bb.vm, label %bb.vn, !prof !62

bb.vm:                                            ; preds = %bb.vl
  %i.dgd = add nsw i32 %i.dga, 1086
  %i.dge = zext nneg i32 %i.dgd to i64
  %i.dgf = shl nuw nsw i64 %i.dge, 52
  %i.dgg = and i64 %i.dfz, 4503599627370495
  %i.dgh = or disjoint i64 %i.dgf, %i.dgg
  br label %bb.vt

bb.vn:                                            ; preds = %bb.vl
  %i.dgi = icmp samesign ugt i32 %i.dga, -1138
  br i1 %i.dgi, label %bb.vo, label %bb.vt, !prof !62

bb.vo:                                            ; preds = %bb.vn
  %i.dgj = sub nuw nsw i32 -1085, %i.dga
  %i.dgk = zext nneg i32 %i.dgj to i64
  %i.dgl = lshr i64 %i.dfz, %i.dgk
  br label %bb.vt

diy_fp_to_ieee_raw.exit1499:                      ; preds = %bb.vk
  %i.dgm = and i32 %.fr, 128
  %.not3443 = icmp eq i32 %i.dgm, 0
  br i1 %.not3443, label %bb.vq, label %bb.vp, !prof !62

bb.vp:                                            ; preds = %diy_fp_to_ieee_raw.exit1499
  %i.dgn = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.dgn, align 1, !tbaa !100
  %i.dgo = ptrtoint ptr %.33.i877 to i64
  %i.dgp = ptrtoint ptr %i.bzz to i64
  %i.dgq = sub i64 %i.dgo, %i.dgp
  %i.dgr = shl i64 %i.dgq, 8
  %i.dgs = or disjoint i64 %i.dgr, 1
  store i64 %i.dgs, ptr %.6623, align 8, !tbaa !99
  %i.dgt = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store ptr %i.bzz, ptr %i.dgt, align 8, !tbaa !100
  store ptr %.33.i877, ptr %i.g, align 8, !tbaa !107
  br label %read_num.exit986.thread3225

bb.vq:                                            ; preds = %diy_fp_to_ieee_raw.exit1499
  %i.dgu = and i32 %.fr, 16
  %.not3444 = icmp eq i32 %i.dgu, 0
  br i1 %.not3444, label %bb.vs, label %bb.vr, !prof !62

bb.vr:                                            ; preds = %bb.vq
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.dgv = select i1 %i.cad, i64 -4503599627370496, i64 9218868437227405312
  %i.dgw = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dgv, ptr %i.dgw, align 8, !tbaa !100
  br label %read_num.exit986.thread3225

bb.vs:                                            ; preds = %bb.vq
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit986

bb.vt:                                            ; preds = %.thread3208, %bb.vm, %bb.vo, %bb.vn
  %.0.i1498.ph = phi i64 [ 0, %bb.vn ], [ %i.dgl, %bb.vo ], [ %i.dgh, %bb.vm ], [ 0, %.thread3208 ] ; 7 uses
  %i.dgx = sub i64 %i.dfo, %.0898.i890
  %.not987.i896 = icmp ule i64 %i.dfl, %i.dgx
  %spec.select.i897 = or i1 %.not987.i896, %i.dfr
  br i1 %spec.select.i897, label %bb.vu, label %bb.vv, !prof !62

bb.vu:                                            ; preds = %bb.vt
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.dgy = select i1 %i.cad, i64 -9223372036854775808, i64 0
  %i.dgz = or disjoint i64 %.0.i1498.ph, %i.dgy
  %i.dha = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dgz, ptr %i.dha, align 8, !tbaa !100
  br label %read_num.exit986.thread3225

bb.vv:                                            ; preds = %bb.vt
end_hunk_7
begin_hunk_8_@yyjson_incr_read:bb.a
  %i.hrb = add i8 %i.hra, -48                     ; 2 uses
  %i.hrc = icmp ult i8 %i.hrb, 10
  br i1 %i.hrc, label %.lr.ph3856, label %._crit_edge3857, !llvm.loop !12

._crit_edge3857:                                  ; preds = %.lr.ph3856, %.preheader3598
  %.30.i.lcssa5440 = phi ptr [ %i.hqt, %.preheader3598 ], [ %.30.i.lcssa5441, %.lr.ph3856 ]
  %.0928.i.lcssa = phi i64 [ 0, %.preheader3598 ], [ %i.hqz, %.lr.ph3856 ] ; 2 uses
  %.31.i.lcssa = phi ptr [ %i.hqt, %.preheader3598 ], [ %i.hqw, %.lr.ph3856 ] ; 6 uses
  %i.hrd = ptrtoint ptr %.31.i.lcssa to i64       ; 2 uses
  %i.hre = ptrtoint ptr %.30.i.lcssa5440 to i64
  %i.hrf = sub i64 %i.hrd, %i.hre
  %i.hrg = icmp sgt i64 %i.hrf, 18
  br i1 %i.hrg, label %bb.apt, label %bb.aqa, !prof !45

bb.apt:                                           ; preds = %._crit_edge3857
  br i1 %i.hqh, label %bb.apu, label %bb.apv

bb.apu:                                           ; preds = %bb.apt
  store i64 20, ptr %i.gqu, align 8, !tbaa !99
  %i.hrh = select i1 %i.gqx, i64 -9223372036854775808, i64 0
  %i.hri = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hrh, ptr %i.hri, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.apv:                                           ; preds = %bb.apt
  %i.hrj = and i32 %.fr, 128
  %.not3400 = icmp eq i32 %i.hrj, 0
  br i1 %.not3400, label %bb.apx, label %bb.apw, !prof !62

bb.apw:                                           ; preds = %bb.apv
  %i.hrk = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.hrk, align 1, !tbaa !100
  %i.hrl = ptrtoint ptr %i.gqq to i64
  %i.hrm = sub i64 %i.hrd, %i.hrl
  %i.hrn = shl i64 %i.hrm, 8
  %i.hro = or disjoint i64 %i.hrn, 1
  store i64 %i.hro, ptr %i.gqu, align 8, !tbaa !99
  %i.hrp = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store ptr %i.gqq, ptr %i.hrp, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.g, align 8, !tbaa !107
  store ptr %.31.i.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.apx:                                           ; preds = %bb.apv
  %i.hrq = and i32 %.fr, 16
  %.not3401 = icmp eq i32 %i.hrq, 0
  br i1 %.not3401, label %bb.apz, label %bb.apy, !prof !62

bb.apy:                                           ; preds = %bb.apx
  store i64 20, ptr %i.gqu, align 8, !tbaa !99
  %i.hrr = select i1 %i.gqx, i64 -4503599627370496, i64 9218868437227405312
  %i.hrs = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hrr, ptr %i.hrs, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.apz:                                           ; preds = %bb.apx
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread3321

bb.aqa:                                           ; preds = %._crit_edge3857
  %i.hrt = sub nsw i64 0, %.0928.i.lcssa
  %i.hru = select i1 %i.hqh, i64 %i.hrt, i64 %.0928.i.lcssa
  %i.hrv = add nsw i64 %i.hru, %.0929.i
  br label %bb.aqb

bb.aqb:                                           ; preds = %bb.aqa, %.critedge.i
  %.1930.i = phi i64 [ %i.hrv, %bb.aqa ], [ %i.hpo, %.critedge.i ] ; 3 uses
  %.32.i = phi ptr [ %.31.i.lcssa, %bb.aqa ], [ %.27.i, %.critedge.i ] ; 6 uses
  %.21893.i = phi i64 [ %.20892.i, %bb.aqa ], [ %i.hoj, %.critedge.i ]
  %.22.i = phi ptr [ %.21.i, %bb.aqa ], [ %.19.i, %.critedge.i ]
  %.2866.i = phi ptr [ %.1865.i, %bb.aqa ], [ %..27.i, %.critedge.i ]
  %.2862.i = phi ptr [ %.1861.i, %bb.aqa ], [ %..24.i, %.critedge.i ]
  %i.hrw = icmp slt i64 %.1930.i, -343
  br i1 %i.hrw, label %bb.aqc, label %bb.aqd, !prof !45

bb.aqc:                                           ; preds = %bb.aqb
  store i64 20, ptr %i.gqu, align 8, !tbaa !99
  %i.hrx = select i1 %i.gqx, i64 -9223372036854775808, i64 0
  %i.hry = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hrx, ptr %i.hry, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.aqd:                                           ; preds = %bb.aqb
  %i.hrz = icmp sgt i64 %.1930.i, 308
  br i1 %i.hrz, label %bb.aqe, label %bb.aqj, !prof !45

bb.aqe:                                           ; preds = %bb.aqd
  %i.hsa = and i32 %.fr, 128
  %.not3398 = icmp eq i32 %i.hsa, 0
  br i1 %.not3398, label %bb.aqg, label %bb.aqf, !prof !62

bb.aqf:                                           ; preds = %bb.aqe
  %i.hsb = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.hsb, align 1, !tbaa !100
  %i.hsc = ptrtoint ptr %.32.i to i64
  %i.hsd = ptrtoint ptr %i.gqq to i64
  %i.hse = sub i64 %i.hsc, %i.hsd
  %i.hsf = shl i64 %i.hse, 8
  %i.hsg = or disjoint i64 %i.hsf, 1
  store i64 %i.hsg, ptr %i.gqu, align 8, !tbaa !99
  %i.hsh = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store ptr %i.gqq, ptr %i.hsh, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.g, align 8, !tbaa !107
  store ptr %.32.i, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.aqg:                                           ; preds = %bb.aqe
  %i.hsi = and i32 %.fr, 16
  %.not3399 = icmp eq i32 %i.hsi, 0
  br i1 %.not3399, label %bb.aqi, label %bb.aqh, !prof !62

bb.aqh:                                           ; preds = %bb.aqg
  store i64 20, ptr %i.gqu, align 8, !tbaa !99
  %i.hsj = select i1 %i.gqx, i64 -4503599627370496, i64 9218868437227405312
  %i.hsk = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hsj, ptr %i.hsk, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.aqi:                                           ; preds = %bb.aqg
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread3321

bb.aqj:                                           ; preds = %bb.aqd, %bb.app
  %storemerge.in.i = phi i64 [ %.neg981.i, %bb.app ], [ %.1930.i, %bb.aqd ] ; 3 uses
  %.33.i = phi ptr [ %.28.i, %bb.app ], [ %.32.i, %bb.aqd ] ; 7 uses
  %.22894.i = phi i64 [ %.19891.i, %bb.app ], [ %.21893.i, %bb.aqd ] ; 7 uses
  %.23.i = phi ptr [ %.20.i, %bb.app ], [ %.22.i, %bb.aqd ]
  %.3867.i = phi ptr [ %.28.i, %bb.app ], [ %.2866.i, %bb.aqd ]
  %.3863.i = phi ptr [ null, %bb.app ], [ %.2862.i, %bb.aqd ] ; 2 uses
  %storemerge.i = trunc i64 %storemerge.in.i to i32 ; 8 uses
  store i32 %storemerge.i, ptr %i.c, align 4, !tbaa !119
  %i.hsl = icmp ult i64 %.22894.i, 9007199254740992
  %i.hsm = add i32 %storemerge.i, 22
  %i.hsn = icmp ult i32 %i.hsm, 45
  %or.cond9.i = and i1 %i.hsl, %i.hsn
  br i1 %or.cond9.i, label %bb.aqk, label %bb.aqo

bb.aqk:                                           ; preds = %bb.aqj
  %i.hso = uitofp nneg i64 %.22894.i to double    ; 2 uses
  %i.hsp = icmp slt i32 %storemerge.i, 0
  br i1 %i.hsp, label %bb.aql, label %bb.aqm

bb.aql:                                           ; preds = %bb.aqk
  %i.hsq = sub nsw i64 0, %storemerge.in.i
  %i.hsr = and i64 %i.hsq, 4294967295
  %i.hss = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.hsr
  %i.hst = load double, ptr %i.hss, align 8, !tbaa !128
  %i.hsu = fdiv double %i.hso, %i.hst
  br label %bb.aqn

bb.aqm:                                           ; preds = %bb.aqk
  %i.hsv = and i64 %storemerge.in.i, 2147483647
  %i.hsw = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.hsv
  %i.hsx = load double, ptr %i.hsw, align 8, !tbaa !128
  %i.hsy = fmul double %i.hsx, %i.hso
  br label %bb.aqn

bb.aqn:                                           ; preds = %bb.aqm, %bb.aql
  %.0900.i = phi double [ %i.hsu, %bb.aql ], [ %i.hsy, %bb.aqm ] ; 2 uses
  store i64 20, ptr %i.gqu, align 8, !tbaa !99
  %i.hsz = fneg double %.0900.i
  %i.hta = select i1 %i.gqx, double %i.hsz, double %.0900.i
  %i.htb = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store double %i.hta, ptr %i.htb, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

bb.aqo:                                           ; preds = %bb.aqj
  %i.htc = icmp eq ptr %.3863.i, null             ; 2 uses
  %i.htd = add i32 %storemerge.i, 306
  %i.hte = icmp ult i32 %i.htd, 594
  %i.htf = and i1 %i.hte, %i.htc
  br i1 %i.htf, label %bb.aqp, label %..critedge992.i_crit_edge, !prof !62

..critedge992.i_crit_edge:                        ; preds = %bb.aqo
  %.pre5025 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %.pre5027 = shl i64 %.22894.i, %.pre5025
  %.pre5029 = shl i32 %storemerge.i, 1
  %.pre5031 = mul nsw i32 %storemerge.i, 217706
  %.pre5033 = add nsw i32 %.pre5031, -4128768
  %.pre5035 = ashr i32 %.pre5033, 16
  %.pre5037 = zext i64 %.pre5027 to i128
  %.pre5039 = trunc nuw nsw i64 %.pre5025 to i32
  br label %.critedge992.i

bb.aqp:                                           ; preds = %bb.aqo
  %i.htg = shl nsw i32 %storemerge.i, 1           ; 2 uses
  %i.hth = sext i32 %i.htg to i64
  %i.hti = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.hth ; 2 uses
  %i.htj = getelementptr i8, ptr %i.hti, i64 5488
  %i.htk = load i64, ptr %i.htj, align 16, !tbaa !106
  %i.htl = mul nsw i32 %storemerge.i, 217706
  %i.htm = add nsw i32 %i.htl, -4128768
  %i.htn = ashr i32 %i.htm, 16                    ; 2 uses
  %i.hto = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %i.htp = trunc nuw nsw i64 %i.hto to i32        ; 2 uses
  %i.htq = shl i64 %.22894.i, %i.hto              ; 2 uses
  %i.htr = zext i64 %i.htq to i128                ; 2 uses
  %i.hts = zext i64 %i.htk to i128
  %i.htt = mul nuw i128 %i.hts, %i.htr            ; 2 uses
  %i.htu = lshr i128 %i.htt, 64
  %i.htv = trunc nuw i128 %i.htu to i64           ; 3 uses
  %i.htw = trunc i128 %i.htt to i64               ; 2 uses
  %i.htx = and i64 %i.htv, 511
  %i.hty = add nsw i64 %i.htx, -1
  %i.htz = icmp ult i64 %i.hty, 510
  br i1 %i.htz, label %bb.aqs, label %bb.aqq

bb.aqq:                                           ; preds = %bb.aqp
  %i.hua = getelementptr i8, ptr %i.hti, i64 5496
  %i.hub = load i64, ptr %i.hua, align 8, !tbaa !106
  %12 = call i64 @llvm.umulh.i64(i64 %i.htq, i64 %i.hub)
  %i.huc = add i64 %12, %i.htw                    ; 2 uses
  %i.hud = add i64 %i.huc, -1
  %i.hue = icmp ult i64 %i.hud, -2
  br i1 %i.hue, label %bb.aqr, label %.critedge992.i

bb.aqr:                                           ; preds = %bb.aqq
  %i.huf = icmp ult i64 %i.huc, %i.htw
  %i.hug = zext i1 %i.huf to i64
  %i.huh = add nuw i64 %i.hug, %i.htv
  br label %bb.aqs

bb.aqs:                                           ; preds = %bb.aqr, %bb.aqp
  %.03028 = phi i64 [ %i.htv, %bb.aqp ], [ %i.huh, %bb.aqr ] ; 2 uses
  %i.hui = icmp sgt i64 %.03028, -1               ; 2 uses
  %.neg983.i = sext i1 %i.hui to i32
  %i.huj = zext i1 %i.hui to i64
  %i.huk = shl i64 %.03028, %i.huj                ; 2 uses
  %i.hul = and i64 %i.huk, 1024
  %i.hum = add i64 %i.hul, %i.huk                 ; 2 uses
  %i.hun = icmp ult i64 %i.hum, 1024
  %spec.select3350.v = select i1 %i.hun, i32 65, i32 64
  %i.huo = lshr i64 %i.hum, 11
  %reass.sub4451 = sub nsw i32 %i.htn, %i.htp
  %i.hup = add nsw i32 %reass.sub4451, 1086
  %spec.select3350 = add nsw i32 %i.hup, %.neg983.i
  %i.huq = add nsw i32 %spec.select3350, %spec.select3350.v
  %i.hur = zext nneg i32 %i.huq to i64
  %i.hus = shl nuw nsw i64 %i.hur, 52
  %i.hut = and i64 %i.huo, 4503599627370495
  %i.huu = or disjoint i64 %i.hus, %i.hut
  store i64 20, ptr %i.gqu, align 8, !tbaa !99
  %i.huv = select i1 %i.gqx, i64 -9223372036854775808, i64 0
  %i.huw = or disjoint i64 %i.huu, %i.huv
  %i.hux = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.huw, ptr %i.hux, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.d, align 8, !tbaa !107
  br label %.sink.split5742

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.aqq
  %.pre-phi5040 = phi i32 [ %.pre5039, %..critedge992.i_crit_edge ], [ %i.htp, %bb.aqq ]
  %.pre-phi5038 = phi i128 [ %.pre5037, %..critedge992.i_crit_edge ], [ %i.htr, %bb.aqq ]
  %.pre-phi5036 = phi i32 [ %.pre5035, %..critedge992.i_crit_edge ], [ %i.htn, %bb.aqq ]
  %.pre-phi5030 = phi i32 [ %.pre5029, %..critedge992.i_crit_edge ], [ %i.htg, %bb.aqq ] ; 2 uses
  %.pre-phi5026 = phi i64 [ %.pre5025, %..critedge992.i_crit_edge ], [ %i.hto, %bb.aqq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.huy = select i1 %i.htc, i64 0, i64 4
  %i.huz = shl i64 %i.huy, %.pre-phi5026          ; 2 uses
  %i.hva = add i32 %.pre-phi5030, 686
  %i.hvb = sext i32 %i.hva to i64
  %i.hvc = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.hvb
  %i.hvd = load i64, ptr %i.hvc, align 16, !tbaa !106
  %i.hve = add i32 %.pre-phi5030, 687
  %i.hvf = sext i32 %i.hve to i64
  %i.hvg = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.hvf
  %i.hvh = load i64, ptr %i.hvg, align 8, !tbaa !106
  %i.hvi = lshr i64 %i.hvh, 63
  %i.hvj = add i64 %i.hvi, %i.hvd
  %i.hvk = zext i64 %i.hvj to i128
  %i.hvl = mul nuw i128 %.pre-phi5038, %i.hvk     ; 2 uses
  %i.hvm = lshr i128 %i.hvl, 64
  %i.hvn = trunc nuw i128 %i.hvm to i64
  %i.hvo = trunc i128 %i.hvl to i64
  %i.hvp = lshr i64 %i.hvo, 63
  %i.hvq = add nuw i64 %i.hvp, %i.hvn             ; 2 uses
  %.not986.i = icmp eq i64 %i.huz, 0
  %i.hvr = select i1 %.not986.i, i64 8, i64 9
  %i.hvs = add i64 %i.hvr, %i.huz
  %i.hvt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hvq, i1 true) ; 3 uses
  %i.hvu = trunc nuw nsw i64 %i.hvt to i32
  %i.hvv = shl i64 %i.hvq, %i.hvt                 ; 3 uses
  %i.hvw = add nsw i32 %.pre-phi5036, 64
  %i.hvx = add nuw nsw i32 %.pre-phi5040, %i.hvu
  %i.hvy = sub nsw i32 %i.hvw, %i.hvx             ; 7 uses
  %i.hvz = shl i64 %i.hvs, %i.hvt                 ; 3 uses
  %i.hwa = icmp sgt i32 %i.hvy, -1086
  br i1 %i.hwa, label %.thread3309, label %bb.aqt, !prof !62

bb.aqt:                                           ; preds = %.critedge992.i
  %i.hwb = icmp samesign ult i32 %i.hvy, -1137
  br i1 %i.hwb, label %.thread3306, label %bb.aqu

bb.aqu:                                           ; preds = %bb.aqt
  %i.hwc = sub nuw nsw i32 -1074, %i.hvy          ; 2 uses
  %i.hwd = icmp samesign ult i32 %i.hvy, -1134
  br i1 %i.hwd, label %.thread3306, label %.thread3309, !prof !129

.thread3306:                                      ; preds = %bb.aqt, %bb.aqu
  %.0897.i3308 = phi i32 [ %i.hwc, %bb.aqu ], [ 64, %bb.aqt ]
  %i.hwe = add nsw i32 %.0897.i3308, -60          ; 2 uses
  %i.hwf = zext nneg i32 %i.hwe to i64            ; 2 uses
  %i.hwg = lshr i64 %i.hvv, %i.hwf
  %i.hwh = add nsw i32 %i.hwe, %i.hvy
  %i.hwi = lshr i64 %i.hvz, %i.hwf
  %i.hwj = add nuw i64 %i.hwi, 9
  br label %.thread3309

.thread3309:                                      ; preds = %.critedge992.i, %.thread3306, %bb.aqu
  %.0898.i = phi i64 [ %i.hwj, %.thread3306 ], [ %i.hvz, %bb.aqu ], [ %i.hvz, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread3306 ], [ %i.hwc, %bb.aqu ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.hwh, %.thread3306 ], [ %i.hvy, %bb.aqu ], [ %i.hvy, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.hwg, %.thread3306 ], [ %i.hvv, %bb.aqu ], [ %i.hvv, %.critedge992.i ] ; 2 uses
  %i.hwk = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.hwk
  %i.hwl = xor i64 %notmask.i, -1
  %i.hwm = and i64 %.sroa.025.0.i, %i.hwl
  %i.hwn = shl nuw nsw i64 %i.hwm, 3              ; 2 uses
  %i.hwo = add nsw i32 %.0896.i, -1
  %i.hwp = zext nneg i32 %i.hwo to i64
  %i.hwq = shl nuw nsw i64 8, %i.hwp              ; 2 uses
  %i.hwr = lshr i64 %.sroa.025.0.i, %i.hwk
  %i.hws = add i64 %i.hwq, %.0898.i
  %i.hwt = icmp uge i64 %i.hwn, %i.hws            ; 2 uses
  %i.hwu = zext i1 %i.hwt to i64
  %i.hwv = add nuw nsw i64 %i.hwr, %i.hwu         ; 3 uses
  %i.hww = icmp eq i64 %i.hwv, 0
  br i1 %i.hww, label %bb.are, label %bb.aqv, !prof !45

bb.aqv:                                           ; preds = %.thread3309
  %i.hwx = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.hwy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.hwv, i1 true) ; 2 uses
  %i.hwz = trunc nuw nsw i64 %i.hwy to i32
  %i.hxa = shl i64 %i.hwv, %i.hwy
  %i.hxb = lshr i64 %i.hxa, 11                    ; 2 uses
  %i.hxc = sub nsw i32 %i.hwx, %i.hwz             ; 5 uses
  %i.hxd = icmp sgt i32 %i.hxc, 960
  br i1 %i.hxd, label %diy_fp_to_ieee_raw.exit1501, label %bb.aqw, !prof !45

bb.aqw:                                           ; preds = %bb.aqv
  %i.hxe = icmp sgt i32 %i.hxc, -1086
  br i1 %i.hxe, label %bb.aqx, label %bb.aqy, !prof !62

bb.aqx:                                           ; preds = %bb.aqw
  %i.hxf = add nsw i32 %i.hxc, 1086
  %i.hxg = zext nneg i32 %i.hxf to i64
  %i.hxh = shl nuw nsw i64 %i.hxg, 52
  %i.hxi = and i64 %i.hxb, 4503599627370495
  %i.hxj = or disjoint i64 %i.hxh, %i.hxi
  br label %bb.are

bb.aqy:                                           ; preds = %bb.aqw
  %i.hxk = icmp samesign ugt i32 %i.hxc, -1138
  br i1 %i.hxk, label %bb.aqz, label %bb.are, !prof !62

bb.aqz:                                           ; preds = %bb.aqy
  %i.hxl = sub nuw nsw i32 -1085, %i.hxc
  %i.hxm = zext nneg i32 %i.hxl to i64
  %i.hxn = lshr i64 %i.hxb, %i.hxm
  br label %bb.are

diy_fp_to_ieee_raw.exit1501:                      ; preds = %bb.aqv
  %i.hxo = and i32 %.fr, 128
  %.not3392 = icmp eq i32 %i.hxo, 0
  br i1 %.not3392, label %bb.arb, label %bb.ara, !prof !62

bb.ara:                                           ; preds = %diy_fp_to_ieee_raw.exit1501
  %i.hxp = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.hxp, align 1, !tbaa !100
  %i.hxq = ptrtoint ptr %.33.i to i64
  %i.hxr = ptrtoint ptr %i.gqq to i64
  %i.hxs = sub i64 %i.hxq, %i.hxr
  %i.hxt = shl i64 %i.hxs, 8
  %i.hxu = or disjoint i64 %i.hxt, 1
  store i64 %i.hxu, ptr %i.gqu, align 8, !tbaa !99
  %i.hxv = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store ptr %i.gqq, ptr %i.hxv, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.g, align 8, !tbaa !107
  br label %read_num.exit.thread3326

bb.arb:                                           ; preds = %diy_fp_to_ieee_raw.exit1501
  %i.hxw = and i32 %.fr, 16
  %.not3393 = icmp eq i32 %i.hxw, 0
  br i1 %.not3393, label %bb.ard, label %bb.arc, !prof !62

bb.arc:                                           ; preds = %bb.arb
  store i64 20, ptr %i.gqu, align 8, !tbaa !99
  %i.hxx = select i1 %i.gqx, i64 -4503599627370496, i64 9218868437227405312
  %i.hxy = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hxx, ptr %i.hxy, align 8, !tbaa !100
  br label %read_num.exit.thread3326

bb.ard:                                           ; preds = %bb.arb
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit

bb.are:                                           ; preds = %.thread3309, %bb.aqx, %bb.aqz, %bb.aqy
  %.0.i1500.ph = phi i64 [ 0, %bb.aqy ], [ %i.hxn, %bb.aqz ], [ %i.hxj, %bb.aqx ], [ 0, %.thread3309 ] ; 7 uses
  %i.hxz = sub i64 %i.hwq, %.0898.i
  %.not987.i = icmp ule i64 %i.hwn, %i.hxz
  %spec.select.i = or i1 %.not987.i, %i.hwt
  br i1 %spec.select.i, label %bb.arf, label %bb.arg, !prof !62

bb.arf:                                           ; preds = %bb.are
  store i64 20, ptr %i.gqu, align 8, !tbaa !99
  %i.hya = select i1 %i.gqx, i64 -9223372036854775808, i64 0
  %i.hyb = or disjoint i64 %.0.i1500.ph, %i.hya
  %i.hyc = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hyb, ptr %i.hyc, align 8, !tbaa !100
  br label %read_num.exit.thread3326

bb.arg:                                           ; preds = %bb.are
end_hunk_8
begin_hunk_9_@write_f64_raw:bb.a
bb.u:                                             ; preds = %bb.m
  %i.di = udiv i64 %i.w, 100000000                ; 5 uses
  %.neg.i = mul nuw nsw i64 %i.di, 4194967296
  %i.dj = add nuw nsw i64 %.neg.i, %i.w           ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = trunc nuw nsw i64 %i.di to i32          ; 4 uses
  %i.dm = icmp samesign ult i64 %i.w, 10000000000
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = icmp samesign ult i64 %i.w, 1000000000  ; 2 uses
  %i.do = shl nuw nsw i64 %i.di, 1
  %i.dp = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.do
  %.neg70.i.i = sext i1 %i.dn to i64
  %i.dq = zext i1 %i.dn to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 1
  store i16 %i.ds, ptr %i.m, align 1
  %i.dt = getelementptr inbounds i8, ptr %i.m, i64 %.neg70.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  br label %write_u32_len_1_to_8.exit.i

bb.w:                                             ; preds = %bb.u
  %i.dv = icmp samesign ult i64 %i.w, 1000000000000
  br i1 %i.dv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dw = mul nuw nsw i32 %i.dl, 5243
  %i.dx = lshr i32 %i.dw, 19                      ; 2 uses
  %.neg68.i.i = mul nsw i32 %i.dx, -100
  %i.dy = add nsw i32 %.neg68.i.i, %i.dl
  %i.dz = icmp samesign ult i64 %i.w, 100000000000 ; 2 uses
  %i.ea = shl nuw nsw i32 %i.dx, 1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eb
  %.neg69.i.i = sext i1 %i.dz to i64
  %i.ed = zext i1 %i.dz to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 1
  store i16 %i.ef, ptr %i.m, align 1
  %i.eg = getelementptr inbounds i8, ptr %i.m, i64 %.neg69.i.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ei = shl nsw i32 %i.dy, 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2
  store i16 %i.el, ptr %i.eh, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  br label %write_u32_len_1_to_8.exit.i

bb.y:                                             ; preds = %bb.w
  %i.en = icmp samesign ult i64 %i.w, 100000000000000
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = mul nuw nsw i64 %i.di, 429497
  %i.ep = lshr i64 %i.eo, 32                      ; 2 uses
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %.neg65.i.i = mul nsw i32 %i.eq, -10000
  %i.er = add nsw i32 %.neg65.i.i, %i.dl          ; 2 uses
  %i.es = mul i32 %i.er, 5243
  %i.et = lshr i32 %i.es, 19                      ; 2 uses
  %.neg66.i.i = mul nsw i32 %i.et, -100
  %i.eu = add nsw i32 %.neg66.i.i, %i.er
  %i.ev = icmp samesign ult i64 %i.w, 10000000000000 ; 2 uses
  %i.ew = shl nuw nsw i64 %i.ep, 1
  %i.ex = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ew
  %.neg67.i.i = sext i1 %i.ev to i64
  %i.ey = zext i1 %i.ev to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 1
  store i16 %i.fa, ptr %i.m, align 1
  %i.fb = getelementptr inbounds i8, ptr %i.m, i64 %.neg67.i.i ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fd = shl nuw nsw i32 %i.et, 1
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fc, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fi = shl nsw i32 %i.eu, 1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2
  store i16 %i.fl, ptr %i.fh, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 6
  br label %write_u32_len_1_to_8.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.fn = mul nuw nsw i64 %i.di, 109951163
  %i.fo = lshr i64 %i.fn, 40
  %i.fp = trunc nuw nsw i64 %i.fo to i32          ; 3 uses
  %.neg.i.i = mul nsw i32 %i.fp, -10000
  %i.fq = add nsw i32 %.neg.i.i, %i.dl            ; 2 uses
  %i.fr = mul nuw nsw i32 %i.fp, 5243
  %i.fs = lshr i32 %i.fr, 19                      ; 2 uses
  %i.ft = mul i32 %i.fq, 5243
  %i.fu = lshr i32 %i.ft, 19                      ; 2 uses
  %.neg62.i.i = mul nsw i32 %i.fs, -100
  %i.fv = add nsw i32 %.neg62.i.i, %i.fp
  %.neg63.i.i = mul i32 %i.fu, 2147483548
  %i.fw = add i32 %.neg63.i.i, %i.fq
  %i.fx = icmp samesign ult i64 %i.w, 1000000000000000 ; 2 uses
  %i.fy = shl nuw nsw i32 %i.fs, 1
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.fz
  %.neg64.i.i = sext i1 %i.fx to i64
  %i.gb = zext i1 %i.fx to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 1
  store i16 %i.gd, ptr %i.m, align 1
  %i.ge = getelementptr inbounds i8, ptr %i.m, i64 %.neg64.i.i ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gg = shl nsw i32 %i.fv, 1
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2
  store i16 %i.gj, ptr %i.gf, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gl = shl nuw nsw i32 %i.fu, 1
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2
  store i16 %i.go, ptr %i.gk, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 6
  %i.gq = shl i32 %i.fw, 1
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2
  store i16 %i.gt, ptr %i.gp, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  br label %write_u32_len_1_to_8.exit.i

write_u32_len_1_to_8.exit.i:                      ; preds = %bb.aa, %bb.z, %bb.x, %bb.v
  %.0.i.i = phi ptr [ %i.du, %bb.v ], [ %i.em, %bb.x ], [ %i.fm, %bb.z ], [ %i.gu, %bb.aa ] ; 5 uses
  %i.gv = and i64 %i.dj, 4294967295
  %i.gw = mul nuw nsw i64 %i.gv, 109951163
  %i.gx = lshr i64 %i.gw, 40
  %i.gy = trunc nuw nsw i64 %i.gx to i32          ; 3 uses
  %.neg.i25.i = mul i32 %i.gy, -10000
  %i.gz = add i32 %.neg.i25.i, %i.dk              ; 2 uses
  %i.ha = mul nuw i32 %i.gy, 5243
  %i.hb = lshr i32 %i.ha, 19                      ; 2 uses
  %i.hc = mul i32 %i.gz, 5243
  %i.hd = lshr i32 %i.hc, 19                      ; 2 uses
  %.neg17.i.i = mul nsw i32 %i.hb, -100
  %i.he = add nsw i32 %.neg17.i.i, %i.gy
  %.neg18.i.i = mul i32 %i.hd, 2147483548
  %i.hf = add i32 %.neg18.i.i, %i.gz
  %i.hg = shl nuw nsw i32 %i.hb, 1
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2
  store i16 %i.hj, ptr %.0.i.i, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.hl = shl nsw i32 %i.he, 1
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2
  store i16 %i.ho, ptr %i.hk, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.hq = shl nuw nsw i32 %i.hd, 1
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  store i16 %i.ht, ptr %i.hp, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6
  %i.hv = shl i32 %i.hf, 1
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2
  store i16 %i.hy, ptr %i.hu, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  br label %write_u64_len_1_to_16.exit

write_u64_len_1_to_16.exit:                       ; preds = %bb.o, %bb.q, %bb.s, %bb.t, %write_u32_len_1_to_8.exit.i
  %.0.i101 = phi ptr [ %i.hz, %write_u32_len_1_to_8.exit.i ], [ %i.ah, %bb.o ], [ %i.az, %bb.q ], [ %i.bz, %bb.s ], [ %i.dh, %bb.t ] ; 2 uses
  store i16 12334, ptr %.0.i101, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i101, i64 2
  br label %write_inf_or_nan.exit

bb.ab:                                            ; preds = %bb.l, %bb.k
  %.not.i103 = icmp eq i64 %i.a, 0                ; 2 uses
  %.pre = mul nsw i32 %i.q, 315653                ; 2 uses
  br i1 %.not.i103, label %._crit_edge, label %bb.ac, !prof !45

bb.ac:                                            ; preds = %bb.ab
  %i.ib = ashr i32 %.pre, 20                      ; 3 uses
  %i.ic = mul nsw i32 %i.ib, -217707
  %i.id = ashr i32 %i.ic, 16
  %i.ie = add nsw i32 %i.id, %i.q                 ; 2 uses
  %.neg204 = mul nsw i32 %i.ib, -2
  %i.if = sext i32 %.neg204 to i64
  %i.ig = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 5488
  %i.ii = load i64, ptr %i.ih, align 16, !tbaa !106 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ig, i64 5496
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !106
  %i.il = add nsw i32 %i.ie, 1
  %i.im = zext nneg i32 %i.il to i64
  %i.in = shl i64 %i.p, %i.im                     ; 2 uses
  %i.io = zext i64 %i.in to i128
  %3 = tail call i64 @llvm.umulh.i64(i64 %i.in, i64 %i.ik)
  %4 = zext i64 %3 to i128
  %i.ip = zext i64 %i.ii to i128
  %i.iq = mul nuw i128 %i.ip, %i.io
  %i.ir = add nuw i128 %i.iq, %4                  ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = trunc nuw i128 %i.is to i64             ; 2 uses
  %i.iu = trunc i128 %i.ir to i64                 ; 3 uses
  %i.iv = urem i64 %i.it, 10                      ; 3 uses
  %i.iw = sub i64 %i.it, %i.iv
  %i.ix = tail call i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iu, i64 60) ; 3 uses
  %i.iy = sub nsw i32 4, %i.ie
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = lshr i64 %i.ii, %i.iz                   ; 3 uses
  %i.jb = icmp eq i64 %i.iu, -9223372036854775808
  br i1 %i.jb, label %._crit_edge, label %bb.ad, !prof !45

bb.ad:                                            ; preds = %bb.ac
  %.not93.i104 = icmp ult i64 %i.ja, %i.ix
  %i.jc = icmp eq i64 %i.ja, %i.ix
  br i1 %i.jc, label %._crit_edge, label %bb.ae, !prof !45

bb.ae:                                            ; preds = %bb.ad
  %i.jd = add i64 %i.ix, %i.ja                    ; 2 uses
  %i.je = add i64 %i.jd, 6917529027641081857
  %i.jf = icmp ult i64 %i.je, 2
  br i1 %i.jf, label %._crit_edge, label %.critedge.i105, !prof !45

.critedge.i105:                                   ; preds = %bb.ae
  %i.jg = icmp ugt i64 %i.jd, -6917529027641081857
  %.lobit.i106 = lshr i64 %i.iu, 63
  %i.jh = add nuw nsw i64 %i.iv, %.lobit.i106
  %i.ji = select i1 %.not93.i104, i64 %i.jh, i64 0
  %i.jj = select i1 %i.jg, i64 10, i64 %i.ji
  %i.jk = add i64 %i.iw, %i.jj
  br label %f64_bin_to_dec.exit110

._crit_edge:                                      ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %i.jl = icmp ne i32 %i.d, 1
  %i.jm = and i1 %.not.i103, %i.jl                ; 2 uses
  %i.jn = shl nuw nsw i64 %i.p, 2                 ; 3 uses
  %i.jo = add nsw i64 %i.jn, -2
  %i.jp = zext i1 %i.jm to i64
  %i.jq = or disjoint i64 %i.jo, %i.jp
  %i.jr = or disjoint i64 %i.jn, 2
  %.neg.i107 = select i1 %i.jm, i32 -131237, i32 0
  %i.js = add nsw i32 %.neg.i107, %.pre
  %i.jt = ashr i32 %i.js, 20                      ; 4 uses
  %i.ju = mul nsw i32 %i.jt, -217707
  %i.jv = ashr i32 %i.ju, 16
  %i.jw = add nsw i32 %i.d, -1074
  %i.jx = add nsw i32 %i.jw, %i.jv
  %.neg205 = mul nsw i32 %i.jt, -2
  %i.jy = sext i32 %.neg205 to i64
  %i.jz = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.jy ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 5488
  %i.kb = load i64, ptr %i.ka, align 16, !tbaa !106
  %i.kc = getelementptr i8, ptr %i.jz, i64 5496
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !106
  %i.ke = add i64 %i.kd, 1                        ; 3 uses
  %i.kf = zext i32 %i.jx to i64                   ; 3 uses
  %i.kg = shl i64 %i.jq, %i.kf                    ; 2 uses
  %i.kh = zext i64 %i.kg to i128
  %5 = tail call i64 @llvm.umulh.i64(i64 %i.kg, i64 %i.ke)
  %6 = zext i64 %5 to i128
  %i.ki = zext i64 %i.kb to i128                  ; 3 uses
  %i.kj = mul nuw i128 %i.ki, %i.kh
  %i.kk = add nuw i128 %i.kj, %6                  ; 2 uses
  %i.kl = lshr i128 %i.kk, 64
  %i.km = trunc nuw i128 %i.kl to i64
  %i.kn = and i128 %i.kk, 18446744073709551614
  %i.ko = icmp ne i128 %i.kn, 0
  %i.kp = zext i1 %i.ko to i64
  %i.kq = or i64 %i.kp, %i.km
  %i.kr = shl i64 %i.jn, %i.kf                    ; 2 uses
  %i.ks = zext i64 %i.kr to i128
  %7 = tail call i64 @llvm.umulh.i64(i64 %i.kr, i64 %i.ke)
  %8 = zext i64 %7 to i128
  %i.kt = mul nuw i128 %i.ki, %i.ks
  %i.ku = add nuw i128 %i.kt, %8                  ; 2 uses
  %i.kv = lshr i128 %i.ku, 64
  %i.kw = trunc nuw i128 %i.kv to i64             ; 5 uses
  %i.kx = and i128 %i.ku, 18446744073709551614
  %i.ky = icmp ne i128 %i.kx, 0
  %i.kz = zext i1 %i.ky to i64
  %i.la = or i64 %i.kz, %i.kw                     ; 2 uses
  %i.lb = shl i64 %i.jr, %i.kf                    ; 2 uses
  %i.lc = zext i64 %i.lb to i128
  %9 = tail call i64 @llvm.umulh.i64(i64 %i.lb, i64 %i.ke)
  %10 = zext i64 %9 to i128
  %i.ld = mul nuw i128 %i.ki, %i.lc
  %i.le = add nuw i128 %i.ld, %10                 ; 2 uses
  %i.lf = lshr i128 %i.le, 64
  %i.lg = trunc nuw i128 %i.lf to i64
  %i.lh = and i128 %i.le, 18446744073709551614
  %i.li = icmp ne i128 %i.lh, 0
  %i.lj = zext i1 %i.li to i64
  %i.lk = or i64 %i.lj, %i.lg
  %i.ll = and i64 %1, 1                           ; 2 uses
  %i.lm = add i64 %i.kq, %i.ll                    ; 2 uses
  %i.ln = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.lo = lshr i64 %i.kw, 2                       ; 2 uses
  %i.lp = icmp ugt i64 %i.kw, 39
  br i1 %i.lp, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  %i.lq = udiv i64 %i.kw, 40                      ; 2 uses
  %i.lr = mul nuw i64 %i.lq, 40                   ; 2 uses
  %i.ls = add i64 %i.lr, 40
  %i.lt = icmp uge i64 %i.ln, %i.ls               ; 2 uses
  %i.lu = icmp ugt i64 %i.lm, %i.lr
  %.not94.i109 = xor i1 %i.lu, %i.lt
  br i1 %.not94.i109, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lv = mul nuw nsw i64 %i.lq, 10
  %i.lw = select i1 %i.lt, i64 10, i64 0
  %i.lx = add nuw nsw i64 %i.lw, %i.lv
  br label %f64_bin_to_dec.exit110

bb.ah:                                            ; preds = %bb.af, %._crit_edge
  %i.ly = and i64 %i.kw, -4                       ; 3 uses
  %i.lz = add i64 %i.ly, 4
  %i.ma = icmp uge i64 %i.ln, %i.lz               ; 2 uses
  %i.mb = or disjoint i64 %i.ly, 2                ; 2 uses
  %i.mc = icmp ugt i64 %i.la, %i.mb
  %i.md = icmp eq i64 %i.la, %i.mb
  %i.me = trunc i64 %i.lo to i1
  %i.mf = and i1 %i.md, %i.me
  %narrow = or i1 %i.mc, %i.mf
  %i.mg = icmp ugt i64 %i.lm, %i.ly
  %.not95.i108 = xor i1 %i.mg, %i.ma
  %.v = select i1 %.not95.i108, i1 %narrow, i1 %i.ma
  %i.mh = zext i1 %.v to i64
  %i.mi = add nuw nsw i64 %i.lo, %i.mh
  br label %f64_bin_to_dec.exit110

f64_bin_to_dec.exit110:                           ; preds = %.critedge.i105, %bb.ag, %bb.ah
  %.1203 = phi i64 [ %i.mi, %bb.ah ], [ %i.lx, %bb.ag ], [ %i.jk, %.critedge.i105 ] ; 5 uses
  %.1 = phi i32 [ %i.jt, %bb.ah ], [ %i.jt, %bb.ag ], [ %i.ib, %.critedge.i105 ]
  %i.mj = icmp ugt i64 %.1203, 9999999999999999
  %i.mk = select i1 %i.mj, i32 17, i32 16
  %i.ml = add nsw i32 %i.mk, %.1                  ; 8 uses
  %i.mm = add nsw i32 %i.ml, 5
  %or.cond3 = icmp ult i32 %i.mm, 27
  br i1 %or.cond3, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %f64_bin_to_dec.exit110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, i8 48, i64 32, i1 false)
  %i.mn = icmp sgt i32 %i.ml, 0                   ; 2 uses
  %i.mo = sub nsw i32 2, %i.ml
  %i.mp = select i1 %i.mn, i32 0, i32 %i.mo
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds i8, ptr %i.m, i64 %i.mq ; 3 uses
  %i.ms = udiv i64 %.1203, 100000000              ; 2 uses
  %i.mt = trunc i64 %i.ms to i32                  ; 2 uses
  %.neg.i113 = mul i64 %i.ms, 4194967296
  %i.mu = add i64 %.neg.i113, %.1203              ; 2 uses
  %i.mv = trunc i64 %i.mu to i32                  ; 2 uses
  %i.mw = udiv i32 %i.mt, 10000                   ; 3 uses
  %.neg86.i114 = mul i32 %i.mw, -10000
  %i.mx = add i32 %.neg86.i114, %i.mt             ; 5 uses
  %i.my = zext nneg i32 %i.mw to i64
  %i.mz = mul nuw nsw i64 %i.my, 167773
  %i.na = lshr i64 %i.mz, 24
  %i.nb = trunc nuw nsw i64 %i.na to i32          ; 3 uses
  %i.nc = mul nuw nsw i32 %i.nb, 41
  %i.nd = lshr i32 %i.nc, 12                      ; 3 uses
  %.neg87.i115 = mul nsw i32 %i.nd, -100
  %i.ne = add nsw i32 %.neg87.i115, %i.nb         ; 2 uses
  %.neg88.i116 = mul nsw i32 %i.nb, -100
  %i.nf = add nsw i32 %.neg88.i116, %i.mw         ; 3 uses
  %i.ng = trunc nuw nsw i32 %i.nd to i8
  %i.nh = add nuw nsw i8 %i.ng, 48
  store i8 %i.nh, ptr %i.mr, align 1, !tbaa !100
  %i.ni = icmp ne i32 %i.nd, 0
  %i.nj = zext i1 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.nj ; 11 uses
  %i.nl = shl nsw i32 %i.ne, 1
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.nm
  %i.no = load i16, ptr %i.nn, align 2
  store i16 %i.no, ptr %i.nk, align 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 2
  %i.nq = shl nsw i32 %i.nf, 1
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.nr
  %i.nt = load i16, ptr %i.ns, align 2
  store i16 %i.nt, ptr %i.np, align 1
  %.not.i117 = icmp eq i32 %i.mv, 0
  br i1 %.not.i117, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.nu = mul i32 %i.mx, 5243
  %i.nv = lshr i32 %i.nu, 19                      ; 2 uses
  %.neg94.i118 = mul i32 %i.nv, 2147483548
  %i.nw = add i32 %.neg94.i118, %i.mx
  %i.nx = and i64 %i.mu, 4294967295
  %i.ny = mul nuw nsw i64 %i.nx, 109951163
  %i.nz = lshr i64 %i.ny, 40
  %i.oa = trunc nuw nsw i64 %i.nz to i32          ; 3 uses
  %.neg95.i119 = mul i32 %i.oa, -10000
  %i.ob = add i32 %.neg95.i119, %i.mv             ; 3 uses
  %i.oc = mul nuw i32 %i.oa, 5243
  %i.od = lshr i32 %i.oc, 19                      ; 3 uses
  %.neg96.i120 = mul nsw i32 %i.od, -100
  %i.oe = add nsw i32 %.neg96.i120, %i.oa         ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.og = shl nuw nsw i32 %i.nv, 1
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.oh
  %i.oj = load i16, ptr %i.oi, align 2
  store i16 %i.oj, ptr %i.of, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nk, i64 6
  %i.ol = shl i32 %i.nw, 1
  %i.om = zext i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.om
  %i.oo = load i16, ptr %i.on, align 2
  store i16 %i.oo, ptr %i.ok, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.oq = shl nuw nsw i32 %i.od, 1
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.or
  %i.ot = load i16, ptr %i.os, align 2
  store i16 %i.ot, ptr %i.op, align 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nk, i64 10
  %i.ov = shl nsw i32 %i.oe, 1
  %i.ow = zext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2
  store i16 %i.oy, ptr %i.ou, align 1
  %.not97.i121 = icmp eq i32 %i.ob, 0
  br i1 %.not97.i121, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.oz = mul i32 %i.ob, 5243
  %i.pa = lshr i32 %i.oz, 19                      ; 3 uses
  %.neg100.i122 = mul nsw i32 %i.pa, -100
  %i.pb = add i32 %.neg100.i122, %i.ob            ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  %i.pd = shl nuw nsw i32 %i.pa, 1
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.pe
  %i.pg = load i16, ptr %i.pf, align 2
  store i16 %i.pg, ptr %i.pc, align 1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nk, i64 14
  %i.pi = shl nuw i32 %i.pb, 1
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.pj
  %i.pl = load i16, ptr %i.pk, align 2
  store i16 %i.pl, ptr %i.ph, align 1
  %i.pm = zext nneg i32 %i.pa to i64
  %i.pn = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !100
  %i.pp = zext i8 %i.po to i64
  %i.pq = zext i32 %i.pb to i64
  %i.pr = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !100
  %i.pt = zext i8 %i.ps to i64
  %.not101.i123 = icmp eq i32 %i.pb, 0
  %i.pu = add nuw nsw i64 %i.pp, 2
  %i.pv = select i1 %.not101.i123, i64 %i.pu, i64 %i.pt
  br label %write_u64_len_16_to_17_trim.exit130

bb.al:                                            ; preds = %bb.aj
  %i.pw = zext nneg i32 %i.od to i64
  %i.px = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !100
  %i.pz = zext i8 %i.py to i64
  %i.qa = zext i32 %i.oe to i64
  %i.qb = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !100
  %i.qd = zext i8 %i.qc to i64
  %.not98.i125 = icmp eq i32 %i.oe, 0
  %i.qe = add nuw nsw i64 %i.pz, 2
  %i.qf = select i1 %.not98.i125, i64 %i.qe, i64 %i.qd
  br label %write_u64_len_16_to_17_trim.exit130

bb.am:                                            ; preds = %bb.ai
  %.not89.i126 = icmp eq i32 %i.mx, 0
  br i1 %.not89.i126, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qg = mul i32 %i.mx, 5243
  %i.qh = lshr i32 %i.qg, 19                      ; 3 uses
  %.neg91.i127 = mul nsw i32 %i.qh, -100
  %i.qi = add i32 %.neg91.i127, %i.mx             ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.qk = shl nuw nsw i32 %i.qh, 1
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ql
  %i.qn = load i16, ptr %i.qm, align 2
end_hunk_9
begin_hunk_10_@write_f64_raw_fixed:bb.a
  %i.dm = trunc nuw nsw i64 %i.dj to i32          ; 4 uses
  %i.dn = icmp samesign ult i64 %i.x, 10000000000
  br i1 %i.dn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.do = icmp samesign ult i64 %i.x, 1000000000  ; 2 uses
  %i.dp = shl nuw nsw i64 %i.dj, 1
  %i.dq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.dp
  %.neg70.i.i = sext i1 %i.do to i64
  %i.dr = zext i1 %i.do to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 1
  store i16 %i.dt, ptr %i.m, align 1
  %i.du = getelementptr inbounds i8, ptr %i.m, i64 %.neg70.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  br label %write_u32_len_1_to_8.exit.i

bb.w:                                             ; preds = %bb.u
  %i.dw = icmp samesign ult i64 %i.x, 1000000000000
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dx = mul nuw nsw i32 %i.dm, 5243
  %i.dy = lshr i32 %i.dx, 19                      ; 2 uses
  %.neg68.i.i = mul nsw i32 %i.dy, -100
  %i.dz = add nsw i32 %.neg68.i.i, %i.dm
  %i.ea = icmp samesign ult i64 %i.x, 100000000000 ; 2 uses
  %i.eb = shl nuw nsw i32 %i.dy, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ec
  %.neg69.i.i = sext i1 %i.ea to i64
  %i.ee = zext i1 %i.ea to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 1
  store i16 %i.eg, ptr %i.m, align 1
  %i.eh = getelementptr inbounds i8, ptr %i.m, i64 %.neg69.i.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ej = shl nsw i32 %i.dz, 1
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2
  store i16 %i.em, ptr %i.ei, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  br label %write_u32_len_1_to_8.exit.i

bb.y:                                             ; preds = %bb.w
  %i.eo = icmp samesign ult i64 %i.x, 100000000000000
  br i1 %i.eo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ep = mul nuw nsw i64 %i.dj, 429497
  %i.eq = lshr i64 %i.ep, 32                      ; 2 uses
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %.neg65.i.i = mul nsw i32 %i.er, -10000
  %i.es = add nsw i32 %.neg65.i.i, %i.dm          ; 2 uses
  %i.et = mul i32 %i.es, 5243
  %i.eu = lshr i32 %i.et, 19                      ; 2 uses
  %.neg66.i.i = mul nsw i32 %i.eu, -100
  %i.ev = add nsw i32 %.neg66.i.i, %i.es
  %i.ew = icmp samesign ult i64 %i.x, 10000000000000 ; 2 uses
  %i.ex = shl nuw nsw i64 %i.eq, 1
  %i.ey = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ex
  %.neg67.i.i = sext i1 %i.ew to i64
  %i.ez = zext i1 %i.ew to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 1
  store i16 %i.fb, ptr %i.m, align 1
  %i.fc = getelementptr inbounds i8, ptr %i.m, i64 %.neg67.i.i ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fe = shl nuw nsw i32 %i.eu, 1
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2
  store i16 %i.fh, ptr %i.fd, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fj = shl nsw i32 %i.ev, 1
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2
  store i16 %i.fm, ptr %i.fi, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 6
  br label %write_u32_len_1_to_8.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.fo = mul nuw nsw i64 %i.dj, 109951163
  %i.fp = lshr i64 %i.fo, 40
  %i.fq = trunc nuw nsw i64 %i.fp to i32          ; 3 uses
  %.neg.i.i = mul nsw i32 %i.fq, -10000
  %i.fr = add nsw i32 %.neg.i.i, %i.dm            ; 2 uses
  %i.fs = mul nuw nsw i32 %i.fq, 5243
  %i.ft = lshr i32 %i.fs, 19                      ; 2 uses
  %i.fu = mul i32 %i.fr, 5243
  %i.fv = lshr i32 %i.fu, 19                      ; 2 uses
  %.neg62.i.i = mul nsw i32 %i.ft, -100
  %i.fw = add nsw i32 %.neg62.i.i, %i.fq
  %.neg63.i.i = mul i32 %i.fv, 2147483548
  %i.fx = add i32 %.neg63.i.i, %i.fr
  %i.fy = icmp samesign ult i64 %i.x, 1000000000000000 ; 2 uses
  %i.fz = shl nuw nsw i32 %i.ft, 1
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ga
  %.neg64.i.i = sext i1 %i.fy to i64
  %i.gc = zext i1 %i.fy to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 1
  store i16 %i.ge, ptr %i.m, align 1
  %i.gf = getelementptr inbounds i8, ptr %i.m, i64 %.neg64.i.i ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gh = shl nsw i32 %i.fw, 1
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2
  store i16 %i.gk, ptr %i.gg, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gm = shl nuw nsw i32 %i.fv, 1
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2
  store i16 %i.gp, ptr %i.gl, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 6
  %i.gr = shl i32 %i.fx, 1
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.gs
  %i.gu = load i16, ptr %i.gt, align 2
  store i16 %i.gu, ptr %i.gq, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  br label %write_u32_len_1_to_8.exit.i

write_u32_len_1_to_8.exit.i:                      ; preds = %bb.aa, %bb.z, %bb.x, %bb.v
  %.0.i.i = phi ptr [ %i.dv, %bb.v ], [ %i.en, %bb.x ], [ %i.fn, %bb.z ], [ %i.gv, %bb.aa ] ; 5 uses
  %i.gw = and i64 %i.dk, 4294967295
  %i.gx = mul nuw nsw i64 %i.gw, 109951163
  %i.gy = lshr i64 %i.gx, 40
  %i.gz = trunc nuw nsw i64 %i.gy to i32          ; 3 uses
  %.neg.i25.i = mul i32 %i.gz, -10000
  %i.ha = add i32 %.neg.i25.i, %i.dl              ; 2 uses
  %i.hb = mul nuw i32 %i.gz, 5243
  %i.hc = lshr i32 %i.hb, 19                      ; 2 uses
  %i.hd = mul i32 %i.ha, 5243
  %i.he = lshr i32 %i.hd, 19                      ; 2 uses
  %.neg17.i.i = mul nsw i32 %i.hc, -100
  %i.hf = add nsw i32 %.neg17.i.i, %i.gz
  %.neg18.i.i = mul i32 %i.he, 2147483548
  %i.hg = add i32 %.neg18.i.i, %i.ha
  %i.hh = shl nuw nsw i32 %i.hc, 1
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2
  store i16 %i.hk, ptr %.0.i.i, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.hm = shl nsw i32 %i.hf, 1
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2
  store i16 %i.hp, ptr %i.hl, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.hr = shl nuw nsw i32 %i.he, 1
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.hs
  %i.hu = load i16, ptr %i.ht, align 2
  store i16 %i.hu, ptr %i.hq, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6
  %i.hw = shl i32 %i.hg, 1
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2
  store i16 %i.hz, ptr %i.hv, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  br label %write_u64_len_1_to_16.exit

write_u64_len_1_to_16.exit:                       ; preds = %bb.o, %bb.q, %bb.s, %bb.t, %write_u32_len_1_to_8.exit.i
  %.0.i118 = phi ptr [ %i.ia, %write_u32_len_1_to_8.exit.i ], [ %i.ai, %bb.o ], [ %i.ba, %bb.q ], [ %i.ca, %bb.s ], [ %i.di, %bb.t ] ; 2 uses
  store i16 12334, ptr %.0.i118, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i118, i64 2
  br label %write_inf_or_nan.exit

bb.ab:                                            ; preds = %bb.l, %bb.k
  %i.ic = icmp ult i64 %i.n, -8604630897724629344
  %i.id = icmp eq i64 %i.a, 0                     ; 3 uses
  br i1 %i.ic, label %bb.ac, label %bb.bc

bb.ac:                                            ; preds = %bb.ab
  %i.ie = icmp ne i32 %i.d, 1
  %i.if = and i1 %i.id, %i.ie                     ; 2 uses
  %i.ig = mul nsw i32 %i.r, 315653
  %.neg.i140 = select i1 %i.if, i32 -131237, i32 0
  %i.ih = add nsw i32 %.neg.i140, %i.ig
  %i.ii = ashr i32 %i.ih, 20                      ; 6 uses
  %i.ij = mul nsw i32 %i.ii, -217707
  %i.ik = ashr i32 %i.ij, 16
  %.neg219 = mul nsw i32 %i.ii, -2
  %i.il = sext i32 %.neg219 to i64
  %i.im = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.il ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 5488
  %i.io = load i64, ptr %i.in, align 16, !tbaa !106
  %i.ip = getelementptr i8, ptr %i.im, i64 5496
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !106
  %i.ir = add nsw i32 %i.d, -1074
  %i.is = add nsw i32 %i.ir, %i.ik
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = shl i64 %i.q, %i.it                     ; 2 uses
  %i.iv = zext i64 %i.iu to i128
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.iu, i64 %i.iq)
  %5 = zext i64 %4 to i128
  %i.iw = zext i64 %i.io to i128
  %i.ix = mul nuw i128 %i.iw, %i.iv
  %i.iy = add nuw i128 %i.ix, %5                  ; 2 uses
  %i.iz = lshr i128 %i.iy, 64
  %i.ja = trunc nuw i128 %i.iz to i64
  %i.jb = trunc i128 %i.iy to i64
  %i.jc = select i1 %i.if, i64 6148914691236517205, i64 -9223372036854775808
  %i.jd = icmp ule i64 %i.jc, %i.jb               ; 2 uses
  %i.je = zext i1 %i.jd to i64
  %i.jf = add nuw i64 %i.je, %i.ja                ; 4 uses
  %i.jg = icmp ugt i64 %i.jf, 9999999999999999
  %i.jh = select i1 %i.jg, i32 17, i32 16         ; 3 uses
  %i.ji = icmp slt i32 %i.ii, -1
  br i1 %i.ji, label %bb.ad, label %.thread190

bb.ad:                                            ; preds = %bb.ac
  %i.jj = add nsw i32 %i.ii, %3                   ; 3 uses
  %i.jk = sub nsw i32 0, %i.jj                    ; 2 uses
  %i.jl = icmp slt i32 %i.jh, %i.jk
  br i1 %i.jl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 3157552, ptr %i.m, align 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  br label %write_inf_or_nan.exit

bb.af:                                            ; preds = %bb.ad
  %i.jn = icmp slt i32 %i.jj, 0
  br i1 %i.jn, label %bb.ag, label %.thread190

bb.ag:                                            ; preds = %bb.af
  %.neg220 = sext i1 %i.jd to i64
  %i.jo = add i64 %i.jf, %.neg220                 ; 3 uses
  %i.jp = icmp ugt i64 %i.jo, 9999999999999999
  %i.jq = select i1 %i.jp, i32 17, i32 16
  %i.jr = zext nneg i32 %i.jk to i64
  %i.js = getelementptr inbounds nuw [24 x i8], ptr @div_pow10_table, i64 %i.jr ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.js, align 8, !tbaa !106 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !106
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !119
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.js, i64 20
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !119
  %i.jt = zext nneg i32 %.sroa.6.0.copyload.i to i64
  %i.ju = lshr i64 %i.jo, %i.jt
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.ju, i64 %.sroa.5.0.copyload.i)
  %i.jv = zext nneg i32 %.sroa.7.0.copyload.i to i64
  %i.jw = lshr i64 %6, %i.jv                      ; 2 uses
  %i.jx = mul i64 %i.jw, %.sroa.0.0.copyload.i
  %i.jy = sub i64 %i.jo, %i.jx
  %i.jz = lshr i64 %.sroa.0.0.copyload.i, 1
  %i.ka = icmp uge i64 %i.jy, %i.jz
  %i.kb = zext i1 %i.ka to i64
  %i.kc = add nuw i64 %i.jw, %i.kb                ; 2 uses
  %i.kd = sub nsw i32 0, %3
  %i.ke = add nsw i32 %i.jq, %i.jj                ; 3 uses
  %i.kf = icmp sgt i32 %i.ke, -1
  br i1 %i.kf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kg = zext nneg i32 %i.ke to i64
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr @div_pow10_table, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !360
  %i.kj = icmp uge i64 %i.kc, %i.ki
  %i.kk = zext i1 %i.kj to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.kl = phi i32 [ 0, %bb.ag ], [ %i.kk, %bb.ah ]
  %i.km = add nsw i32 %i.kl, %i.ke                ; 2 uses
  %i.kn = icmp slt i32 %i.km, 1
  br i1 %i.kn, label %bb.aj, label %.thread190

bb.aj:                                            ; preds = %bb.ai
  store i32 3157552, ptr %i.m, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  br label %write_inf_or_nan.exit

.thread190:                                       ; preds = %bb.af, %bb.ai, %bb.ac
  %.2185 = phi i64 [ %i.jf, %bb.ac ], [ %i.kc, %bb.ai ], [ %i.jf, %bb.af ] ; 25 uses
  %.2182 = phi i32 [ %i.ii, %bb.ac ], [ %i.kd, %bb.ai ], [ %i.ii, %bb.af ] ; 2 uses
  %.2 = phi i32 [ %i.jh, %bb.ac ], [ %i.km, %bb.ai ], [ %i.jh, %bb.af ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, i8 48, i64 32, i1 false)
  %i.kp = add nsw i32 %.2, %.2182                 ; 4 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  %i.kr = sub nsw i32 1, %i.kp
  %i.ks = select i1 %i.kq, i32 0, i32 %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds i8, ptr %i.m, i64 %i.kt ; 21 uses
  %i.kv = icmp ugt i64 %.2185, 999999999999999
  br i1 %i.kv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread190
  %i.kw = udiv i64 %.2185, 100000000              ; 2 uses
  %.neg29.i = mul i64 %i.kw, 4194967296
  %i.kx = add i64 %.neg29.i, %.2185               ; 2 uses
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = udiv i64 %.2185, 10000000000000000      ; 2 uses
  %.neg30.i = mul nuw nsw i64 %i.kz, 4194967296
  %i.la = add nuw nsw i64 %.neg30.i, %i.kw        ; 2 uses
  %i.lb = trunc i64 %i.la to i32
  %i.lc = trunc i64 %i.kz to i8
  %i.ld = add i8 %i.lc, 48
  store i8 %i.ld, ptr %i.ku, align 1, !tbaa !100
  %i.le = icmp ugt i64 %.2185, 9999999999999999
  %i.lf = zext i1 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lf ; 9 uses
  %i.lh = and i64 %i.la, 4294967295
  %i.li = mul nuw nsw i64 %i.lh, 109951163
  %i.lj = lshr i64 %i.li, 40
  %i.lk = trunc nuw nsw i64 %i.lj to i32          ; 3 uses
  %.neg.i47.i = mul i32 %i.lk, -10000
  %i.ll = add i32 %.neg.i47.i, %i.lb              ; 2 uses
  %i.lm = mul nuw i32 %i.lk, 5243
  %i.ln = lshr i32 %i.lm, 19                      ; 2 uses
  %i.lo = mul i32 %i.ll, 5243
  %i.lp = lshr i32 %i.lo, 19                      ; 2 uses
  %.neg17.i48.i = mul nsw i32 %i.ln, -100
  %i.lq = add nsw i32 %.neg17.i48.i, %i.lk
  %.neg18.i49.i = mul i32 %i.lp, 2147483548
  %i.lr = add i32 %.neg18.i49.i, %i.ll
  %i.ls = shl nuw nsw i32 %i.ln, 1
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.lt
  %i.lv = load i16, ptr %i.lu, align 2
  store i16 %i.lv, ptr %i.lg, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.lx = shl nsw i32 %i.lq, 1
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2
  store i16 %i.ma, ptr %i.lw, align 1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.mc = shl nuw nsw i32 %i.lp, 1
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2
  store i16 %i.mf, ptr %i.mb, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lg, i64 6
  %i.mh = shl i32 %i.lr, 1
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.mi
  %i.mk = load i16, ptr %i.mj, align 2
  store i16 %i.mk, ptr %i.mg, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.mm = and i64 %i.kx, 4294967295
  %i.mn = mul nuw nsw i64 %i.mm, 109951163
  %i.mo = lshr i64 %i.mn, 40
  %i.mp = trunc nuw nsw i64 %i.mo to i32          ; 3 uses
  %.neg.i44.i = mul i32 %i.mp, -10000
  %i.mq = add i32 %.neg.i44.i, %i.ky              ; 2 uses
  %i.mr = mul nuw i32 %i.mp, 5243
  %i.ms = lshr i32 %i.mr, 19                      ; 2 uses
  %i.mt = mul i32 %i.mq, 5243
  %i.mu = lshr i32 %i.mt, 19                      ; 2 uses
  %.neg17.i45.i = mul nsw i32 %i.ms, -100
  %i.mv = add nsw i32 %.neg17.i45.i, %i.mp
  %.neg18.i46.i = mul i32 %i.mu, 2147483548
  %i.mw = add i32 %.neg18.i46.i, %i.mq
  %i.mx = shl nuw nsw i32 %i.ms, 1
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2
  store i16 %i.na, ptr %i.ml, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lg, i64 10
  %i.nc = shl nsw i32 %i.mv, 1
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.nd
  %i.nf = load i16, ptr %i.ne, align 2
  store i16 %i.nf, ptr %i.nb, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.nh = shl nuw nsw i32 %i.mu, 1
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ni
  %i.nk = load i16, ptr %i.nj, align 2
  store i16 %i.nk, ptr %i.ng, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lg, i64 14
  %i.nm = shl i32 %i.mw, 1
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.nn
  %i.np = load i16, ptr %i.no, align 2
  store i16 %i.np, ptr %i.nl, align 1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  br label %write_u64_len_1_to_17.exit

bb.al:                                            ; preds = %.thread190
  %i.nr = icmp samesign ugt i64 %.2185, 99999999
  br i1 %i.nr, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.ns = udiv i64 %.2185, 100000000              ; 5 uses
  %.neg.i137 = mul nuw nsw i64 %i.ns, 4194967296
  %i.nt = add nuw nsw i64 %.neg.i137, %.2185      ; 2 uses
  %i.nu = trunc i64 %i.nt to i32
  %i.nv = trunc nuw nsw i64 %i.ns to i32          ; 4 uses
  %i.nw = icmp samesign ult i64 %.2185, 10000000000
  br i1 %i.nw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nx = icmp samesign ult i64 %.2185, 1000000000 ; 2 uses
  %i.ny = shl nuw nsw i64 %i.ns, 1
  %i.nz = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ny
  %.neg70.i41.i = sext i1 %i.nx to i64
  %i.oa = zext i1 %i.nx to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.oa
  %i.oc = load i16, ptr %i.ob, align 1
  store i16 %i.oc, ptr %i.ku, align 1
  %i.od = getelementptr inbounds i8, ptr %i.ku, i64 %.neg70.i41.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  br label %write_u32_len_1_to_8.exit42.i

bb.ao:                                            ; preds = %bb.am
  %i.of = icmp samesign ult i64 %.2185, 1000000000000
  br i1 %i.of, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.og = mul nuw nsw i32 %i.nv, 5243
  %i.oh = lshr i32 %i.og, 19                      ; 2 uses
  %.neg68.i39.i = mul nsw i32 %i.oh, -100
  %i.oi = add nsw i32 %.neg68.i39.i, %i.nv
  %i.oj = icmp samesign ult i64 %.2185, 100000000000 ; 2 uses
  %i.ok = shl nuw nsw i32 %i.oh, 1
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ol
  %.neg69.i40.i = sext i1 %i.oj to i64
  %i.on = zext i1 %i.oj to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.on
  %i.op = load i16, ptr %i.oo, align 1
  store i16 %i.op, ptr %i.ku, align 1
  %i.oq = getelementptr inbounds i8, ptr %i.ku, i64 %.neg69.i40.i ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 2
  %i.os = shl nsw i32 %i.oi, 1
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ot
  %i.ov = load i16, ptr %i.ou, align 2
  store i16 %i.ov, ptr %i.or, align 1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  br label %write_u32_len_1_to_8.exit42.i

bb.aq:                                            ; preds = %bb.ao
  %i.ox = icmp samesign ult i64 %.2185, 100000000000000
  br i1 %i.ox, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.oy = mul nuw nsw i64 %i.ns, 429497
  %i.oz = lshr i64 %i.oy, 32                      ; 2 uses
  %i.pa = trunc nuw nsw i64 %i.oz to i32
  %.neg65.i36.i = mul nsw i32 %i.pa, -10000
end_hunk_10
begin_hunk_11_@write_f64_raw_fixed:bb.a
  store i16 %i.sa, ptr %i.rw, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.i35.i, i64 6
  %i.sc = shl i32 %i.rm, 1
  %i.sd = zext i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.sd
  %i.sf = load i16, ptr %i.se, align 2
  store i16 %i.sf, ptr %i.sb, align 1
  %i.sg = getelementptr inbounds nuw i8, ptr %.0.i35.i, i64 8
  br label %write_u64_len_1_to_17.exit

bb.at:                                            ; preds = %bb.al
  %i.sh = trunc nuw nsw i64 %.2185 to i32         ; 4 uses
  %i.si = icmp samesign ult i64 %.2185, 100
  br i1 %i.si, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.sj = icmp samesign ult i64 %.2185, 10        ; 2 uses
  %i.sk = shl nuw nsw i64 %.2185, 1
  %i.sl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.sk
  %.neg70.i.i136 = sext i1 %i.sj to i64
  %i.sm = zext i1 %i.sj to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sm
  %i.so = load i16, ptr %i.sn, align 1
  store i16 %i.so, ptr %i.ku, align 1
  %i.sp = getelementptr inbounds i8, ptr %i.ku, i64 %.neg70.i.i136
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 2
  br label %write_u64_len_1_to_17.exit

bb.av:                                            ; preds = %bb.at
  %i.sr = icmp samesign ult i64 %.2185, 10000
  br i1 %i.sr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ss = mul nuw nsw i32 %i.sh, 5243
  %i.st = lshr i32 %i.ss, 19                      ; 2 uses
  %.neg68.i.i134 = mul nsw i32 %i.st, -100
  %i.su = add nsw i32 %.neg68.i.i134, %i.sh
  %i.sv = icmp samesign ult i64 %.2185, 1000      ; 2 uses
  %i.sw = shl nuw nsw i32 %i.st, 1
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.sx
  %.neg69.i.i135 = sext i1 %i.sv to i64
  %i.sz = zext i1 %i.sv to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sz
  %i.tb = load i16, ptr %i.ta, align 1
  store i16 %i.tb, ptr %i.ku, align 1
  %i.tc = getelementptr inbounds i8, ptr %i.ku, i64 %.neg69.i.i135 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 2
  %i.te = shl nsw i32 %i.su, 1
  %i.tf = zext i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tf
  %i.th = load i16, ptr %i.tg, align 2
  store i16 %i.th, ptr %i.td, align 1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  br label %write_u64_len_1_to_17.exit

bb.ax:                                            ; preds = %bb.av
  %i.tj = icmp samesign ult i64 %.2185, 1000000
  br i1 %i.tj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.tk = mul nuw nsw i64 %.2185, 429497
  %i.tl = lshr i64 %i.tk, 32                      ; 2 uses
  %i.tm = trunc nuw nsw i64 %i.tl to i32
  %.neg65.i.i131 = mul nsw i32 %i.tm, -10000
  %i.tn = add nsw i32 %.neg65.i.i131, %i.sh       ; 2 uses
  %i.to = mul i32 %i.tn, 5243
  %i.tp = lshr i32 %i.to, 19                      ; 2 uses
  %.neg66.i.i132 = mul nsw i32 %i.tp, -100
  %i.tq = add nsw i32 %.neg66.i.i132, %i.tn
  %i.tr = icmp samesign ult i64 %.2185, 100000    ; 2 uses
  %i.ts = shl nuw nsw i64 %i.tl, 1
  %i.tt = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ts
  %.neg67.i.i133 = sext i1 %i.tr to i64
  %i.tu = zext i1 %i.tr to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tu
  %i.tw = load i16, ptr %i.tv, align 1
  store i16 %i.tw, ptr %i.ku, align 1
  %i.tx = getelementptr inbounds i8, ptr %i.ku, i64 %.neg67.i.i133 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 2
  %i.tz = shl nuw nsw i32 %i.tp, 1
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ua
  %i.uc = load i16, ptr %i.ub, align 2
  store i16 %i.uc, ptr %i.ty, align 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 4
  %i.ue = shl nsw i32 %i.tq, 1
  %i.uf = zext i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.uf
  %i.uh = load i16, ptr %i.ug, align 2
  store i16 %i.uh, ptr %i.ud, align 1
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tx, i64 6
  br label %write_u64_len_1_to_17.exit

bb.az:                                            ; preds = %bb.ax
  %i.uj = mul nuw nsw i64 %.2185, 109951163
  %i.uk = lshr i64 %i.uj, 40
  %i.ul = trunc nuw nsw i64 %i.uk to i32          ; 3 uses
  %.neg.i.i124 = mul nsw i32 %i.ul, -10000
  %i.um = add nsw i32 %.neg.i.i124, %i.sh         ; 2 uses
  %i.un = mul nuw nsw i32 %i.ul, 5243
  %i.uo = lshr i32 %i.un, 19                      ; 2 uses
  %i.up = mul i32 %i.um, 5243
  %i.uq = lshr i32 %i.up, 19                      ; 2 uses
  %.neg62.i.i125 = mul nsw i32 %i.uo, -100
  %i.ur = add nsw i32 %.neg62.i.i125, %i.ul
  %.neg63.i.i126 = mul i32 %i.uq, 2147483548
  %i.us = add i32 %.neg63.i.i126, %i.um
  %i.ut = icmp samesign ult i64 %.2185, 10000000  ; 2 uses
  %i.uu = shl nuw nsw i32 %i.uo, 1
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.uv
  %.neg64.i.i127 = sext i1 %i.ut to i64
  %i.ux = zext i1 %i.ut to i64
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.ux
  %i.uz = load i16, ptr %i.uy, align 1
  store i16 %i.uz, ptr %i.ku, align 1
  %i.va = getelementptr inbounds i8, ptr %i.ku, i64 %.neg64.i.i127 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  %i.vc = shl nsw i32 %i.ur, 1
  %i.vd = zext i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.vd
  %i.vf = load i16, ptr %i.ve, align 2
  store i16 %i.vf, ptr %i.vb, align 1
  %i.vg = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vh = shl nuw nsw i32 %i.uq, 1
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.vi
  %i.vk = load i16, ptr %i.vj, align 2
  store i16 %i.vk, ptr %i.vg, align 1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.va, i64 6
  %i.vm = shl i32 %i.us, 1
  %i.vn = zext i32 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.vn
  %i.vp = load i16, ptr %i.vo, align 2
  store i16 %i.vp, ptr %i.vl, align 1
  %i.vq = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  br label %write_u64_len_1_to_17.exit

write_u64_len_1_to_17.exit:                       ; preds = %bb.au, %bb.aw, %bb.ay, %bb.az, %bb.ak, %write_u32_len_1_to_8.exit42.i
  %.0.i130 = phi ptr [ %i.nq, %bb.ak ], [ %i.sg, %write_u32_len_1_to_8.exit42.i ], [ %i.sq, %bb.au ], [ %i.ti, %bb.aw ], [ %i.ui, %bb.ay ], [ %i.vq, %bb.az ]
  %i.vr = tail call i32 @llvm.abs.i32(i32 %i.kp, i1 true)
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.vs ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  %i.vv = load <2 x i64>, ptr %i.vt, align 1
  store <2 x i64> %i.vv, ptr %i.vu, align 1
  %.lobit115 = lshr i32 %.2182, 31
  %i.vw = zext nneg i32 %.lobit115 to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %.0.i130, i64 %i.vw ; 2 uses
  %i.vy = tail call i32 @llvm.smax.i32(i32 %i.kp, i32 1)
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.vz ; 2 uses
  store i8 46, ptr %i.wa, align 1, !tbaa !100
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 2 ; 2 uses
  %i.wc = icmp ugt ptr %i.wb, %i.vx
  %i.wd = select i1 %i.wc, ptr %i.wb, ptr %i.vx   ; 2 uses
  %i.we = getelementptr inbounds i8, ptr %i.wd, i64 -1
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !100
  %i.wg = icmp eq i8 %i.wf, 48
  %.neg116 = sext i1 %i.wg to i64
  %i.wh = getelementptr inbounds i8, ptr %i.wd, i64 %.neg116 ; 2 uses
  %i.wi = getelementptr inbounds i8, ptr %i.wh, i64 -1
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !100
  %i.wk = icmp eq i8 %i.wj, 48
  %.neg117 = sext i1 %i.wk to i64
  %i.wl = getelementptr inbounds i8, ptr %i.wh, i64 %.neg117
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %write_u64_len_1_to_17.exit
  %.0103 = phi ptr [ %i.wl, %write_u64_len_1_to_17.exit ], [ %i.wm, %bb.ba ] ; 2 uses
  %i.wm = getelementptr inbounds i8, ptr %.0103, i64 -1 ; 2 uses
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !100 ; 2 uses
  %i.wo = icmp eq i8 %i.wn, 48
  br i1 %i.wo, label %bb.ba, label %bb.bb, !llvm.loop !358

bb.bb:                                            ; preds = %bb.ba
  %i.wp = icmp eq i8 %i.wn, 46
  %i.wq = zext i1 %i.wp to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %.0103, i64 %i.wq
  br label %write_inf_or_nan.exit

bb.bc:                                            ; preds = %bb.ab
  %.pre = mul nsw i32 %i.r, 315653                ; 2 uses
  br i1 %i.id, label %._crit_edge, label %bb.bd, !prof !45

bb.bd:                                            ; preds = %bb.bc
  %i.ws = ashr i32 %.pre, 20                      ; 3 uses
  %i.wt = mul nsw i32 %i.ws, -217707
  %i.wu = ashr i32 %i.wt, 16
  %i.wv = add nsw i32 %i.wu, %i.r                 ; 2 uses
  %.neg196 = mul nsw i32 %i.ws, -2
  %i.ww = sext i32 %.neg196 to i64
  %i.wx = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.ww ; 2 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 5488
  %i.wz = load i64, ptr %i.wy, align 16, !tbaa !106 ; 2 uses
  %i.xa = getelementptr i8, ptr %i.wx, i64 5496
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !106
  %i.xc = add nsw i32 %i.wv, 1
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = shl i64 %i.q, %i.xd                     ; 2 uses
  %i.xf = zext i64 %i.xe to i128
  %7 = tail call i64 @llvm.umulh.i64(i64 %i.xe, i64 %i.xb)
  %8 = zext i64 %7 to i128
  %i.xg = zext i64 %i.wz to i128
  %i.xh = mul nuw i128 %i.xg, %i.xf
  %i.xi = add nuw i128 %i.xh, %8                  ; 2 uses
  %i.xj = lshr i128 %i.xi, 64
  %i.xk = trunc nuw i128 %i.xj to i64             ; 2 uses
  %i.xl = trunc i128 %i.xi to i64                 ; 3 uses
  %i.xm = urem i64 %i.xk, 10                      ; 3 uses
  %i.xn = sub i64 %i.xk, %i.xm
  %i.xo = tail call i64 @llvm.fshl.i64(i64 %i.xm, i64 %i.xl, i64 60) ; 3 uses
  %i.xp = sub nsw i32 4, %i.wv
  %i.xq = zext nneg i32 %i.xp to i64
  %i.xr = lshr i64 %i.wz, %i.xq                   ; 3 uses
  %i.xs = icmp eq i64 %i.xl, -9223372036854775808
  br i1 %i.xs, label %._crit_edge, label %bb.be, !prof !45

bb.be:                                            ; preds = %bb.bd
  %.not93.i = icmp ult i64 %i.xr, %i.xo
  %i.xt = icmp eq i64 %i.xr, %i.xo
  br i1 %i.xt, label %._crit_edge, label %bb.bf, !prof !45

bb.bf:                                            ; preds = %bb.be
  %i.xu = add i64 %i.xo, %i.xr                    ; 2 uses
  %i.xv = add i64 %i.xu, 6917529027641081857
  %i.xw = icmp ult i64 %i.xv, 2
  br i1 %i.xw, label %._crit_edge, label %.critedge.i, !prof !45

.critedge.i:                                      ; preds = %bb.bf
  %i.xx = icmp ugt i64 %i.xu, -6917529027641081857
  %.lobit.i = lshr i64 %i.xl, 63
  %i.xy = add nuw nsw i64 %i.xm, %.lobit.i
  %i.xz = select i1 %.not93.i, i64 %i.xy, i64 0
  %i.ya = select i1 %i.xx, i64 10, i64 %i.xz
  %i.yb = add i64 %i.xn, %i.ya
  br label %f64_bin_to_dec.exit

._crit_edge:                                      ; preds = %bb.bc, %bb.bd, %bb.be, %bb.bf
  %i.yc = icmp ne i32 %i.d, 1
  %i.yd = and i1 %i.id, %i.yc                     ; 2 uses
  %i.ye = shl nuw nsw i64 %i.q, 2                 ; 3 uses
  %i.yf = add nsw i64 %i.ye, -2
  %i.yg = zext i1 %i.yd to i64
  %i.yh = or disjoint i64 %i.yf, %i.yg
  %i.yi = or disjoint i64 %i.ye, 2
  %.neg.i119 = select i1 %i.yd, i32 -131237, i32 0
  %i.yj = add nsw i32 %.neg.i119, %.pre
  %i.yk = ashr i32 %i.yj, 20                      ; 4 uses
  %i.yl = mul nsw i32 %i.yk, -217707
  %i.ym = ashr i32 %i.yl, 16
  %i.yn = add nsw i32 %i.d, -1074
  %i.yo = add nsw i32 %i.yn, %i.ym
  %.neg197 = mul nsw i32 %i.yk, -2
  %i.yp = sext i32 %.neg197 to i64
  %i.yq = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.yp ; 2 uses
  %i.yr = getelementptr i8, ptr %i.yq, i64 5488
  %i.ys = load i64, ptr %i.yr, align 16, !tbaa !106
  %i.yt = getelementptr i8, ptr %i.yq, i64 5496
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !106
  %i.yv = add i64 %i.yu, 1                        ; 3 uses
  %i.yw = zext i32 %i.yo to i64                   ; 3 uses
  %i.yx = shl i64 %i.yh, %i.yw                    ; 2 uses
  %i.yy = zext i64 %i.yx to i128
  %9 = tail call i64 @llvm.umulh.i64(i64 %i.yx, i64 %i.yv)
  %10 = zext i64 %9 to i128
  %i.yz = zext i64 %i.ys to i128                  ; 3 uses
  %i.za = mul nuw i128 %i.yz, %i.yy
  %i.zb = add nuw i128 %i.za, %10                 ; 2 uses
  %i.zc = lshr i128 %i.zb, 64
  %i.zd = trunc nuw i128 %i.zc to i64
  %i.ze = and i128 %i.zb, 18446744073709551614
  %i.zf = icmp ne i128 %i.ze, 0
  %i.zg = zext i1 %i.zf to i64
  %i.zh = or i64 %i.zg, %i.zd
  %i.zi = shl i64 %i.ye, %i.yw                    ; 2 uses
  %i.zj = zext i64 %i.zi to i128
  %11 = tail call i64 @llvm.umulh.i64(i64 %i.zi, i64 %i.yv)
  %12 = zext i64 %11 to i128
  %i.zk = mul nuw i128 %i.yz, %i.zj
  %i.zl = add nuw i128 %i.zk, %12                 ; 2 uses
  %i.zm = lshr i128 %i.zl, 64
  %i.zn = trunc nuw i128 %i.zm to i64             ; 5 uses
  %i.zo = and i128 %i.zl, 18446744073709551614
  %i.zp = icmp ne i128 %i.zo, 0
  %i.zq = zext i1 %i.zp to i64
  %i.zr = or i64 %i.zq, %i.zn                     ; 2 uses
  %i.zs = shl i64 %i.yi, %i.yw                    ; 2 uses
  %i.zt = zext i64 %i.zs to i128
  %13 = tail call i64 @llvm.umulh.i64(i64 %i.zs, i64 %i.yv)
  %14 = zext i64 %13 to i128
  %i.zu = mul nuw i128 %i.yz, %i.zt
  %i.zv = add nuw i128 %i.zu, %14                 ; 2 uses
  %i.zw = lshr i128 %i.zv, 64
  %i.zx = trunc nuw i128 %i.zw to i64
  %i.zy = and i128 %i.zv, 18446744073709551614
  %i.zz = icmp ne i128 %i.zy, 0
  %i.aaa = zext i1 %i.zz to i64
  %i.aab = or i64 %i.aaa, %i.zx
  %i.aac = and i64 %1, 1                          ; 2 uses
  %i.aad = add i64 %i.zh, %i.aac                  ; 2 uses
  %i.aae = sub i64 %i.aab, %i.aac                 ; 2 uses
  %i.aaf = lshr i64 %i.zn, 2                      ; 2 uses
  %i.aag = icmp ugt i64 %i.zn, 39
  br i1 %i.aag, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %._crit_edge
  %i.aah = udiv i64 %i.zn, 40                     ; 2 uses
  %i.aai = mul nuw i64 %i.aah, 40                 ; 2 uses
  %i.aaj = add i64 %i.aai, 40
  %i.aak = icmp uge i64 %i.aae, %i.aaj            ; 2 uses
  %i.aal = icmp ugt i64 %i.aad, %i.aai
  %.not94.i = xor i1 %i.aal, %i.aak
  br i1 %.not94.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.aam = mul nuw nsw i64 %i.aah, 10
  %i.aan = select i1 %i.aak, i64 10, i64 0
  %i.aao = add nuw nsw i64 %i.aan, %i.aam
  br label %f64_bin_to_dec.exit

bb.bi:                                            ; preds = %bb.bg, %._crit_edge
  %i.aap = and i64 %i.zn, -4                      ; 3 uses
  %i.aaq = add i64 %i.aap, 4
  %i.aar = icmp uge i64 %i.aae, %i.aaq            ; 2 uses
  %i.aas = or disjoint i64 %i.aap, 2              ; 2 uses
  %i.aat = icmp ugt i64 %i.zr, %i.aas
  %i.aau = icmp eq i64 %i.zr, %i.aas
  %i.aav = trunc i64 %i.aaf to i1
  %i.aaw = and i1 %i.aau, %i.aav
  %narrow = or i1 %i.aat, %i.aaw
  %i.aax = icmp ugt i64 %i.aad, %i.aap
  %.not95.i = xor i1 %i.aax, %i.aar
  %.v = select i1 %.not95.i, i1 %narrow, i1 %i.aar
  %i.aay = zext i1 %.v to i64
  %i.aaz = add nuw nsw i64 %i.aaf, %i.aay
  br label %f64_bin_to_dec.exit

f64_bin_to_dec.exit:                              ; preds = %.critedge.i, %bb.bh, %bb.bi
  %.3186 = phi i64 [ %i.aaz, %bb.bi ], [ %i.aao, %bb.bh ], [ %i.yb, %.critedge.i ] ; 3 uses
  %.3 = phi i32 [ %i.yk, %bb.bi ], [ %i.yk, %bb.bh ], [ %i.ws, %.critedge.i ]
  %i.aba = icmp ugt i64 %.3186, 9999999999999999
  %.ptr = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.abb = udiv i64 %.3186, 100000000             ; 2 uses
  %i.abc = trunc i64 %i.abb to i32                ; 2 uses
  %.neg.i120 = mul i64 %i.abb, 4194967296
  %i.abd = add i64 %.neg.i120, %.3186             ; 2 uses
  %i.abe = trunc i64 %i.abd to i32                ; 2 uses
  %i.abf = udiv i32 %i.abc, 10000                 ; 3 uses
  %.neg86.i = mul i32 %i.abf, -10000
  %i.abg = add i32 %.neg86.i, %i.abc              ; 5 uses
  %i.abh = zext nneg i32 %i.abf to i64
  %i.abi = mul nuw nsw i64 %i.abh, 167773
  %i.abj = lshr i64 %i.abi, 24
  %i.abk = trunc nuw nsw i64 %i.abj to i32        ; 3 uses
  %i.abl = mul nuw nsw i32 %i.abk, 41
  %i.abm = lshr i32 %i.abl, 12                    ; 3 uses
  %.neg87.i = mul nsw i32 %i.abm, -100
  %i.abn = add nsw i32 %.neg87.i, %i.abk          ; 2 uses
  %.neg88.i = mul nsw i32 %i.abk, -100
  %i.abo = add nsw i32 %.neg88.i, %i.abf          ; 3 uses
  %i.abp = trunc nuw nsw i32 %i.abm to i8
  %i.abq = add nuw nsw i8 %i.abp, 48
  store i8 %i.abq, ptr %.ptr, align 1, !tbaa !100
  %.not218 = icmp eq i32 %i.abm, 0                ; 2 uses
  %.add = select i1 %.not218, i64 1, i64 2        ; 4 uses
  %.ptr209 = getelementptr inbounds nuw i8, ptr %i.m, i64 %.add ; 10 uses
  %i.abr = shl nsw i32 %i.abn, 1
  %i.abs = zext i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.abs
  %i.abu = load i16, ptr %i.abt, align 2
  store i16 %i.abu, ptr %.ptr209, align 1
  %i.abv = getelementptr inbounds nuw i8, ptr %.ptr209, i64 2
  %i.abw = shl nsw i32 %i.abo, 1
  %i.abx = zext i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.abx
  %i.abz = load i16, ptr %i.aby, align 2
  store i16 %i.abz, ptr %i.abv, align 1
  %.not.i121 = icmp eq i32 %i.abe, 0
  br i1 %.not.i121, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %f64_bin_to_dec.exit
  %i.aca = mul i32 %i.abg, 5243
  %i.acb = lshr i32 %i.aca, 19                    ; 2 uses
  %.neg94.i = mul i32 %i.acb, 2147483548
  %i.acc = add i32 %.neg94.i, %i.abg
  %i.acd = and i64 %i.abd, 4294967295
  %i.ace = mul nuw nsw i64 %i.acd, 109951163
  %i.acf = lshr i64 %i.ace, 40
  %i.acg = trunc nuw nsw i64 %i.acf to i32        ; 3 uses
  %.neg95.i = mul i32 %i.acg, -10000
  %i.ach = add i32 %.neg95.i, %i.abe              ; 3 uses
  %i.aci = mul nuw i32 %i.acg, 5243
  %i.acj = lshr i32 %i.aci, 19                    ; 3 uses
  %.neg96.i = mul nsw i32 %i.acj, -100
  %i.ack = add nsw i32 %.neg96.i, %i.acg          ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.ptr209, i64 4
  %i.acm = shl nuw nsw i32 %i.acb, 1
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.acn
  %i.acp = load i16, ptr %i.aco, align 2
  store i16 %i.acp, ptr %i.acl, align 1
  %i.acq = getelementptr inbounds nuw i8, ptr %.ptr209, i64 6
  %i.acr = shl i32 %i.acc, 1
  %i.acs = zext i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.acs
  %i.acu = load i16, ptr %i.act, align 2
  store i16 %i.acu, ptr %i.acq, align 1
  %i.acv = getelementptr inbounds nuw i8, ptr %.ptr209, i64 8
  %i.acw = shl nuw nsw i32 %i.acj, 1
  %i.acx = zext nneg i32 %i.acw to i64
  %i.acy = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.acx
  %i.acz = load i16, ptr %i.acy, align 2
  store i16 %i.acz, ptr %i.acv, align 1
  %i.ada = getelementptr inbounds nuw i8, ptr %.ptr209, i64 10
  %i.adb = shl nsw i32 %i.ack, 1
  %i.adc = zext i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adc
  %i.ade = load i16, ptr %i.add, align 2
  store i16 %i.ade, ptr %i.ada, align 1
  %.not97.i = icmp eq i32 %i.ach, 0
  br i1 %.not97.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.adf = mul i32 %i.ach, 5243
  %i.adg = lshr i32 %i.adf, 19                    ; 3 uses
  %.neg100.i = mul nsw i32 %i.adg, -100
  %i.adh = add i32 %.neg100.i, %i.ach             ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.ptr209, i64 12
  %i.adj = shl nuw nsw i32 %i.adg, 1
  %i.adk = zext nneg i32 %i.adj to i64
  %i.adl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adk
  %i.adm = load i16, ptr %i.adl, align 2
  store i16 %i.adm, ptr %i.adi, align 1
  %i.adn = getelementptr inbounds nuw i8, ptr %.ptr209, i64 14
  %i.ado = shl nuw i32 %i.adh, 1
  %i.adp = zext i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adp
  %i.adr = load i16, ptr %i.adq, align 2
  store i16 %i.adr, ptr %i.adn, align 1
  %i.ads = zext nneg i32 %i.adg to i64
  %i.adt = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.ads
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !100
  %i.adv = zext i8 %i.adu to i64
  %i.adw = zext i32 %i.adh to i64
  %i.adx = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.adw
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !100
  %i.adz = zext i8 %i.ady to i64
  %.not101.i = icmp eq i32 %i.adh, 0
  %i.aea = add nuw nsw i64 %i.adv, 2
  %i.aeb = select i1 %.not101.i, i64 %i.aea, i64 %i.adz
  %.add203 = or disjoint i64 %.add, 16
  %.add204 = sub nsw i64 %.add203, %i.aeb
  br label %write_u64_len_16_to_17_trim.exit

bb.bl:                                            ; preds = %bb.bj
  %i.aec = zext nneg i32 %i.acj to i64
  %i.aed = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !100
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = zext i32 %i.ack to i64
  %i.aeh = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.aeg
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !100
  %i.aej = zext i8 %i.aei to i64
  %.not98.i = icmp eq i32 %i.ack, 0
  %i.aek = add nuw nsw i64 %i.aef, 2
  %i.ael = select i1 %.not98.i, i64 %i.aek, i64 %i.aej
  %.add201 = or disjoint i64 %.add, 12
  %.add202 = sub nsw i64 %.add201, %i.ael
  br label %write_u64_len_16_to_17_trim.exit

bb.bm:                                            ; preds = %f64_bin_to_dec.exit
  %.not89.i = icmp eq i32 %i.abg, 0
  br i1 %.not89.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.aem = mul i32 %i.abg, 5243
  %i.aen = lshr i32 %i.aem, 19                    ; 3 uses
  %.neg91.i = mul nsw i32 %i.aen, -100
  %i.aeo = add i32 %.neg91.i, %i.abg              ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.ptr209, i64 4
  %i.aeq = shl nuw nsw i32 %i.aen, 1
  %i.aer = zext nneg i32 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.aer
  %i.aet = load i16, ptr %i.aes, align 2
  store i16 %i.aet, ptr %i.aep, align 1
  %i.aeu = getelementptr inbounds nuw i8, ptr %.ptr209, i64 6
  %i.aev = shl nuw i32 %i.aeo, 1
  %i.aew = zext i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.aew
  %i.aey = load i16, ptr %i.aex, align 2
  store i16 %i.aey, ptr %i.aeu, align 1
  %i.aez = zext nneg i32 %i.aen to i64
end_hunk_11
begin_hunk_12_@bigint_set_buf:bb.a
.lr.ph107.preheader:                              ; preds = %bb.k
  %wide.trip.count177 = zext i32 %i.dr to i64
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.l
  %indvars.iv174 = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next175, %bb.l ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv174
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !106
  %.not.i82 = icmp eq i64 %i.dw, 0
  br i1 %.not.i82, label %bb.l, label %._crit_edge108.loopexit

bb.l:                                             ; preds = %.lr.ph107
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %bigint_mul_pow10.exit61, label %.lr.ph107, !llvm.loop !13

._crit_edge108.loopexit:                          ; preds = %.lr.ph107
  %i.dx = trunc nuw i64 %indvars.iv174 to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.k
  %.018.i78.lcssa = phi i32 [ 0, %bb.k ], [ %i.dx, %._crit_edge108.loopexit ] ; 2 uses
  %i.dy = icmp ult i32 %.018.i78.lcssa, %i.dr
  br i1 %i.dy, label %.lr.ph115, label %bigint_mul_pow10.exit61

.lr.ph115:                                        ; preds = %._crit_edge108
  %i.dz = zext i64 %i.du to i128                  ; 3 uses
  %i.ea = zext i32 %.018.i78.lcssa to i64         ; 4 uses
  %wide.trip.count182 = zext i32 %i.dr to i64     ; 2 uses
  %i.eb = sub nsw i64 %wide.trip.count182, %i.ea  ; 3 uses
  %xtraiter293 = and i64 %i.eb, 1
  %i.ec = add nsw i64 %wide.trip.count182, -1
  %i.ed = icmp eq i64 %i.ec, %i.ea
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph115.new

.lr.ph115.new:                                    ; preds = %.lr.ph115
  %unroll_iter298 = and i64 %i.eb, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph115.new
  %indvars.iv179 = phi i64 [ %i.ea, %.lr.ph115.new ], [ %indvars.iv.next180.1, %bb.m ] ; 3 uses
  %.0.i80113 = phi i64 [ 0, %.lr.ph115.new ], [ %i.et, %bb.m ]
  %niter299 = phi i64 [ 0, %.lr.ph115.new ], [ %niter299.next.1, %bb.m ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !106
  %i.eg = zext i64 %i.ef to i128
  %i.eh = mul nuw i128 %i.eg, %i.dz
  %i.ei = zext i64 %.0.i80113 to i128
  %i.ej = add nuw i128 %i.eh, %i.ei               ; 2 uses
  %i.ek = lshr i128 %i.ej, 64
  %i.el = trunc i128 %i.ej to i64
  store i64 %i.el, ptr %i.ee, align 8, !tbaa !106
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !106
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.dz
  %i.er = add nuw i128 %i.eq, %i.ek               ; 2 uses
  %i.es = lshr i128 %i.er, 64                     ; 2 uses
  %i.et = trunc nuw i128 %i.es to i64             ; 3 uses
  %i.eu = trunc i128 %i.er to i64
  store i64 %i.eu, ptr %i.en, align 8, !tbaa !106
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %._crit_edge116.unr-lcssa, label %bb.m, !llvm.loop !14

._crit_edge116.unr-lcssa:                         ; preds = %bb.m
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %._crit_edge116, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge116.unr-lcssa, %.lr.ph115
  %indvars.iv179.epil.init = phi i64 [ %i.ea, %.lr.ph115 ], [ %indvars.iv.next180.1, %._crit_edge116.unr-lcssa ]
  %.0.i80113.epil.init = phi i64 [ 0, %.lr.ph115 ], [ %i.et, %._crit_edge116.unr-lcssa ]
  %lcmp.mod297 = trunc i64 %i.eb to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179.epil.init ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !106
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.dz
  %i.ez = zext i64 %.0.i80113.epil.init to i128
  %i.fa = add nuw i128 %i.ey, %i.ez               ; 2 uses
  %i.fb = lshr i128 %i.fa, 64                     ; 2 uses
  %i.fc = trunc nuw i128 %i.fb to i64
  %i.fd = trunc i128 %i.fa to i64
  store i64 %i.fd, ptr %i.ev, align 8, !tbaa !106
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.unr-lcssa, %.epil.preheader
  %.lcssa282 = phi i128 [ %i.es, %._crit_edge116.unr-lcssa ], [ %i.fb, %.epil.preheader ]
  %.lcssa281 = phi i64 [ %i.et, %._crit_edge116.unr-lcssa ], [ %i.fc, %.epil.preheader ]
  %.not19.i81 = icmp eq i128 %.lcssa282, 0
  br i1 %.not19.i81, label %bigint_mul_pow10.exit61, label %bigint_mul_pow10.exit61.sink.split

bigint_mul_pow10.exit61.sink.split:               ; preds = %._crit_edge116, %._crit_edge129
  %.promoted131.sink257 = phi i32 [ %.promoted131, %._crit_edge129 ], [ %i.dr, %._crit_edge116 ] ; 2 uses
  %.lcssa250.sink = phi i64 [ %.lcssa284, %._crit_edge129 ], [ %.lcssa281, %._crit_edge116 ]
  %i.fe = add i32 %.promoted131.sink257, 1        ; 5 uses
  store i32 %i.fe, ptr %0, align 8, !tbaa !131
  %i.ff = zext i32 %.promoted131.sink257 to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ff
  store i64 %.lcssa250.sink, ptr %i.fg, align 8, !tbaa !106
  br label %bigint_mul_pow10.exit61

bigint_mul_pow10.exit61:                          ; preds = %bb.l, %bb.g, %bigint_mul_pow10.exit61.sink.split, %._crit_edge108, %._crit_edge121, %._crit_edge129, %.split51._crit_edge, %._crit_edge116
  %i.fh = phi i32 [ %i.dq, %.split51._crit_edge ], [ %i.dq, %._crit_edge116 ], [ %i.dq, %._crit_edge108 ], [ %i.z, %._crit_edge129 ], [ %i.z, %bb.g ], [ %i.fe, %bigint_mul_pow10.exit61.sink.split ], [ %i.z, %._crit_edge121 ], [ %i.dq, %bb.l ] ; 8 uses
  %.promoted131213 = phi i32 [ %.promoted131214, %.split51._crit_edge ], [ %.promoted131214, %._crit_edge116 ], [ %.promoted131214, %._crit_edge108 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fe, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %.promoted131214, %bb.l ]
  %i.fi = phi i32 [ %i.dr, %.split51._crit_edge ], [ %i.dr, %._crit_edge116 ], [ %i.dr, %._crit_edge108 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fe, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %i.dr, %bb.l ]
  %.promoted206 = phi i32 [ %.promoted207, %.split51._crit_edge ], [ %i.dr, %._crit_edge116 ], [ %i.dr, %._crit_edge108 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fe, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %i.dr, %bb.l ]
  %i.fj = load i64, ptr %i.x, align 8, !tbaa !106 ; 2 uses
  %i.fk = add i64 %i.fj, %.1                      ; 2 uses
  store i64 %i.fk, ptr %i.x, align 8, !tbaa !106
  %.not.i62 = icmp ult i64 %i.fk, %i.fj
  br i1 %.not.i62, label %bb.n, label %bigint_add_u64.exit, !prof !45

bb.n:                                             ; preds = %bigint_mul_pow10.exit61
  %i.fl = icmp ugt i32 %i.fh, 1
  %wide.trip.count203 = zext i32 %i.fh to i64     ; 2 uses
  br i1 %i.fl, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.n, %bb.p
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %bb.p ], [ 1, %bb.n ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv200 ; 3 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !106 ; 2 uses
  %.not21.i = icmp eq i64 %i.fn, -1
  br i1 %.not21.i, label %bb.p, label %bb.o, !prof !45

bb.o:                                             ; preds = %.lr.ph148
  %i.fo = add nuw i64 %i.fn, 1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !106
  br label %bigint_add_u64.exit

bb.p:                                             ; preds = %.lr.ph148
  store i64 0, ptr %i.fm, align 8, !tbaa !106
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge149, label %.lr.ph148, !llvm.loop !467

._crit_edge149:                                   ; preds = %bb.p, %bb.n
  %i.fp = add i32 %i.fh, 1                        ; 5 uses
  store i32 %i.fp, ptr %0, align 8, !tbaa !131
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %wide.trip.count203
  store i64 1, ptr %i.fq, align 8, !tbaa !106
  br label %bigint_add_u64.exit

bb.q:                                             ; preds = %.lr.ph154
  %i.fr = getelementptr inbounds nuw i8, ptr %.048150, i64 1
  br label %bigint_add_u64.exit

bigint_add_u64.exit:                              ; preds = %._crit_edge149, %bb.o, %bigint_mul_pow10.exit61, %bb.h, %bb.q
  %i.fs = phi i32 [ %i.z, %bb.q ], [ %i.z, %bb.h ], [ %i.fh, %bigint_mul_pow10.exit61 ], [ %i.fh, %bb.o ], [ %i.fp, %._crit_edge149 ]
  %.promoted131212 = phi i32 [ %.promoted131, %bb.q ], [ %.promoted131, %bb.h ], [ %.promoted131213, %bigint_mul_pow10.exit61 ], [ %i.fh, %bb.o ], [ %i.fp, %._crit_edge149 ]
  %i.ft = phi i32 [ %i.aa, %bb.q ], [ %i.aa, %bb.h ], [ %i.fi, %bigint_mul_pow10.exit61 ], [ %i.fh, %bb.o ], [ %i.fp, %._crit_edge149 ]
  %.promoted205 = phi i32 [ %.promoted, %bb.q ], [ %.promoted, %bb.h ], [ %.promoted206, %bigint_mul_pow10.exit61 ], [ %i.fh, %bb.o ], [ %i.fp, %._crit_edge149 ]
  %.149 = phi ptr [ %i.fr, %bb.q ], [ %i.ac, %bb.h ], [ %i.ac, %bigint_mul_pow10.exit61 ], [ %i.ac, %bb.o ], [ %i.ac, %._crit_edge149 ] ; 2 uses
  %.147 = phi i32 [ %.046151, %bb.q ], [ %i.ah, %bb.h ], [ 0, %bigint_mul_pow10.exit61 ], [ 0, %bb.o ], [ 0, %._crit_edge149 ]
  %.2 = phi i64 [ %.045152, %bb.q ], [ %.1, %bb.h ], [ 0, %bigint_mul_pow10.exit61 ], [ 0, %bb.o ], [ 0, %._crit_edge149 ]
  %i.fu = icmp ult ptr %.149, %.050
  br i1 %i.fu, label %.lr.ph154, label %.loopexit, !llvm.loop !468

.loopexit:                                        ; preds = %bigint_add_u64.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind }

!llvm.module.flags = !{!37, !38}
!llvm.ident = !{!39}
!llvm.errno.tbaa = !{!44}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{!3, !64}
!4 = distinct !{!4, !64}
!5 = distinct !{!5, !64}
!6 = distinct !{!6, !64}
!7 = distinct !{!7, !64}
!8 = distinct !{!8, !64}
!9 = distinct !{!9, !64}
!10 = distinct !{!10, !64}
!11 = distinct !{!11, !64}
!12 = distinct !{!12, !64}
!13 = distinct !{!13, !64}
!14 = distinct !{!14, !64}
!15 = distinct !{!15, !64}
!16 = distinct !{!16, !64}
!17 = distinct !{!17, !64}
!18 = distinct !{!18, !64}
!19 = distinct !{!19, !64}
!20 = distinct !{!20, !64}
!21 = distinct !{!21, !64}
!22 = distinct !{!22, !64}
!23 = distinct !{!23, !64}
!24 = distinct !{!24, !64}
!25 = distinct !{!25, !64}
!26 = distinct !{!26, !64}
!27 = distinct !{!27, !64}
!28 = distinct !{!28, !64}
!29 = distinct !{!29, !64}
!30 = distinct !{!30, !64}
!31 = distinct !{!31, !64}
!32 = distinct !{!32, !64}
!33 = distinct !{!33, !64}
!34 = distinct !{!34, !64}
!35 = distinct !{!35, !64}
!36 = distinct !{!36, !64}
!37 = !{i32 8, !"PIC Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"omnipotent char", !40, i64 0}
!42 = !{!"int", !41, i64 0}
!43 = !{!"__libc_errno", !42, i64 0}
!44 = !{!43, !42, i64 0}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!"any pointer", !41, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47, i64 24, i64 8, !47}
!49 = !{!"long", !41, i64 0}
!50 = !{!"p1 _ZTS10pool_chunk", !46, i64 0}
!51 = !{!"pool_chunk", !49, i64 0, !50, i64 8}
!52 = !{!51, !49, i64 0}
!53 = !{!51, !50, i64 8}
!54 = !{!"pool_ctx", !49, i64 0, !50, i64 8}
!55 = !{!54, !49, i64 0}
!56 = !{!54, !50, i64 8}
!57 = !{!"yyjson_alc", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!58 = !{!57, !46, i64 0}
!59 = !{!57, !46, i64 8}
!60 = !{!57, !46, i64 16}
!61 = !{!57, !46, i64 24}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!50, !50, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"p1 _ZTS9dyn_chunk", !46, i64 0}
!66 = !{!"dyn_chunk", !49, i64 0, !65, i64 8}
!67 = !{!"", !66, i64 0, !66, i64 16}
!68 = !{!67, !65, i64 8}
!69 = !{!66, !49, i64 0}
!70 = !{!66, !65, i64 8}
!71 = !{!"p1 omnipotent char", !46, i64 0}
!72 = !{!"p1 _ZTS16yyjson_str_chunk", !46, i64 0}
!73 = !{!"yyjson_str_pool", !71, i64 0, !71, i64 8, !49, i64 16, !49, i64 24, !72, i64 32}
!74 = !{!73, !72, i64 32}
!75 = !{!"yyjson_str_chunk", !72, i64 0, !49, i64 8}
!76 = !{!75, !72, i64 0}
!77 = !{!73, !71, i64 0}
!78 = !{!73, !71, i64 8}
!79 = !{!"p1 _ZTS14yyjson_mut_val", !46, i64 0}
!80 = !{!"p1 _ZTS16yyjson_val_chunk", !46, i64 0}
!81 = !{!"yyjson_val_pool", !79, i64 0, !79, i64 8, !49, i64 16, !49, i64 24, !80, i64 32}
!82 = !{!81, !80, i64 32}
!83 = !{!"yyjson_val_chunk", !80, i64 0, !49, i64 8}
!84 = !{!83, !80, i64 0}
!85 = !{!83, !49, i64 8}
!86 = !{!81, !79, i64 0}
!87 = !{!81, !79, i64 8}
!88 = !{!"yyjson_mut_doc", !79, i64 0, !57, i64 8, !73, i64 40, !81, i64 80}
!89 = !{!88, !49, i64 56}
!90 = !{!88, !49, i64 96}
!91 = !{!88, !49, i64 64}
!92 = !{!88, !49, i64 104}
!93 = !{!"p1 _ZTS10yyjson_val", !46, i64 0}
!94 = !{!"yyjson_doc", !93, i64 0, !57, i64 8, !49, i64 40, !49, i64 48, !71, i64 56}
!95 = !{!94, !93, i64 0}
!96 = !{ptr @yyjson_mut_doc_free}
!97 = !{!88, !79, i64 0}
!98 = !{!"yyjson_val", !49, i64 0, !41, i64 8}
!99 = !{!98, !49, i64 0}
!100 = !{!41, !41, i64 0}
!101 = !{!"yyjson_mut_val", !49, i64 0, !41, i64 8, !79, i64 16}
!102 = !{!101, !49, i64 0}
!103 = !{!"branch_weights", !"expected", i32 1072669, i32 2146410979}
!104 = !{!101, !79, i64 16}
!105 = !{!"branch_weights", !"expected", i32 1072668, i32 2146410980}
!106 = !{!49, !49, i64 0}
!107 = !{!71, !71, i64 0}
!108 = !{!93, !93, i64 0}
!109 = !{!94, !71, i64 56}
!110 = !{!94, !49, i64 48}
!111 = !{!94, !49, i64 40}
!112 = !{!"yyjson_read_err", !42, i64 0, !71, i64 8, !49, i64 16}
!113 = !{!112, !49, i64 16}
!114 = !{!112, !71, i64 8}
!115 = !{!112, !42, i64 0}
!116 = !{!"branch_weights", i32 2000, i32 2002}
!117 = !{!"branch_weights", i32 127, i32 1}
!118 = !{!"branch_weights", i32 255873, i32 127}
!119 = !{!42, !42, i64 0}
!120 = !{!"branch_weights", i32 1999, i32 1}
!121 = !{!"branch_weights", i32 1, i32 0}
!122 = !{!"branch_weights", i32 2002, i32 2000}
!123 = !{!"branch_weights", i32 1, i32 1999}
!124 = !{!"branch_weights", i32 0, i32 1}
!125 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!126 = !{!"branch_weights", i32 1, i32 4001}
!127 = !{!"double", !41, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"branch_weights", !"expected", i32 11357598, i32 2136126050}
!130 = !{!"bigint", !42, i64 0, !41, i64 8}
!131 = !{!130, !42, i64 0}
!132 = !{!"llvm.loop.isvectorized", i32 1}
!133 = !{!"llvm.loop.unroll.runtime.disable"}
!134 = !{!"llvm.loop.unroll.disable"}
!135 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!136 = !{!"branch_weights", i32 2146410443, i32 1073205}
!137 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!138 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!139 = !{!"branch_weights", i32 4001, i32 4000000}
!140 = !{!"yyjson_incr_state", !42, i64 0, !57, i64 8, !42, i64 40, !71, i64 48, !71, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !93, i64 96, !93, i64 104, !93, i64 112, !93, i64 120, !41, i64 128}
!141 = !{!140, !42, i64 40}
!142 = !{!140, !49, i64 64}
!143 = !{!140, !71, i64 48}
!144 = !{!140, !71, i64 56}
!145 = !{!140, !42, i64 0}
!146 = !{!140, !93, i64 96}
!147 = !{!"branch_weights", i32 4000000, i32 1333, i32 1333, i32 1333}
!148 = !{!"yyjson_write_err", !42, i64 0, !71, i64 8}
!149 = !{!148, !71, i64 8}
!150 = !{!148, !42, i64 0}
!151 = !{!"branch_weights", i32 2000, i32 0, i32 0}
!152 = !{!"branch_weights", i32 4, i32 28}
!153 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!154 = !{!"yyjson_ptr_err", !42, i64 0, !71, i64 8, !49, i64 16}
end_hunk_12
