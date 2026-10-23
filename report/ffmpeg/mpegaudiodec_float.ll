Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegaudiodec_float?download=true
inline.NumInlined: 125
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 44
begin_hunk_0_@mp_decode_frame:bb.a
.lr.ph304.i.i:                                    ; preds = %.lr.ph304.i.i, %.lr.ph304.preheader.i.i
  %.0148303.i.i = phi i32 [ %i.cvv, %.lr.ph304.i.i ], [ %i.cvo, %.lr.ph304.preheader.i.i ] ; 3 uses
  %i.cvp = sext i32 %.0148303.i.i to i64
  %i.cvq = getelementptr inbounds [4 x i8], ptr @huffman_decode.idxtab, i64 %i.cvp
  %i.cvr = load i32, ptr %i.cvq, align 4, !tbaa !41 ; 2 uses
  %i.cvs = sext i32 %i.cvr to i64
  %i.cvt = add nsw i64 %indvars.iv327.i.i, %i.cvs ; 2 uses
  %i.cvu = lshr i32 8, %i.cvr                     ; 2 uses
  %i.cvv = xor i32 %i.cvu, %.0148303.i.i
  %i.cvw = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.cvt
  %i.cvx = load i16, ptr %i.cvw, align 2, !tbaa !61
  %i.cvy = sext i16 %i.cvx to i64
  %i.cvz = getelementptr inbounds [4 x i8], ptr @exp_table_float, i64 %i.cvy
  %i.cwa = load i32, ptr %i.cvz, align 4, !tbaa !32
  %i.cwb = load i32, ptr %i.o, align 8, !tbaa !233 ; 4 uses
  %i.cwc = load ptr, ptr %i.h, align 16, !tbaa !230
  %i.cwd = lshr i32 %i.cwb, 3
  %i.cwe = zext nneg i32 %i.cwd to i64
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwc, i64 %i.cwe
  %i.cwg = load i8, ptr %i.cwf, align 1, !tbaa !32
  %i.cwh = load i32, ptr %i.n, align 16, !tbaa !232
  %i.cwi = icmp slt i32 %i.cwb, %i.cwh
  %i.cwj = zext i1 %i.cwi to i32
  %spec.select.i211.i.i = add i32 %i.cwb, %i.cwj
  %i.cwk = zext i8 %i.cwg to i32
  %i.cwl = and i32 %i.cwb, 7
  %i.cwm = shl nuw nsw i32 %i.cwk, %i.cwl
  store i32 %spec.select.i211.i.i, ptr %i.o, align 8, !tbaa !233
  %i.cwn = shl i32 %i.cwm, 24
  %i.cwo = and i32 %i.cwn, -2147483648
  %i.cwp = xor i32 %i.cwo, %i.cwa
  %i.cwq = getelementptr inbounds [4 x i8], ptr %i.chh, i64 %i.cvt
  store i32 %i.cwp, ptr %i.cwq, align 4, !tbaa !32
  %.not171.i.i = icmp eq i32 %i.cvu, %.0148303.i.i
  br i1 %.not171.i.i, label %._crit_edge.i379.i, label %.lr.ph304.i.i, !llvm.loop !155

._crit_edge.i379.i:                               ; preds = %.lr.ph304.i.i, %bb.eo
  %indvars.iv.next328.i.i = add nsw i64 %indvars.iv327.i.i, 4 ; 2 uses
  %i.cwr = icmp slt i64 %indvars.iv327.i.i, 569
  br i1 %i.cwr, label %bb.ei, label %.thread277.loopexit.i.i

.thread277.loopexit.i.i:                          ; preds = %._crit_edge.i379.i, %switch_buffer.exit210.i.i
  %.8266.ph.i.i = phi i32 [ %.10268.i.i, %switch_buffer.exit210.i.i ], [ %.6264.i.i, %._crit_edge.i379.i ]
  %.8256.ph.i.i = phi i32 [ %.10.i.i, %switch_buffer.exit210.i.i ], [ %.6.i.i, %._crit_edge.i379.i ]
  %.8.ph.in.i.i = phi i64 [ %indvars.iv327.i.i, %switch_buffer.exit210.i.i ], [ %indvars.iv.next328.i.i, %._crit_edge.i379.i ]
  %.8.ph.i.i = trunc i64 %.8.ph.in.i.i to i32
  br label %.thread277.i.i

.thread277.i.i:                                   ; preds = %.thread277.loopexit.i.i, %bb.ek, %bb.eh
  %.8266.i.i = phi i32 [ %.5263305.i.i, %bb.ek ], [ %.4262.i.i, %bb.eh ], [ %.8266.ph.i.i, %.thread277.loopexit.i.i ] ; 2 uses
  %.8256.i.i = phi i32 [ %.5254306.i.i, %bb.ek ], [ %.4253.i.i, %bb.eh ], [ %.8256.ph.i.i, %.thread277.loopexit.i.i ]
  %.8.i.i = phi i32 [ %spec.select187.i.i, %bb.ek ], [ %.4.i.i, %bb.eh ], [ %.8.ph.i.i, %.thread277.loopexit.i.i ] ; 3 uses
  %.val192.i.i = load i32, ptr %i.o, align 8, !tbaa !233 ; 2 uses
  %i.cws = sub nsw i32 %.8266.i.i, %.val192.i.i   ; 4 uses
  %i.cwt = icmp slt i32 %i.cws, 0
  br i1 %i.cwt, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %.thread277.i.i
  %i.cwu = load i32, ptr %i.axw, align 8, !tbaa !72
  %i.cwv = and i32 %i.cwu, 131076
  %.not173.i.i = icmp eq i32 %i.cwv, 0
  br i1 %.not173.i.i, label %.thread283.i.i, label %.thread283.sink.split.i.i

bb.eq:                                            ; preds = %.thread277.i.i
  %.not284.i.i = icmp eq i32 %.8266.i.i, %.val192.i.i
  br i1 %.not284.i.i, label %.thread283.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.cww = load i32, ptr %i.axw, align 8, !tbaa !72
  %i.cwx = and i32 %i.cww, 262148
  %.not174.i.i = icmp eq i32 %i.cwx, 0
  br i1 %.not174.i.i, label %.thread283.i.i, label %.thread283.sink.split.i.i

.thread283.sink.split.i.i:                        ; preds = %bb.er, %bb.ep
  %i.cwy = load ptr, ptr %i.ajv, align 16, !tbaa !66
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cwy, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %i.cws) #14
  br label %.thread283.i.i

.thread283.i.i:                                   ; preds = %.thread283.sink.split.i.i, %bb.er, %bb.eq, %bb.ep
  %.9.i.i = phi i32 [ %.8.i.i, %bb.eq ], [ %.8.i.i, %bb.ep ], [ %.8.i.i, %bb.er ], [ 0, %.thread283.sink.split.i.i ] ; 2 uses
  %i.cwz = sext i32 %.9.i.i to i64
  %i.cxa = getelementptr inbounds [4 x i8], ptr %i.chh, i64 %i.cwz
  %i.cxb = sub nsw i32 576, %.9.i.i
  %i.cxc = sext i32 %i.cxb to i64
  %i.cxd = shl nsw i64 %i.cxc, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cxa, i8 0, i64 %i.cxd, i1 false)
  %i.cxe = load i32, ptr %i.o, align 8, !tbaa !233 ; 3 uses
  %i.cxf = sub nsw i32 0, %i.cxe                  ; 2 uses
  %i.cxg = load i32, ptr %i.n, align 16, !tbaa !232
  %i.cxh = sub nsw i32 %i.cxg, %i.cxe
  %i.cxi = icmp slt i32 %i.cws, %i.cxf
  %..i.i212.i.i = tail call i32 @llvm.smin.i32(i32 %i.cws, i32 %i.cxh)
  %.0.i.i213.i.i = select i1 %i.cxi, i32 %i.cxf, i32 %..i.i212.i.i
  %i.cxj = add nsw i32 %.0.i.i213.i.i, %i.cxe     ; 5 uses
  store i32 %i.cxj, ptr %i.o, align 8, !tbaa !233
  %i.cxk = load ptr, ptr %i.axv, align 8, !tbaa !256
  %.not.i214.i.i = icmp eq ptr %i.cxk, null
  br i1 %.not.i214.i.i, label %huffman_decode.exit.i, label %bb.es

bb.es:                                            ; preds = %.thread283.i.i
  %i.cxl = load i32, ptr %i.l, align 4, !tbaa !255
  %i.cxm = load i32, ptr %i.axu, align 4, !tbaa !253
  %i.cxn = shl nsw i32 %i.cxm, 3
  %i.cxo = sub nsw i32 %i.cxl, %i.cxn
  %.not18.i215.i.i = icmp slt i32 %i.cxj, %i.cxo
  br i1 %.not18.i215.i.i, label %huffman_decode.exit.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.axv, i64 24, i1 false), !tbaa.struct !254
  store ptr null, ptr %i.axv, align 8, !tbaa !256
  store i32 0, ptr %i.axu, align 4, !tbaa !253
  %i.cxp = sub nsw i32 %i.cxj, %.8256.i.i         ; 2 uses
  %i.cxq = load i32, ptr %i.o, align 8, !tbaa !233 ; 3 uses
  %i.cxr = sub nsw i32 0, %i.cxq                  ; 2 uses
  %i.cxs = load i32, ptr %i.n, align 16, !tbaa !232
  %i.cxt = sub nsw i32 %i.cxs, %i.cxq
  %i.cxu = icmp slt i32 %i.cxp, %i.cxr
  %..i.i.i216.i.i = tail call i32 @llvm.smin.i32(i32 %i.cxp, i32 %i.cxt)
  %.0.i.i.i217.i.i = select i1 %i.cxu, i32 %i.cxr, i32 %..i.i.i216.i.i
  %i.cxv = add nsw i32 %.0.i.i.i217.i.i, %i.cxq   ; 2 uses
  store i32 %i.cxv, ptr %i.o, align 8, !tbaa !233
  br label %huffman_decode.exit.i

huffman_decode.exit.i:                            ; preds = %bb.et, %bb.es, %.thread283.i.i
  %.val359716.i = phi i32 [ %i.cxj, %.thread283.i.i ], [ %i.cxj, %bb.es ], [ %i.cxv, %bb.et ]
  %indvar.next689.i = add nuw nsw i64 %indvar688.i, 1 ; 2 uses
  %i.cxw = load i32, ptr %i.ahh, align 8, !tbaa !40 ; 2 uses
  %i.cxx = sext i32 %i.cxw to i64
  %i.cxy = icmp slt i64 %indvar.next689.i, %i.cxx
  br i1 %i.cxy, label %bb.bz, label %._crit_edge543.i, !llvm.loop !156

._crit_edge543.i:                                 ; preds = %huffman_decode.exit.i, %.preheader472.i
  %i.cxz = phi i32 [ %i.ayk, %.preheader472.i ], [ %i.cxw, %huffman_decode.exit.i ] ; 5 uses
  %i.cya = load i32, ptr %i.axx, align 4, !tbaa !236
  %i.cyb = icmp eq i32 %i.cya, 1
  br i1 %i.cyb, label %bb.eu, label %compute_stereo.exit.i

bb.eu:                                            ; preds = %._crit_edge543.i
  %i.cyc = getelementptr inbounds nuw [2432 x i8], ptr %i.ajs, i64 %indvars.iv703.i ; 2 uses
  %i.cyd = getelementptr inbounds nuw [2432 x i8], ptr %i.axy, i64 %indvars.iv703.i ; 7 uses
  %i.cye = load i32, ptr %i.ajt, align 16, !tbaa !237
  %.fr215.i.i = freeze i32 %i.cye                 ; 4 uses
  %i.cyf = and i32 %.fr215.i.i, 1
  %.not.i385.i = icmp eq i32 %i.cyf, 0
  br i1 %.not.i385.i, label %bb.fl, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.cyg = load i32, ptr %i.ahg, align 4, !tbaa !235
  %.not143.i.i = icmp eq i32 %i.cyg, 0
  br i1 %.not143.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyd, i64 16
  %i.cyi = load i32, ptr %i.cyh, align 16, !tbaa !245
  %i.cyj = and i32 %i.cyi, 1
  %i.cyk = zext nneg i32 %i.cyj to i64
  %i.cyl = getelementptr inbounds nuw [128 x i8], ptr @is_table_lsf, i64 %i.cyk
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.0129.i.i = phi i32 [ 16, %bb.ew ], [ 7, %bb.ev ] ; 8 uses
  %.0.i386.i = phi ptr [ %i.cyl, %bb.ew ], [ @is_table, %bb.ev ] ; 10 uses
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cyc, i64 2432 ; 3 uses
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cyd, i64 2432 ; 3 uses
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyd, i64 68
  %i.cyp = load i32, ptr %i.cyo, align 4, !tbaa !248 ; 3 uses
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cyd, i64 72
  %i.cyr = load i32, ptr %i.cyq, align 8, !tbaa !247 ; 3 uses
  %.not144172.i.i = icmp sgt i32 %i.cyp, 12
  br i1 %.not144172.i.i, label %._crit_edge179.i.i, label %.lr.ph178.i.i

.lr.ph178.i.i:                                    ; preds = %bb.ex
  %i.cys = add i32 %i.cyr, -3
  %i.cyt = sub nsw i32 13, %i.cyp
  %i.cyu = mul nuw nsw i32 %i.cyt, 3
  %i.cyv = add i32 %i.cys, %i.cyu                 ; 2 uses
  %i.cyw = load i32, ptr %i.aju, align 16, !tbaa !246
  %i.cyx = sext i32 %i.cyw to i64
  %i.cyy = getelementptr inbounds [13 x i8], ptr @ff_band_size_short, i64 %i.cyx ; 2 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyd, i64 76 ; 6 uses
  %i.cza = getelementptr inbounds nuw i8, ptr %.0.i386.i, i64 64 ; 6 uses
  %i.czb = and i32 %.fr215.i.i, 2
  %.not151.i.i = icmp eq i32 %i.czb, 0
  %i.czc = sext i32 %i.cyp to i64                 ; 2 uses
  br i1 %.not151.i.i, label %.split.us.us.i.i, label %.split.i.i

.split.us.us.i.i:                                 ; preds = %.lr.ph178.i.i, %.split170.us.us.i.i
  %.sroa.18.0.i.i = phi i32 [ %.sroa.18.3.i.i, %.split170.us.us.i.i ], [ 0, %.lr.ph178.i.i ] ; 2 uses
  %.sroa.10.0.i.i = phi i32 [ %.sroa.10.1.i.i, %.split170.us.us.i.i ], [ 0, %.lr.ph178.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %.split170.us.us.i.i ], [ 0, %.lr.ph178.i.i ] ; 2 uses
  %indvars.iv282.i.i = phi i64 [ %indvars.iv.next283.i.i, %.split170.us.us.i.i ], [ 12, %.lr.ph178.i.i ] ; 4 uses
  %.0122176.us.i.i = phi ptr [ %.us-phi183.i.i, %.split170.us.us.i.i ], [ %i.cyn, %.lr.ph178.i.i ] ; 3 uses
  %.0123175.us.i.i = phi ptr [ %.us-phi.i395.i, %.split170.us.us.i.i ], [ %i.cym, %.lr.ph178.i.i ] ; 3 uses
  %.0131174.us.i.i = phi i32 [ %spec.select.us.i.i, %.split170.us.us.i.i ], [ %i.cyv, %.lr.ph178.i.i ] ; 2 uses
  %i.czd = icmp eq i64 %indvars.iv282.i.i, 11
  %i.cze = add nsw i32 %.0131174.us.i.i, -3
  %spec.select.us.i.i = select i1 %i.czd, i32 %.0131174.us.i.i, i32 %i.cze ; 2 uses
  %i.czf = getelementptr inbounds i8, ptr %i.cyy, i64 %indvars.iv282.i.i
  %i.czg = load i8, ptr %i.czf, align 1, !tbaa !32
  %.fr219.i.i = freeze i8 %i.czg                  ; 5 uses
  %i.czh = zext i8 %.fr219.i.i to i64             ; 19 uses
  %i.czi = sub nsw i64 0, %i.czh                  ; 6 uses
  %.not221.i.i = icmp eq i8 %.fr219.i.i, 0
  br i1 %.not221.i.i, label %.split.us.us.split.split.preheader.i.i, label %.split.us.us.split.us.preheader.i.i

.split.us.us.split.us.preheader.i.i:              ; preds = %.split.us.us.i.i
  %i.czj = sext i32 %spec.select.us.i.i to i64    ; 3 uses
  %i.czk = getelementptr [4 x i8], ptr %.0123175.us.i.i, i64 %i.czi ; 7 uses
  %i.czl = getelementptr [4 x i8], ptr %.0122176.us.i.i, i64 %i.czi ; 8 uses
  %.not149.us.us.us.i.i = icmp eq i32 %.sroa.18.0.i.i, 0
  br i1 %.not149.us.us.us.i.i, label %.lr.ph.us.us.us.i.i, label %..loopexit158_crit_edge.us.us.us.i.i

.lr.ph.us.us.us.i.i:                              ; preds = %.split.us.us.split.us.preheader.i.i, %bb.ey
  %indvars.iv258.i.i = phi i64 [ %indvars.iv.next259.i.i, %bb.ey ], [ 0, %.split.us.us.split.us.preheader.i.i ] ; 2 uses
  %i.czm = getelementptr inbounds nuw [4 x i8], ptr %i.czl, i64 %indvars.iv258.i.i
  %i.czn = load float, ptr %i.czm, align 4, !tbaa !73
  %i.czo = fcmp nsz une float %i.czn, 0.000000e+00
  br i1 %i.czo, label %..loopexit158_crit_edge.us.us.us.i.i, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.us.us.us.i.i
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1 ; 2 uses
  %exitcond262.not.i.i = icmp eq i64 %indvars.iv.next259.i.i, %i.czh
  br i1 %exitcond262.not.i.i, label %._crit_edge.us.us.us.i.i, label %.lr.ph.us.us.us.i.i, !llvm.loop !157

._crit_edge.us.us.us.i.i:                         ; preds = %bb.ey
  %i.czp = getelementptr i8, ptr %i.cyz, i64 %i.czj
  %i.czq = getelementptr i8, ptr %i.czp, i64 2
  %i.czr = load i8, ptr %i.czq, align 1, !tbaa !32 ; 2 uses
  %i.czs = zext i8 %i.czr to i32
  %.not150.us.us.us.i.i = icmp samesign ugt i32 %.0129.i.i, %i.czs
  br i1 %.not150.us.us.us.i.i, label %.lr.ph163.us.us.us.i.i, label %..loopexit158_crit_edge.us.us.us.i.i

.lr.ph163.us.us.us.i.i:                           ; preds = %._crit_edge.us.us.us.i.i
  %i.czt = zext i8 %i.czr to i64                  ; 2 uses
  %i.czu = getelementptr inbounds nuw [4 x i8], ptr %.0.i386.i, i64 %i.czt
  %i.czv = load float, ptr %i.czu, align 4, !tbaa !73 ; 4 uses
  %i.czw = getelementptr inbounds nuw [4 x i8], ptr %i.cza, i64 %i.czt
  %i.czx = load float, ptr %i.czw, align 4, !tbaa !73 ; 4 uses
  %min.iters.check532 = icmp ult i8 %.fr219.i.i, 8
  br i1 %min.iters.check532, label %scalar.ph531.preheader, label %vector.memcheck527

vector.memcheck527:                               ; preds = %.lr.ph163.us.us.us.i.i
  %bound0528 = icmp ult ptr %i.czk, %.0122176.us.i.i
  %bound1529 = icmp ult ptr %i.czl, %.0123175.us.i.i
  %found.conflict530 = and i1 %bound0528, %bound1529
  br i1 %found.conflict530, label %scalar.ph531.preheader, label %vector.ph533

vector.ph533:                                     ; preds = %vector.memcheck527
  %n.vec534 = and i64 %i.czh, 248                 ; 3 uses
  %broadcast.splatinsert535 = insertelement <4 x float> poison, float %i.czv, i64 0
  %broadcast.splat536 = shufflevector <4 x float> %broadcast.splatinsert535, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert537 = insertelement <4 x float> poison, float %i.czx, i64 0
  %broadcast.splat538 = shufflevector <4 x float> %broadcast.splatinsert537, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph533
  %index540 = phi i64 [ 0, %vector.ph533 ], [ %index.next543, %vector.body539 ] ; 3 uses
  %i.czy = getelementptr inbounds nuw [4 x i8], ptr %i.czk, i64 %index540 ; 3 uses
  %i.czz = getelementptr inbounds nuw i8, ptr %i.czy, i64 16 ; 2 uses
  %wide.load541 = load <4 x float>, ptr %i.czy, align 4, !tbaa !73, !alias.scope !263, !noalias !264 ; 2 uses
  %wide.load542 = load <4 x float>, ptr %i.czz, align 4, !tbaa !73, !alias.scope !263, !noalias !264 ; 2 uses
  %i.daa = fmul nsz <4 x float> %broadcast.splat536, %wide.load541
  %i.dab = fmul nsz <4 x float> %broadcast.splat536, %wide.load542
  store <4 x float> %i.daa, ptr %i.czy, align 4, !tbaa !73, !alias.scope !263, !noalias !264
  store <4 x float> %i.dab, ptr %i.czz, align 4, !tbaa !73, !alias.scope !263, !noalias !264
  %i.dac = fmul nsz <4 x float> %broadcast.splat538, %wide.load541
  %i.dad = fmul nsz <4 x float> %broadcast.splat538, %wide.load542
  %i.dae = getelementptr inbounds nuw [4 x i8], ptr %i.czl, i64 %index540 ; 2 uses
  %i.daf = getelementptr inbounds nuw i8, ptr %i.dae, i64 16
  store <4 x float> %i.dac, ptr %i.dae, align 4, !tbaa !73, !alias.scope !264
  store <4 x float> %i.dad, ptr %i.daf, align 4, !tbaa !73, !alias.scope !264
  %index.next543 = add nuw i64 %index540, 8       ; 2 uses
  %i.dag = icmp eq i64 %index.next543, %n.vec534
  br i1 %i.dag, label %middle.block544, label %vector.body539, !llvm.loop !161

middle.block544:                                  ; preds = %vector.body539
  %cmp.n545 = icmp eq i64 %n.vec534, %i.czh
  br i1 %cmp.n545, label %..loopexit158_crit_edge.us.us.us.i.i, label %scalar.ph531.preheader

scalar.ph531.preheader:                           ; preds = %vector.memcheck527, %.lr.ph163.us.us.us.i.i, %middle.block544
  %indvars.iv263.i.i.ph = phi i64 [ 0, %vector.memcheck527 ], [ 0, %.lr.ph163.us.us.us.i.i ], [ %n.vec534, %middle.block544 ] ; 5 uses
  %xtraiter859 = and i64 %i.czh, 1
  %lcmp.mod860.not = icmp eq i64 %xtraiter859, 0
  br i1 %lcmp.mod860.not, label %scalar.ph531.prol.loopexit, label %scalar.ph531.prol

scalar.ph531.prol:                                ; preds = %scalar.ph531.preheader
  %i.dah = getelementptr inbounds nuw [4 x i8], ptr %i.czk, i64 %indvars.iv263.i.i.ph ; 2 uses
  %i.dai = load float, ptr %i.dah, align 4, !tbaa !73 ; 2 uses
  %i.daj = fmul nsz float %i.czv, %i.dai
  store float %i.daj, ptr %i.dah, align 4, !tbaa !73
  %i.dak = fmul nsz float %i.czx, %i.dai
  %i.dal = getelementptr inbounds nuw [4 x i8], ptr %i.czl, i64 %indvars.iv263.i.i.ph
  store float %i.dak, ptr %i.dal, align 4, !tbaa !73
  %indvars.iv.next264.i.i.prol = or disjoint i64 %indvars.iv263.i.i.ph, 1
  br label %scalar.ph531.prol.loopexit

scalar.ph531.prol.loopexit:                       ; preds = %scalar.ph531.prol, %scalar.ph531.preheader
  %indvars.iv263.i.i.unr = phi i64 [ %indvars.iv263.i.i.ph, %scalar.ph531.preheader ], [ %indvars.iv.next264.i.i.prol, %scalar.ph531.prol ]
  %i.dam = add nsw i64 %i.czh, -1
  %i.dan = icmp eq i64 %indvars.iv263.i.i.ph, %i.dam
  br i1 %i.dan, label %..loopexit158_crit_edge.us.us.us.i.i, label %scalar.ph531

scalar.ph531:                                     ; preds = %scalar.ph531.prol.loopexit, %scalar.ph531
  %indvars.iv263.i.i = phi i64 [ %indvars.iv.next264.i.i.1, %scalar.ph531 ], [ %indvars.iv263.i.i.unr, %scalar.ph531.prol.loopexit ] ; 4 uses
  %i.dao = getelementptr inbounds nuw [4 x i8], ptr %i.czk, i64 %indvars.iv263.i.i ; 2 uses
  %i.dap = load float, ptr %i.dao, align 4, !tbaa !73 ; 2 uses
  %i.daq = fmul nsz float %i.czv, %i.dap
  store float %i.daq, ptr %i.dao, align 4, !tbaa !73
  %i.dar = fmul nsz float %i.czx, %i.dap
  %i.das = getelementptr inbounds nuw [4 x i8], ptr %i.czl, i64 %indvars.iv263.i.i
  store float %i.dar, ptr %i.das, align 4, !tbaa !73
  %indvars.iv.next264.i.i = add nuw nsw i64 %indvars.iv263.i.i, 1 ; 2 uses
  %i.dat = getelementptr inbounds nuw [4 x i8], ptr %i.czk, i64 %indvars.iv.next264.i.i ; 2 uses
  %i.dau = load float, ptr %i.dat, align 4, !tbaa !73 ; 2 uses
  %i.dav = fmul nsz float %i.czv, %i.dau
  store float %i.dav, ptr %i.dat, align 4, !tbaa !73
  %i.daw = fmul nsz float %i.czx, %i.dau
  %i.dax = getelementptr inbounds nuw [4 x i8], ptr %i.czl, i64 %indvars.iv.next264.i.i
  store float %i.daw, ptr %i.dax, align 4, !tbaa !73
  %indvars.iv.next264.i.i.1 = add nuw nsw i64 %indvars.iv263.i.i, 2 ; 2 uses
  %exitcond267.not.i.i.1 = icmp eq i64 %indvars.iv.next264.i.i.1, %i.czh
  br i1 %exitcond267.not.i.i.1, label %..loopexit158_crit_edge.us.us.us.i.i, label %scalar.ph531, !llvm.loop !162

..loopexit158_crit_edge.us.us.us.i.i:             ; preds = %.lr.ph.us.us.us.i.i, %scalar.ph531.prol.loopexit, %scalar.ph531, %middle.block544, %._crit_edge.us.us.us.i.i, %.split.us.us.split.us.preheader.i.i
  %.sroa.18.1.i.i = phi i32 [ 0, %middle.block544 ], [ 0, %._crit_edge.us.us.us.i.i ], [ 1, %.split.us.us.split.us.preheader.i.i ], [ 0, %scalar.ph531.prol.loopexit ], [ 0, %scalar.ph531 ], [ 1, %.lr.ph.us.us.us.i.i ] ; 6 uses
  %i.day = getelementptr [4 x i8], ptr %i.czk, i64 %i.czi ; 7 uses
  %i.daz = getelementptr [4 x i8], ptr %i.czl, i64 %i.czi ; 8 uses
  %.not149.us.us.us.1.i.i = icmp eq i32 %.sroa.10.0.i.i, 0
  br i1 %.not149.us.us.us.1.i.i, label %.lr.ph.us.us.us.1.i.i, label %..loopexit158_crit_edge.us.us.us.1.i.i

.lr.ph.us.us.us.1.i.i:                            ; preds = %..loopexit158_crit_edge.us.us.us.i.i, %bb.ez
  %indvars.iv258.1.i.i = phi i64 [ %indvars.iv.next259.1.i.i, %bb.ez ], [ 0, %..loopexit158_crit_edge.us.us.us.i.i ] ; 2 uses
  %i.dba = getelementptr inbounds nuw [4 x i8], ptr %i.daz, i64 %indvars.iv258.1.i.i
  %i.dbb = load float, ptr %i.dba, align 4, !tbaa !73
  %i.dbc = fcmp nsz une float %i.dbb, 0.000000e+00
  br i1 %i.dbc, label %..loopexit158_crit_edge.us.us.us.1.i.i, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph.us.us.us.1.i.i
  %indvars.iv.next259.1.i.i = add nuw nsw i64 %indvars.iv258.1.i.i, 1 ; 2 uses
  %exitcond262.1.not.i.i = icmp eq i64 %indvars.iv.next259.1.i.i, %i.czh
  br i1 %exitcond262.1.not.i.i, label %._crit_edge.us.us.us.1.i.i, label %.lr.ph.us.us.us.1.i.i, !llvm.loop !157

._crit_edge.us.us.us.1.i.i:                       ; preds = %bb.ez
  %i.dbd = getelementptr i8, ptr %i.cyz, i64 %i.czj
  %i.dbe = getelementptr i8, ptr %i.dbd, i64 1
  %i.dbf = load i8, ptr %i.dbe, align 1, !tbaa !32 ; 2 uses
  %i.dbg = zext i8 %i.dbf to i32
  %.not150.us.us.us.1.i.i = icmp samesign ugt i32 %.0129.i.i, %i.dbg
  br i1 %.not150.us.us.us.1.i.i, label %.lr.ph163.us.us.us.1.i.i, label %..loopexit158_crit_edge.us.us.us.1.i.i

.lr.ph163.us.us.us.1.i.i:                         ; preds = %._crit_edge.us.us.us.1.i.i
  %i.dbh = zext i8 %i.dbf to i64                  ; 2 uses
  %i.dbi = getelementptr inbounds nuw [4 x i8], ptr %.0.i386.i, i64 %i.dbh
  %i.dbj = load float, ptr %i.dbi, align 4, !tbaa !73 ; 4 uses
  %i.dbk = getelementptr inbounds nuw [4 x i8], ptr %i.cza, i64 %i.dbh
  %i.dbl = load float, ptr %i.dbk, align 4, !tbaa !73 ; 4 uses
  %min.iters.check512 = icmp ult i8 %.fr219.i.i, 8
  br i1 %min.iters.check512, label %scalar.ph511.preheader, label %vector.memcheck507

vector.memcheck507:                               ; preds = %.lr.ph163.us.us.us.1.i.i
  %bound0508 = icmp ult ptr %i.day, %i.czl
  %bound1509 = icmp ult ptr %i.daz, %i.czk
  %found.conflict510 = and i1 %bound0508, %bound1509
  br i1 %found.conflict510, label %scalar.ph511.preheader, label %vector.ph513

vector.ph513:                                     ; preds = %vector.memcheck507
  %n.vec514 = and i64 %i.czh, 248                 ; 3 uses
  %broadcast.splatinsert515 = insertelement <4 x float> poison, float %i.dbj, i64 0
  %broadcast.splat516 = shufflevector <4 x float> %broadcast.splatinsert515, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert517 = insertelement <4 x float> poison, float %i.dbl, i64 0
  %broadcast.splat518 = shufflevector <4 x float> %broadcast.splatinsert517, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph513
  %index520 = phi i64 [ 0, %vector.ph513 ], [ %index.next523, %vector.body519 ] ; 3 uses
  %i.dbm = getelementptr inbounds nuw [4 x i8], ptr %i.day, i64 %index520 ; 3 uses
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbm, i64 16 ; 2 uses
  %wide.load521 = load <4 x float>, ptr %i.dbm, align 4, !tbaa !73, !alias.scope !265, !noalias !266 ; 2 uses
  %wide.load522 = load <4 x float>, ptr %i.dbn, align 4, !tbaa !73, !alias.scope !265, !noalias !266 ; 2 uses
  %i.dbo = fmul nsz <4 x float> %broadcast.splat516, %wide.load521
  %i.dbp = fmul nsz <4 x float> %broadcast.splat516, %wide.load522
  store <4 x float> %i.dbo, ptr %i.dbm, align 4, !tbaa !73, !alias.scope !265, !noalias !266
  store <4 x float> %i.dbp, ptr %i.dbn, align 4, !tbaa !73, !alias.scope !265, !noalias !266
  %i.dbq = fmul nsz <4 x float> %broadcast.splat518, %wide.load521
  %i.dbr = fmul nsz <4 x float> %broadcast.splat518, %wide.load522
  %i.dbs = getelementptr inbounds nuw [4 x i8], ptr %i.daz, i64 %index520 ; 2 uses
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.dbs, i64 16
  store <4 x float> %i.dbq, ptr %i.dbs, align 4, !tbaa !73, !alias.scope !266
  store <4 x float> %i.dbr, ptr %i.dbt, align 4, !tbaa !73, !alias.scope !266
  %index.next523 = add nuw i64 %index520, 8       ; 2 uses
  %i.dbu = icmp eq i64 %index.next523, %n.vec514
  br i1 %i.dbu, label %middle.block524, label %vector.body519, !llvm.loop !166

middle.block524:                                  ; preds = %vector.body519
  %cmp.n525 = icmp eq i64 %n.vec514, %i.czh
  br i1 %cmp.n525, label %..loopexit158_crit_edge.us.us.us.1.i.i, label %scalar.ph511.preheader

scalar.ph511.preheader:                           ; preds = %vector.memcheck507, %.lr.ph163.us.us.us.1.i.i, %middle.block524
  %indvars.iv263.1.i.i.ph = phi i64 [ 0, %vector.memcheck507 ], [ 0, %.lr.ph163.us.us.us.1.i.i ], [ %n.vec514, %middle.block524 ] ; 5 uses
  %xtraiter861 = and i64 %i.czh, 1
  %lcmp.mod862.not = icmp eq i64 %xtraiter861, 0
  br i1 %lcmp.mod862.not, label %scalar.ph511.prol.loopexit, label %scalar.ph511.prol

scalar.ph511.prol:                                ; preds = %scalar.ph511.preheader
  %i.dbv = getelementptr inbounds nuw [4 x i8], ptr %i.day, i64 %indvars.iv263.1.i.i.ph ; 2 uses
  %i.dbw = load float, ptr %i.dbv, align 4, !tbaa !73 ; 2 uses
  %i.dbx = fmul nsz float %i.dbj, %i.dbw
  store float %i.dbx, ptr %i.dbv, align 4, !tbaa !73
  %i.dby = fmul nsz float %i.dbl, %i.dbw
  %i.dbz = getelementptr inbounds nuw [4 x i8], ptr %i.daz, i64 %indvars.iv263.1.i.i.ph
  store float %i.dby, ptr %i.dbz, align 4, !tbaa !73
  %indvars.iv.next264.1.i.i.prol = or disjoint i64 %indvars.iv263.1.i.i.ph, 1
  br label %scalar.ph511.prol.loopexit

scalar.ph511.prol.loopexit:                       ; preds = %scalar.ph511.prol, %scalar.ph511.preheader
  %indvars.iv263.1.i.i.unr = phi i64 [ %indvars.iv263.1.i.i.ph, %scalar.ph511.preheader ], [ %indvars.iv.next264.1.i.i.prol, %scalar.ph511.prol ]
  %i.dca = add nsw i64 %i.czh, -1
  %i.dcb = icmp eq i64 %indvars.iv263.1.i.i.ph, %i.dca
  br i1 %i.dcb, label %..loopexit158_crit_edge.us.us.us.1.i.i, label %scalar.ph511

scalar.ph511:                                     ; preds = %scalar.ph511.prol.loopexit, %scalar.ph511
  %indvars.iv263.1.i.i = phi i64 [ %indvars.iv.next264.1.i.i.1, %scalar.ph511 ], [ %indvars.iv263.1.i.i.unr, %scalar.ph511.prol.loopexit ] ; 4 uses
  %i.dcc = getelementptr inbounds nuw [4 x i8], ptr %i.day, i64 %indvars.iv263.1.i.i ; 2 uses
  %i.dcd = load float, ptr %i.dcc, align 4, !tbaa !73 ; 2 uses
  %i.dce = fmul nsz float %i.dbj, %i.dcd
  store float %i.dce, ptr %i.dcc, align 4, !tbaa !73
  %i.dcf = fmul nsz float %i.dbl, %i.dcd
  %i.dcg = getelementptr inbounds nuw [4 x i8], ptr %i.daz, i64 %indvars.iv263.1.i.i
  store float %i.dcf, ptr %i.dcg, align 4, !tbaa !73
  %indvars.iv.next264.1.i.i = add nuw nsw i64 %indvars.iv263.1.i.i, 1 ; 2 uses
  %i.dch = getelementptr inbounds nuw [4 x i8], ptr %i.day, i64 %indvars.iv.next264.1.i.i ; 2 uses
  %i.dci = load float, ptr %i.dch, align 4, !tbaa !73 ; 2 uses
  %i.dcj = fmul nsz float %i.dbj, %i.dci
  store float %i.dcj, ptr %i.dch, align 4, !tbaa !73
  %i.dck = fmul nsz float %i.dbl, %i.dci
  %i.dcl = getelementptr inbounds nuw [4 x i8], ptr %i.daz, i64 %indvars.iv.next264.1.i.i
  store float %i.dck, ptr %i.dcl, align 4, !tbaa !73
  %indvars.iv.next264.1.i.i.1 = add nuw nsw i64 %indvars.iv263.1.i.i, 2 ; 2 uses
  %exitcond267.1.not.i.i.1 = icmp eq i64 %indvars.iv.next264.1.i.i.1, %i.czh
  br i1 %exitcond267.1.not.i.i.1, label %..loopexit158_crit_edge.us.us.us.1.i.i, label %scalar.ph511, !llvm.loop !167

..loopexit158_crit_edge.us.us.us.1.i.i:           ; preds = %.lr.ph.us.us.us.1.i.i, %scalar.ph511.prol.loopexit, %scalar.ph511, %middle.block524, %._crit_edge.us.us.us.1.i.i, %..loopexit158_crit_edge.us.us.us.i.i
  %.sroa.10.6.i.i = phi i32 [ 0, %middle.block524 ], [ 0, %._crit_edge.us.us.us.1.i.i ], [ 1, %..loopexit158_crit_edge.us.us.us.i.i ], [ 0, %scalar.ph511.prol.loopexit ], [ 0, %scalar.ph511 ], [ 1, %.lr.ph.us.us.us.1.i.i ] ; 6 uses
  %i.dcm = getelementptr [4 x i8], ptr %i.day, i64 %i.czi ; 11 uses
  %i.dcn = getelementptr [4 x i8], ptr %i.daz, i64 %i.czi ; 12 uses
  %.not149.us.us.us.2.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  br i1 %.not149.us.us.us.2.i.i, label %.lr.ph.us.us.us.2.i.i, label %.split170.us.us.i.i

.lr.ph.us.us.us.2.i.i:                            ; preds = %..loopexit158_crit_edge.us.us.us.1.i.i, %bb.fa
  %indvars.iv258.2.i.i = phi i64 [ %indvars.iv.next259.2.i.i, %bb.fa ], [ 0, %..loopexit158_crit_edge.us.us.us.1.i.i ] ; 2 uses
  %i.dco = getelementptr inbounds nuw [4 x i8], ptr %i.dcn, i64 %indvars.iv258.2.i.i
  %i.dcp = load float, ptr %i.dco, align 4, !tbaa !73
  %i.dcq = fcmp nsz une float %i.dcp, 0.000000e+00
  br i1 %i.dcq, label %.split170.us.us.i.i, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.us.us.us.2.i.i
  %indvars.iv.next259.2.i.i = add nuw nsw i64 %indvars.iv258.2.i.i, 1 ; 2 uses
  %exitcond262.2.not.i.i = icmp eq i64 %indvars.iv.next259.2.i.i, %i.czh
  br i1 %exitcond262.2.not.i.i, label %._crit_edge.us.us.us.2.i.i, label %.lr.ph.us.us.us.2.i.i, !llvm.loop !157

._crit_edge.us.us.us.2.i.i:                       ; preds = %bb.fa
  %i.dcr = getelementptr inbounds i8, ptr %i.cyz, i64 %i.czj
  %i.dcs = load i8, ptr %i.dcr, align 1, !tbaa !32 ; 2 uses
  %i.dct = zext i8 %i.dcs to i32
  %.not150.us.us.us.2.i.i = icmp samesign ugt i32 %.0129.i.i, %i.dct
  br i1 %.not150.us.us.us.2.i.i, label %.lr.ph163.us.us.us.2.i.i, label %.split170.us.us.i.i

.lr.ph163.us.us.us.2.i.i:                         ; preds = %._crit_edge.us.us.us.2.i.i
  %i.dcu = zext i8 %i.dcs to i64                  ; 2 uses
  %i.dcv = getelementptr inbounds nuw [4 x i8], ptr %.0.i386.i, i64 %i.dcu
  %i.dcw = load float, ptr %i.dcv, align 4, !tbaa !73 ; 4 uses
  %i.dcx = getelementptr inbounds nuw [4 x i8], ptr %i.cza, i64 %i.dcu
  %i.dcy = load float, ptr %i.dcx, align 4, !tbaa !73 ; 4 uses
  %min.iters.check492 = icmp ult i8 %.fr219.i.i, 8
  br i1 %min.iters.check492, label %scalar.ph491.preheader, label %vector.memcheck487

vector.memcheck487:                               ; preds = %.lr.ph163.us.us.us.2.i.i
  %bound0488 = icmp ult ptr %i.dcm, %i.daz
  %bound1489 = icmp ult ptr %i.dcn, %i.day
  %found.conflict490 = and i1 %bound0488, %bound1489
  br i1 %found.conflict490, label %scalar.ph491.preheader, label %vector.ph493

vector.ph493:                                     ; preds = %vector.memcheck487
  %n.vec494 = and i64 %i.czh, 248                 ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x float> poison, float %i.dcw, i64 0
  %broadcast.splat496 = shufflevector <4 x float> %broadcast.splatinsert495, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert497 = insertelement <4 x float> poison, float %i.dcy, i64 0
  %broadcast.splat498 = shufflevector <4 x float> %broadcast.splatinsert497, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body499

vector.body499:                                   ; preds = %vector.body499, %vector.ph493
  %index500 = phi i64 [ 0, %vector.ph493 ], [ %index.next503, %vector.body499 ] ; 3 uses
  %i.dcz = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %index500 ; 3 uses
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dcz, i64 16 ; 2 uses
  %wide.load501 = load <4 x float>, ptr %i.dcz, align 4, !tbaa !73, !alias.scope !267, !noalias !268 ; 2 uses
  %wide.load502 = load <4 x float>, ptr %i.dda, align 4, !tbaa !73, !alias.scope !267, !noalias !268 ; 2 uses
  %i.ddb = fmul nsz <4 x float> %broadcast.splat496, %wide.load501
  %i.ddc = fmul nsz <4 x float> %broadcast.splat496, %wide.load502
  store <4 x float> %i.ddb, ptr %i.dcz, align 4, !tbaa !73, !alias.scope !267, !noalias !268
  store <4 x float> %i.ddc, ptr %i.dda, align 4, !tbaa !73, !alias.scope !267, !noalias !268
  %i.ddd = fmul nsz <4 x float> %broadcast.splat498, %wide.load501
  %i.dde = fmul nsz <4 x float> %broadcast.splat498, %wide.load502
  %i.ddf = getelementptr inbounds nuw [4 x i8], ptr %i.dcn, i64 %index500 ; 2 uses
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.ddf, i64 16
  store <4 x float> %i.ddd, ptr %i.ddf, align 4, !tbaa !73, !alias.scope !268
  store <4 x float> %i.dde, ptr %i.ddg, align 4, !tbaa !73, !alias.scope !268
  %index.next503 = add nuw i64 %index500, 8       ; 2 uses
  %i.ddh = icmp eq i64 %index.next503, %n.vec494
  br i1 %i.ddh, label %middle.block504, label %vector.body499, !llvm.loop !171

middle.block504:                                  ; preds = %vector.body499
  %cmp.n505 = icmp eq i64 %n.vec494, %i.czh
  br i1 %cmp.n505, label %.split170.us.us.i.i, label %scalar.ph491.preheader

scalar.ph491.preheader:                           ; preds = %vector.memcheck487, %.lr.ph163.us.us.us.2.i.i, %middle.block504
  %indvars.iv263.2.i.i.ph = phi i64 [ 0, %vector.memcheck487 ], [ 0, %.lr.ph163.us.us.us.2.i.i ], [ %n.vec494, %middle.block504 ] ; 5 uses
  %xtraiter863 = and i64 %i.czh, 1
  %lcmp.mod864.not = icmp eq i64 %xtraiter863, 0
  br i1 %lcmp.mod864.not, label %scalar.ph491.prol.loopexit, label %scalar.ph491.prol

scalar.ph491.prol:                                ; preds = %scalar.ph491.preheader
  %i.ddi = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %indvars.iv263.2.i.i.ph ; 2 uses
  %i.ddj = load float, ptr %i.ddi, align 4, !tbaa !73 ; 2 uses
  %i.ddk = fmul nsz float %i.dcw, %i.ddj
  store float %i.ddk, ptr %i.ddi, align 4, !tbaa !73
  %i.ddl = fmul nsz float %i.dcy, %i.ddj
  %i.ddm = getelementptr inbounds nuw [4 x i8], ptr %i.dcn, i64 %indvars.iv263.2.i.i.ph
  store float %i.ddl, ptr %i.ddm, align 4, !tbaa !73
  %indvars.iv.next264.2.i.i.prol = or disjoint i64 %indvars.iv263.2.i.i.ph, 1
  br label %scalar.ph491.prol.loopexit

scalar.ph491.prol.loopexit:                       ; preds = %scalar.ph491.prol, %scalar.ph491.preheader
  %indvars.iv263.2.i.i.unr = phi i64 [ %indvars.iv263.2.i.i.ph, %scalar.ph491.preheader ], [ %indvars.iv.next264.2.i.i.prol, %scalar.ph491.prol ]
  %i.ddn = add nsw i64 %i.czh, -1
  %i.ddo = icmp eq i64 %indvars.iv263.2.i.i.ph, %i.ddn
  br i1 %i.ddo, label %.split170.us.us.i.i, label %scalar.ph491

scalar.ph491:                                     ; preds = %scalar.ph491.prol.loopexit, %scalar.ph491
  %indvars.iv263.2.i.i = phi i64 [ %indvars.iv.next264.2.i.i.1, %scalar.ph491 ], [ %indvars.iv263.2.i.i.unr, %scalar.ph491.prol.loopexit ] ; 4 uses
  %i.ddp = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %indvars.iv263.2.i.i ; 2 uses
  %i.ddq = load float, ptr %i.ddp, align 4, !tbaa !73 ; 2 uses
  %i.ddr = fmul nsz float %i.dcw, %i.ddq
  store float %i.ddr, ptr %i.ddp, align 4, !tbaa !73
  %i.dds = fmul nsz float %i.dcy, %i.ddq
  %i.ddt = getelementptr inbounds nuw [4 x i8], ptr %i.dcn, i64 %indvars.iv263.2.i.i
  store float %i.dds, ptr %i.ddt, align 4, !tbaa !73
  %indvars.iv.next264.2.i.i = add nuw nsw i64 %indvars.iv263.2.i.i, 1 ; 2 uses
  %i.ddu = getelementptr inbounds nuw [4 x i8], ptr %i.dcm, i64 %indvars.iv.next264.2.i.i ; 2 uses
  %i.ddv = load float, ptr %i.ddu, align 4, !tbaa !73 ; 2 uses
  %i.ddw = fmul nsz float %i.dcw, %i.ddv
  store float %i.ddw, ptr %i.ddu, align 4, !tbaa !73
  %i.ddx = fmul nsz float %i.dcy, %i.ddv
  %i.ddy = getelementptr inbounds nuw [4 x i8], ptr %i.dcn, i64 %indvars.iv.next264.2.i.i
  store float %i.ddx, ptr %i.ddy, align 4, !tbaa !73
  %indvars.iv.next264.2.i.i.1 = add nuw nsw i64 %indvars.iv263.2.i.i, 2 ; 2 uses
  %exitcond267.2.not.i.i.1 = icmp eq i64 %indvars.iv.next264.2.i.i.1, %i.czh
  br i1 %exitcond267.2.not.i.i.1, label %.split170.us.us.i.i, label %scalar.ph491, !llvm.loop !172

.split.us.us.split.split.preheader.i.i:           ; preds = %.split.us.us.i.i
  %scevgep280.i.i = getelementptr i8, ptr %.0123175.us.i.i, i64 0
  %scevgep281.i.i = getelementptr i8, ptr %.0122176.us.i.i, i64 0
  br label %.split170.us.us.i.i

.split170.us.us.i.i:                              ; preds = %.lr.ph.us.us.us.2.i.i, %scalar.ph491.prol.loopexit, %scalar.ph491, %middle.block504, %.split.us.us.split.split.preheader.i.i, %._crit_edge.us.us.us.2.i.i, %..loopexit158_crit_edge.us.us.us.1.i.i
  %.sroa.18.3.i.i = phi i32 [ %.sroa.18.0.i.i, %.split.us.us.split.split.preheader.i.i ], [ %.sroa.18.1.i.i, %..loopexit158_crit_edge.us.us.us.1.i.i ], [ %.sroa.18.1.i.i, %middle.block504 ], [ %.sroa.18.1.i.i, %._crit_edge.us.us.us.2.i.i ], [ %.sroa.18.1.i.i, %scalar.ph491.prol.loopexit ], [ %.sroa.18.1.i.i, %scalar.ph491 ], [ %.sroa.18.1.i.i, %.lr.ph.us.us.us.2.i.i ] ; 2 uses
  %.sroa.10.1.i.i = phi i32 [ %.sroa.10.0.i.i, %.split.us.us.split.split.preheader.i.i ], [ %.sroa.10.6.i.i, %..loopexit158_crit_edge.us.us.us.1.i.i ], [ %.sroa.10.6.i.i, %middle.block504 ], [ %.sroa.10.6.i.i, %._crit_edge.us.us.us.2.i.i ], [ %.sroa.10.6.i.i, %scalar.ph491.prol.loopexit ], [ %.sroa.10.6.i.i, %scalar.ph491 ], [ %.sroa.10.6.i.i, %.lr.ph.us.us.us.2.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %.split.us.us.split.split.preheader.i.i ], [ 1, %..loopexit158_crit_edge.us.us.us.1.i.i ], [ 0, %middle.block504 ], [ 0, %._crit_edge.us.us.us.2.i.i ], [ 0, %scalar.ph491.prol.loopexit ], [ 0, %scalar.ph491 ], [ 1, %.lr.ph.us.us.us.2.i.i ] ; 2 uses
  %.us-phi.i395.i = phi ptr [ %scevgep280.i.i, %.split.us.us.split.split.preheader.i.i ], [ %i.dcm, %..loopexit158_crit_edge.us.us.us.1.i.i ], [ %i.dcm, %middle.block504 ], [ %i.dcm, %._crit_edge.us.us.us.2.i.i ], [ %i.dcm, %scalar.ph491.prol.loopexit ], [ %i.dcm, %scalar.ph491 ], [ %i.dcm, %.lr.ph.us.us.us.2.i.i ] ; 2 uses
  %.us-phi183.i.i = phi ptr [ %scevgep281.i.i, %.split.us.us.split.split.preheader.i.i ], [ %i.dcn, %..loopexit158_crit_edge.us.us.us.1.i.i ], [ %i.dcn, %middle.block504 ], [ %i.dcn, %._crit_edge.us.us.us.2.i.i ], [ %i.dcn, %scalar.ph491.prol.loopexit ], [ %i.dcn, %scalar.ph491 ], [ %i.dcn, %.lr.ph.us.us.us.2.i.i ] ; 2 uses
  %indvars.iv.next283.i.i = add nsw i64 %indvars.iv282.i.i, -1
  %.not144.us.not.i.i = icmp sgt i64 %indvars.iv282.i.i, %i.czc
  br i1 %.not144.us.not.i.i, label %.split.us.us.i.i, label %._crit_edge179.i.i, !llvm.loop !173

.split.i.i:                                       ; preds = %.lr.ph178.i.i, %.loopexit157.2.i.i
  %.sroa.18.4.i.i = phi i32 [ %.sroa.18.6.i410422.i, %.loopexit157.2.i.i ], [ 0, %.lr.ph178.i.i ]
  %.sroa.10.2.i.i = phi i32 [ %.sroa.10.5.i425.i, %.loopexit157.2.i.i ], [ 0, %.lr.ph178.i.i ] ; 2 uses
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.5.i.i, %.loopexit157.2.i.i ], [ 0, %.lr.ph178.i.i ] ; 2 uses
  %indvars.iv255.i.i = phi i64 [ %indvars.iv.next256.i.i, %.loopexit157.2.i.i ], [ 12, %.lr.ph178.i.i ] ; 4 uses
  %.0122176.i.i = phi ptr [ %i.dnn, %.loopexit157.2.i.i ], [ %i.cyn, %.lr.ph178.i.i ] ; 3 uses
  %.0123175.i.i = phi ptr [ %i.dno, %.loopexit157.2.i.i ], [ %i.cym, %.lr.ph178.i.i ] ; 3 uses
  %.0131174.i.i = phi i32 [ %spec.select.i387.i, %.loopexit157.2.i.i ], [ %i.cyv, %.lr.ph178.i.i ] ; 2 uses
  %i.ddz = icmp eq i64 %indvars.iv255.i.i, 11
  %i.dea = add nsw i32 %.0131174.i.i, -3
  %spec.select.i387.i = select i1 %i.ddz, i32 %.0131174.i.i, i32 %i.dea ; 2 uses
  %i.deb = getelementptr inbounds i8, ptr %i.cyy, i64 %indvars.iv255.i.i
  %i.dec = load i8, ptr %i.deb, align 1, !tbaa !32 ; 8 uses
  %i.ded = zext i8 %i.dec to i64                  ; 37 uses
  %i.dee = sub nsw i64 0, %i.ded                  ; 12 uses
  %.not216.i.i = icmp eq i8 %i.dec, 0             ; 6 uses
  %i.def = sext i32 %spec.select.i387.i to i64    ; 3 uses
  %i.deg = getelementptr [4 x i8], ptr %.0123175.i.i, i64 %i.dee ; 14 uses
  %i.deh = getelementptr [4 x i8], ptr %.0122176.i.i, i64 %i.dee ; 15 uses
  %.not149.i.i = icmp eq i32 %.sroa.18.4.i.i, 0
  br i1 %.not149.i.i, label %.preheader159.i.i, label %.preheader156.i.i

.preheader159.i.i:                                ; preds = %.split.i.i
  br i1 %.not216.i.i, label %.loopexit157.i.i, label %.lr.ph.i390.i

bb.fb:                                            ; preds = %.lr.ph.i390.i
  %indvars.iv.next.i392.i = add nuw nsw i64 %indvars.iv.i391.i, 1 ; 2 uses
  %exitcond.not.i393.i = icmp eq i64 %indvars.iv.next.i392.i, %i.ded
  br i1 %exitcond.not.i393.i, label %._crit_edge.i394.i, label %.lr.ph.i390.i, !llvm.loop !157

.lr.ph.i390.i:                                    ; preds = %.preheader159.i.i, %bb.fb
  %indvars.iv.i391.i = phi i64 [ %indvars.iv.next.i392.i, %bb.fb ], [ 0, %.preheader159.i.i ] ; 2 uses
  %i.dei = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %indvars.iv.i391.i
  %i.dej = load float, ptr %i.dei, align 4, !tbaa !73
  %i.dek = fcmp nsz une float %i.dej, 0.000000e+00
  br i1 %i.dek, label %.preheader156.i.i, label %bb.fb

._crit_edge.i394.i:                               ; preds = %bb.fb
  %i.del = getelementptr i8, ptr %i.cyz, i64 %i.def
  %i.dem = getelementptr i8, ptr %i.del, i64 2
  %i.den = load i8, ptr %i.dem, align 1, !tbaa !32 ; 2 uses
  %i.deo = zext i8 %i.den to i32
  %.not150.i.i = icmp samesign ugt i32 %.0129.i.i, %i.deo
  br i1 %.not150.i.i, label %bb.fc, label %.preheader156.i.i

bb.fc:                                            ; preds = %._crit_edge.i394.i
  %i.dep = zext i8 %i.den to i64                  ; 2 uses
  %i.deq = getelementptr inbounds nuw [4 x i8], ptr %.0.i386.i, i64 %i.dep
  %i.der = load float, ptr %i.deq, align 4, !tbaa !73 ; 4 uses
  %i.des = getelementptr inbounds nuw [4 x i8], ptr %i.cza, i64 %i.dep
  %i.det = load float, ptr %i.des, align 4, !tbaa !73 ; 4 uses
  %min.iters.check645 = icmp ult i8 %i.dec, 8
  br i1 %min.iters.check645, label %.lr.ph163.i.i.preheader, label %vector.memcheck640

vector.memcheck640:                               ; preds = %bb.fc
  %bound0641 = icmp ult ptr %i.deg, %.0122176.i.i
  %bound1642 = icmp ult ptr %i.deh, %.0123175.i.i
  %found.conflict643 = and i1 %bound0641, %bound1642
  br i1 %found.conflict643, label %.lr.ph163.i.i.preheader, label %vector.ph646

vector.ph646:                                     ; preds = %vector.memcheck640
  %n.vec647 = and i64 %i.ded, 248                 ; 3 uses
  %broadcast.splatinsert648 = insertelement <4 x float> poison, float %i.der, i64 0
  %broadcast.splat649 = shufflevector <4 x float> %broadcast.splatinsert648, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert650 = insertelement <4 x float> poison, float %i.det, i64 0
  %broadcast.splat651 = shufflevector <4 x float> %broadcast.splatinsert650, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph646
  %index653 = phi i64 [ 0, %vector.ph646 ], [ %index.next656, %vector.body652 ] ; 3 uses
  %i.deu = getelementptr inbounds nuw [4 x i8], ptr %i.deg, i64 %index653 ; 3 uses
  %i.dev = getelementptr inbounds nuw i8, ptr %i.deu, i64 16 ; 2 uses
  %wide.load654 = load <4 x float>, ptr %i.deu, align 4, !tbaa !73, !alias.scope !269, !noalias !270 ; 2 uses
  %wide.load655 = load <4 x float>, ptr %i.dev, align 4, !tbaa !73, !alias.scope !269, !noalias !270 ; 2 uses
  %i.dew = fmul nsz <4 x float> %broadcast.splat649, %wide.load654
  %i.dex = fmul nsz <4 x float> %broadcast.splat649, %wide.load655
  store <4 x float> %i.dew, ptr %i.deu, align 4, !tbaa !73, !alias.scope !269, !noalias !270
  store <4 x float> %i.dex, ptr %i.dev, align 4, !tbaa !73, !alias.scope !269, !noalias !270
  %i.dey = fmul nsz <4 x float> %broadcast.splat651, %wide.load654
  %i.dez = fmul nsz <4 x float> %broadcast.splat651, %wide.load655
  %i.dfa = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %index653 ; 2 uses
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dfa, i64 16
  store <4 x float> %i.dey, ptr %i.dfa, align 4, !tbaa !73, !alias.scope !270
  store <4 x float> %i.dez, ptr %i.dfb, align 4, !tbaa !73, !alias.scope !270
  %index.next656 = add nuw i64 %index653, 8       ; 2 uses
  %i.dfc = icmp eq i64 %index.next656, %n.vec647
  br i1 %i.dfc, label %middle.block657, label %vector.body652, !llvm.loop !177

middle.block657:                                  ; preds = %vector.body652
  %cmp.n658 = icmp eq i64 %n.vec647, %i.ded
  br i1 %cmp.n658, label %.loopexit157.i.i, label %.lr.ph163.i.i.preheader

.lr.ph163.i.i.preheader:                          ; preds = %vector.memcheck640, %bb.fc, %middle.block657
  %indvars.iv247.i.i.ph = phi i64 [ 0, %vector.memcheck640 ], [ 0, %bb.fc ], [ %n.vec647, %middle.block657 ] ; 5 uses
  %xtraiter847 = and i64 %i.ded, 1
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %.lr.ph163.i.i.prol.loopexit, label %.lr.ph163.i.i.prol

.lr.ph163.i.i.prol:                               ; preds = %.lr.ph163.i.i.preheader
  %i.dfd = getelementptr inbounds nuw [4 x i8], ptr %i.deg, i64 %indvars.iv247.i.i.ph ; 2 uses
  %i.dfe = load float, ptr %i.dfd, align 4, !tbaa !73 ; 2 uses
  %i.dff = fmul nsz float %i.der, %i.dfe
  store float %i.dff, ptr %i.dfd, align 4, !tbaa !73
  %i.dfg = fmul nsz float %i.det, %i.dfe
  %i.dfh = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %indvars.iv247.i.i.ph
  store float %i.dfg, ptr %i.dfh, align 4, !tbaa !73
  %indvars.iv.next248.i.i.prol = or disjoint i64 %indvars.iv247.i.i.ph, 1
  br label %.lr.ph163.i.i.prol.loopexit

.lr.ph163.i.i.prol.loopexit:                      ; preds = %.lr.ph163.i.i.prol, %.lr.ph163.i.i.preheader
  %indvars.iv247.i.i.unr = phi i64 [ %indvars.iv247.i.i.ph, %.lr.ph163.i.i.preheader ], [ %indvars.iv.next248.i.i.prol, %.lr.ph163.i.i.prol ]
  %i.dfi = add nsw i64 %i.ded, -1
  %i.dfj = icmp eq i64 %indvars.iv247.i.i.ph, %i.dfi
  br i1 %i.dfj, label %.loopexit157.i.i, label %.lr.ph163.i.i

.lr.ph163.i.i:                                    ; preds = %.lr.ph163.i.i.prol.loopexit, %.lr.ph163.i.i
  %indvars.iv247.i.i = phi i64 [ %indvars.iv.next248.i.i.1, %.lr.ph163.i.i ], [ %indvars.iv247.i.i.unr, %.lr.ph163.i.i.prol.loopexit ] ; 4 uses
  %i.dfk = getelementptr inbounds nuw [4 x i8], ptr %i.deg, i64 %indvars.iv247.i.i ; 2 uses
  %i.dfl = load float, ptr %i.dfk, align 4, !tbaa !73 ; 2 uses
  %i.dfm = fmul nsz float %i.der, %i.dfl
  store float %i.dfm, ptr %i.dfk, align 4, !tbaa !73
  %i.dfn = fmul nsz float %i.det, %i.dfl
  %i.dfo = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %indvars.iv247.i.i
  store float %i.dfn, ptr %i.dfo, align 4, !tbaa !73
  %indvars.iv.next248.i.i = add nuw nsw i64 %indvars.iv247.i.i, 1 ; 2 uses
  %i.dfp = getelementptr inbounds nuw [4 x i8], ptr %i.deg, i64 %indvars.iv.next248.i.i ; 2 uses
  %i.dfq = load float, ptr %i.dfp, align 4, !tbaa !73 ; 2 uses
  %i.dfr = fmul nsz float %i.der, %i.dfq
  store float %i.dfr, ptr %i.dfp, align 4, !tbaa !73
  %i.dfs = fmul nsz float %i.det, %i.dfq
  %i.dft = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %indvars.iv.next248.i.i
  store float %i.dfs, ptr %i.dft, align 4, !tbaa !73
  %indvars.iv.next248.i.i.1 = add nuw nsw i64 %indvars.iv247.i.i, 2 ; 2 uses
  %exitcond251.not.i.i.1 = icmp eq i64 %indvars.iv.next248.i.i.1, %i.ded
  br i1 %exitcond251.not.i.i.1, label %.loopexit157.i.i, label %.lr.ph163.i.i, !llvm.loop !178

.preheader156.i.i:                                ; preds = %.lr.ph.i390.i, %._crit_edge.i394.i, %.split.i.i
  %.sroa.18.5.i.i = phi i32 [ 0, %._crit_edge.i394.i ], [ 1, %.split.i.i ], [ 1, %.lr.ph.i390.i ] ; 3 uses
  br i1 %.not216.i.i, label %.loopexit157.i.i, label %.lr.ph165.i.i.preheader

.lr.ph165.i.i.preheader:                          ; preds = %.preheader156.i.i
  %min.iters.check629 = icmp ult i8 %i.dec, 4
  br i1 %min.iters.check629, label %.lr.ph165.i.i.preheader791, label %vector.memcheck624

vector.memcheck624:                               ; preds = %.lr.ph165.i.i.preheader
  %bound0625 = icmp ult ptr %i.deg, %.0122176.i.i
  %bound1626 = icmp ult ptr %i.deh, %.0123175.i.i
  %found.conflict627 = and i1 %bound0625, %bound1626
  br i1 %found.conflict627, label %.lr.ph165.i.i.preheader791, label %vector.ph630

vector.ph630:                                     ; preds = %vector.memcheck624
  %n.vec631 = and i64 %i.ded, 252                 ; 3 uses
  br label %vector.body632

vector.body632:                                   ; preds = %vector.body632, %vector.ph630
  %index633 = phi i64 [ 0, %vector.ph630 ], [ %index.next636, %vector.body632 ] ; 3 uses
  %i.dfu = getelementptr inbounds nuw [4 x i8], ptr %i.deg, i64 %index633 ; 2 uses
  %wide.load634 = load <4 x float>, ptr %i.dfu, align 4, !tbaa !73, !alias.scope !271, !noalias !272 ; 2 uses
  %i.dfv = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %index633 ; 2 uses
  %wide.load635 = load <4 x float>, ptr %i.dfv, align 4, !tbaa !73, !alias.scope !272 ; 2 uses
  %i.dfw = fadd nsz <4 x float> %wide.load634, %wide.load635
  %i.dfx = fmul nsz <4 x float> %i.dfw, splat (float f0x3F3504F3)
  store <4 x float> %i.dfx, ptr %i.dfu, align 4, !tbaa !73, !alias.scope !271, !noalias !272
  %i.dfy = fsub nsz <4 x float> %wide.load634, %wide.load635
  %i.dfz = fmul nsz <4 x float> %i.dfy, splat (float f0x3F3504F3)
  store <4 x float> %i.dfz, ptr %i.dfv, align 4, !tbaa !73, !alias.scope !272
  %index.next636 = add nuw i64 %index633, 4       ; 2 uses
  %i.dga = icmp eq i64 %index.next636, %n.vec631
  br i1 %i.dga, label %middle.block637, label %vector.body632, !llvm.loop !182

middle.block637:                                  ; preds = %vector.body632
  %cmp.n638 = icmp eq i64 %n.vec631, %i.ded
  br i1 %cmp.n638, label %.loopexit157.i.thread.i, label %.lr.ph165.i.i.preheader791

.lr.ph165.i.i.preheader791:                       ; preds = %vector.memcheck624, %.lr.ph165.i.i.preheader, %middle.block637
  %indvars.iv242.i.i.ph = phi i64 [ 0, %vector.memcheck624 ], [ 0, %.lr.ph165.i.i.preheader ], [ %n.vec631, %middle.block637 ] ; 5 uses
  %xtraiter849 = and i64 %i.ded, 1
  %lcmp.mod850.not = icmp eq i64 %xtraiter849, 0
  br i1 %lcmp.mod850.not, label %.lr.ph165.i.i.prol.loopexit, label %.lr.ph165.i.i.prol

.lr.ph165.i.i.prol:                               ; preds = %.lr.ph165.i.i.preheader791
  %i.dgb = getelementptr inbounds nuw [4 x i8], ptr %i.deg, i64 %indvars.iv242.i.i.ph ; 2 uses
  %i.dgc = load float, ptr %i.dgb, align 4, !tbaa !73 ; 2 uses
  %i.dgd = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %indvars.iv242.i.i.ph ; 2 uses
  %i.dge = load float, ptr %i.dgd, align 4, !tbaa !73 ; 2 uses
  %i.dgf = fadd nsz float %i.dgc, %i.dge
  %i.dgg = fmul nsz float %i.dgf, f0x3F3504F3
  store float %i.dgg, ptr %i.dgb, align 4, !tbaa !73
end_hunk_0
