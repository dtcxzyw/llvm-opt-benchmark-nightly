Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@jpeg2000_decode_packet:bb.a
  %i.adr = sub i64 %i.adk, %i.adq
  %i.ads = icmp slt i64 %i.adr, 1
  br i1 %i.ads, label %bytestream2_get_byte.exit.thread.i745, label %bytestream2_get_byte.exit.i741

bytestream2_get_byte.exit.thread.i745:            ; preds = %bb.eh
  store ptr %i.adj, ptr %i.cj, align 8, !tbaa !38
  br label %bb.ei

bytestream2_get_byte.exit.i741:                   ; preds = %bb.eh
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adl, i64 1 ; 2 uses
  store ptr %i.adt, ptr %i.cj, align 8, !tbaa !42
  %i.adu = load i8, ptr %i.adl, align 1, !tbaa !43
  %.fr.i742 = freeze i8 %i.adu
  %.not.i743 = icmp eq i8 %.fr.i742, -1
  %spec.select.i744 = select i1 %.not.i743, i32 7, i32 8
  br label %bb.ei

bb.ei:                                            ; preds = %bytestream2_get_byte.exit.i741, %bytestream2_get_byte.exit.thread.i745, %bb.eg
  %i.adv = phi ptr [ %i.adl, %bb.eg ], [ %i.adj, %bytestream2_get_byte.exit.thread.i745 ], [ %i.adt, %bytestream2_get_byte.exit.i741 ] ; 3 uses
  %i.adw = phi i32 [ %i.adm, %bb.eg ], [ 8, %bytestream2_get_byte.exit.thread.i745 ], [ %spec.select.i744, %bytestream2_get_byte.exit.i741 ]
  %i.adx = add nsw i32 %i.adw, -1                 ; 3 uses
  store i32 %i.adx, ptr %i.ci, align 8, !tbaa !84
  %i.ady = ptrtoint ptr %i.adv to i64
  %i.adz = sub i64 %i.adk, %i.ady
  %i.aea = icmp slt i64 %i.adz, 1
  br i1 %i.aea, label %bytestream2_peek_byte.exit.i737, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aeb = load i8, ptr %i.adv, align 1, !tbaa !43
  %i.aec = zext i8 %i.aeb to i32
  br label %bytestream2_peek_byte.exit.i737

bytestream2_peek_byte.exit.i737:                  ; preds = %bb.ej, %bb.ei
  %.0.i11.i738 = phi i32 [ %i.aec, %bb.ej ], [ 0, %bb.ei ]
  %i.aed = lshr i32 %.0.i11.i738, %i.adx
  %i.aee = and i32 %i.aed, 1
  %i.aef = or disjoint i32 %i.aee, %i.ado         ; 2 uses
  %i.aeg = icmp samesign ugt i32 %.in.i735, 1
  br i1 %i.aeg, label %bb.eg, label %get_bits.exit746, !llvm.loop !316

get_bits.exit746:                                 ; preds = %bytestream2_peek_byte.exit.i737, %bb.ef
  %.0.lcssa.i740 = phi i32 [ 0, %bb.ef ], [ %i.aef, %bytestream2_peek_byte.exit.i737 ] ; 2 uses
  %i.aeh = sub nsw i32 %.0463948, %i.adc          ; 2 uses
  %i.aei = load i32, ptr %i.acz, align 8, !tbaa !46
  %i.aej = add i32 %i.aei, %.0.lcssa.i740
  store i32 %i.aej, ptr %i.acz, align 8, !tbaa !46
  %i.aek = trunc nuw nsw i32 %i.adc to i8
  %i.ael = add i8 %i.adb, %i.aek                  ; 2 uses
  store i8 %i.ael, ptr %i.er, align 8, !tbaa !115
  %i.aem = trunc i32 %.0.lcssa.i740 to i16
  %i.aen = add i8 %i.ada, 1                       ; 3 uses
  store i8 %i.aen, ptr %i.rd, align 8, !tbaa !337
  %i.aeo = zext i8 %i.ada to i64
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %i.acm, i64 %i.aeo
  store i16 %i.aem, ptr %i.aep, align 2, !tbaa !61
  %i.aeq = icmp sgt i32 %i.aeh, 0
  br i1 %i.aeq, label %bb.ef, label %.loopexit873, !llvm.loop !320

bb.ek:                                            ; preds = %bb.ed, %get_bits.exit698
  %i.aer = sub nsw i32 %.0.i591, %.3451           ; 2 uses
  %i.aes = icmp sgt i32 %i.aer, 0
  br i1 %i.aes, label %.lr.ph955, label %.loopexit873

.lr.ph955:                                        ; preds = %bb.ek, %get_bits.exit762
  %.4953 = phi i8 [ %.5, %get_bits.exit762 ], [ %.2446, %bb.ek ] ; 3 uses
  %.1464952 = phi i32 [ %i.agg, %get_bits.exit762 ], [ %i.aer, %bb.ek ] ; 2 uses
  br i1 %.not555, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.lr.ph955
  %.not556 = icmp eq i32 %.1464952, 1
  %i.aet = zext nneg i8 %.4953 to i32
  %i.aeu = select i1 %.not556, i32 1, i32 %i.aet  ; 2 uses
  %i.aev = sub i8 3, %.4953
  %i.aew = load i8, ptr %i.qs, align 1, !tbaa !336
  %i.aex = zext nneg i32 %i.aeu to i64
  %i.aey = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aex
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !43
  %i.afa = add i8 %i.aez, %i.aew
  br label %bb.ep

bb.em:                                            ; preds = %.lr.ph955
  %i.afb = load i8, ptr %i.rw, align 4, !tbaa !114
  %i.afc = and i8 %i.afb, 4
  %i.afd = icmp eq i8 %i.afc, 0
  br i1 %i.afd, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.afe = load ptr, ptr %i.dr, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.afe, i32 noundef 24, ptr noundef nonnull @.str.91) #10
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.aff = load i8, ptr %i.qs, align 1, !tbaa !336
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.el
  %.7 = phi i8 [ %i.afa, %bb.el ], [ %i.aff, %bb.eo ] ; 2 uses
  %.4452 = phi i32 [ %i.aeu, %bb.el ], [ 1, %bb.eo ] ; 2 uses
  %.5 = phi i8 [ %i.aev, %bb.el ], [ %.4953, %bb.eo ]
  %.not17.i747 = icmp eq i8 %.7, 0
  br i1 %.not17.i747, label %get_bits.exit762, label %.lr.ph.i748

.lr.ph.i748:                                      ; preds = %bb.ep
  %i.afg = zext i8 %.7 to i32
  %i.afh = load ptr, ptr %i.ck, align 8, !tbaa !40 ; 3 uses
  %i.afi = ptrtoint ptr %i.afh to i64             ; 2 uses
  %.promoted.i749 = load i32, ptr %i.ci, align 8, !tbaa !84
  %.promoted16.i750 = load ptr, ptr %i.cj, align 8, !tbaa !42
  br label %bb.eq

bb.eq:                                            ; preds = %bytestream2_peek_byte.exit.i753, %.lr.ph.i748
  %i.afj = phi ptr [ %.promoted16.i750, %.lr.ph.i748 ], [ %i.aft, %bytestream2_peek_byte.exit.i753 ] ; 4 uses
  %i.afk = phi i32 [ %.promoted.i749, %.lr.ph.i748 ], [ %i.afv, %bytestream2_peek_byte.exit.i753 ] ; 2 uses
  %.in.i751 = phi i32 [ %i.afg, %.lr.ph.i748 ], [ %i.afl, %bytestream2_peek_byte.exit.i753 ] ; 2 uses
  %.015.i752 = phi i32 [ 0, %.lr.ph.i748 ], [ %i.agd, %bytestream2_peek_byte.exit.i753 ]
  %i.afl = add nsw i32 %.in.i751, -1
  %i.afm = shl i32 %.015.i752, 1
  %i.afn = icmp eq i32 %i.afk, 0
  br i1 %i.afn, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.afo = ptrtoint ptr %i.afj to i64
  %i.afp = sub i64 %i.afi, %i.afo
  %i.afq = icmp slt i64 %i.afp, 1
  br i1 %i.afq, label %bytestream2_get_byte.exit.thread.i761, label %bytestream2_get_byte.exit.i757

bytestream2_get_byte.exit.thread.i761:            ; preds = %bb.er
  store ptr %i.afh, ptr %i.cj, align 8, !tbaa !38
  br label %bb.es

bytestream2_get_byte.exit.i757:                   ; preds = %bb.er
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afj, i64 1 ; 2 uses
  store ptr %i.afr, ptr %i.cj, align 8, !tbaa !42
  %i.afs = load i8, ptr %i.afj, align 1, !tbaa !43
  %.fr.i758 = freeze i8 %i.afs
  %.not.i759 = icmp eq i8 %.fr.i758, -1
  %spec.select.i760 = select i1 %.not.i759, i32 7, i32 8
  br label %bb.es

bb.es:                                            ; preds = %bytestream2_get_byte.exit.i757, %bytestream2_get_byte.exit.thread.i761, %bb.eq
  %i.aft = phi ptr [ %i.afj, %bb.eq ], [ %i.afh, %bytestream2_get_byte.exit.thread.i761 ], [ %i.afr, %bytestream2_get_byte.exit.i757 ] ; 3 uses
  %i.afu = phi i32 [ %i.afk, %bb.eq ], [ 8, %bytestream2_get_byte.exit.thread.i761 ], [ %spec.select.i760, %bytestream2_get_byte.exit.i757 ]
  %i.afv = add nsw i32 %i.afu, -1                 ; 3 uses
  store i32 %i.afv, ptr %i.ci, align 8, !tbaa !84
  %i.afw = ptrtoint ptr %i.aft to i64
  %i.afx = sub i64 %i.afi, %i.afw
  %i.afy = icmp slt i64 %i.afx, 1
  br i1 %i.afy, label %bytestream2_peek_byte.exit.i753, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.afz = load i8, ptr %i.aft, align 1, !tbaa !43
  %i.aga = zext i8 %i.afz to i32
  br label %bytestream2_peek_byte.exit.i753

bytestream2_peek_byte.exit.i753:                  ; preds = %bb.et, %bb.es
  %.0.i11.i754 = phi i32 [ %i.aga, %bb.et ], [ 0, %bb.es ]
  %i.agb = lshr i32 %.0.i11.i754, %i.afv
  %i.agc = and i32 %i.agb, 1
  %i.agd = or disjoint i32 %i.agc, %i.afm         ; 2 uses
  %i.age = icmp samesign ugt i32 %.in.i751, 1
  br i1 %i.age, label %bb.eq, label %get_bits.exit762.loopexit, !llvm.loop !316

get_bits.exit762.loopexit:                        ; preds = %bytestream2_peek_byte.exit.i753
  %i.agf = trunc i32 %i.agd to i16
  br label %get_bits.exit762

get_bits.exit762:                                 ; preds = %get_bits.exit762.loopexit, %bb.ep
  %.0.lcssa.i756 = phi i16 [ 0, %bb.ep ], [ %i.agf, %get_bits.exit762.loopexit ]
  %i.agg = sub nsw i32 %.1464952, %.4452          ; 2 uses
  %i.agh = load i8, ptr %i.er, align 8, !tbaa !115
  %i.agi = trunc nuw nsw i32 %.4452 to i8
  %i.agj = add i8 %i.agh, %i.agi
  store i8 %i.agj, ptr %i.er, align 8, !tbaa !115
  %i.agk = load ptr, ptr %i.rf, align 8, !tbaa !339 ; 2 uses
  %i.agl = load i8, ptr %i.rd, align 8, !tbaa !337 ; 2 uses
  %i.agm = add i8 %i.agl, 1                       ; 2 uses
  store i8 %i.agm, ptr %i.rd, align 8, !tbaa !337
  %i.agn = zext i8 %i.agl to i64
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %i.agk, i64 %i.agn
  store i16 %.0.lcssa.i756, ptr %i.ago, align 2, !tbaa !61
  %i.agp = icmp sgt i32 %i.agg, 0
  br i1 %i.agp, label %.lr.ph955, label %.loopexit873, !llvm.loop !321

.loopexit873:                                     ; preds = %get_bits.exit746, %get_bits.exit762, %bb.ee, %bb.ek
  %i.agq = phi ptr [ %i.agk, %get_bits.exit762 ], [ %i.acm, %bb.ek ], [ %i.acm, %bb.ee ], [ %i.acm, %get_bits.exit746 ] ; 2 uses
  %i.agr = phi i8 [ %i.agm, %get_bits.exit762 ], [ %i.aco, %bb.ek ], [ %i.aco, %bb.ee ], [ %i.aen, %get_bits.exit746 ] ; 3 uses
  %.not981 = icmp eq i8 %i.agr, 0
  br i1 %.not981, label %.thread825, label %.lr.ph959

.lr.ph959:                                        ; preds = %.loopexit873
  %wide.trip.count = zext i8 %i.agr to i64        ; 3 uses
  %min.iters.check = icmp ult i8 %i.agr, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph959
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %vec.phi1253 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %i.ags = getelementptr inbounds nuw [2 x i8], ptr %i.agq, i64 %index ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %wide.load = load <4 x i16>, ptr %i.ags, align 2, !tbaa !61
  %wide.load1254 = load <4 x i16>, ptr %i.agt, align 2, !tbaa !61
  %9 = zext <4 x i16> %wide.load to <4 x i32>
  %10 = zext <4 x i16> %wide.load1254 to <4 x i32>
  %11 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %9) ; 2 uses
  %12 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi1253, <4 x i32> %10) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.agu = icmp eq i64 %index.next, %n.vec
  br i1 %i.agu, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %11, <4 x i32> %12)
  %13 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge960, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph959, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph959 ], [ %n.vec, %middle.block ]
  %.0441956.ph = phi i32 [ 0, %.lr.ph959 ], [ %13, %middle.block ]
  br label %scalar.ph

._crit_edge960:                                   ; preds = %scalar.ph, %middle.block
  %..0441.lcssa = phi i32 [ %13, %middle.block ], [ %..0441, %scalar.ph ]
  %i.agv = zext nneg i32 %..0441.lcssa to i64     ; 3 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 3 uses
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !340 ; 3 uses
  %i.agy = icmp ult i64 %i.agx, %i.agv
  br i1 %i.agy, label %bb.eu, label %bb.ew

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0441956 = phi i32 [ %..0441, %scalar.ph ], [ %.0441956.ph, %scalar.ph.preheader ]
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %i.agq, i64 %indvars.iv
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !61
  %i.ahb = zext i16 %i.aha to i32
  %..0441 = tail call i32 @llvm.umax.i32(i32 %.0441956, i32 %i.ahb) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1022.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1022.not, label %._crit_edge960, label %scalar.ph, !llvm.loop !323

bb.eu:                                            ; preds = %._crit_edge960
  %i.ahc = shl nuw nsw i64 %i.agx, 1
  %. = tail call i64 @llvm.umax.i64(i64 %i.ahc, i64 %i.agv) ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 2 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !118
  %i.ahf = tail call ptr @av_realloc(ptr noundef %i.ahe, i64 noundef %.) #10 ; 2 uses
  %.not557 = icmp eq ptr %i.ahf, null
  br i1 %.not557, label %._crit_edge1046, label %bb.ev

._crit_edge1046:                                  ; preds = %bb.eu
  %.pre1047 = load i64, ptr %i.agw, align 8, !tbaa !340
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store ptr %i.ahf, ptr %i.ahd, align 8, !tbaa !118
  store i64 %., ptr %i.agw, align 8, !tbaa !340
  br label %.thread825

bb.ew:                                            ; preds = %._crit_edge1046, %._crit_edge960
  %i.ahg = phi i64 [ %.pre1047, %._crit_edge1046 ], [ %i.agx, %._crit_edge960 ] ; 2 uses
  %i.ahh = icmp ult i64 %i.ahg, %i.agv
  br i1 %i.ahh, label %bb.ex, label %.thread825

bb.ex:                                            ; preds = %bb.ew
  %i.ahi = load ptr, ptr %i.dr, align 8, !tbaa !37
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.ahi, ptr noundef nonnull @.str.92, i64 noundef %i.ahg) #10
  br label %.loopexit884

.thread825:                                       ; preds = %.loopexit873, %bb.ev, %bb.z, %bb.ew, %bytestream2_peek_byte.exit.i580
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 1 ; 2 uses
  %exitcond1027.not = icmp eq i64 %indvars.iv.next1024, %wide.trip.count1026
  br i1 %exitcond1027.not, label %.loopexit883.loopexit, label %bb.u, !llvm.loop !324

.loopexit883.loopexit:                            ; preds = %.thread825
  %.pre1048 = load i8, ptr %4, align 8, !tbaa !96
  br label %.loopexit883

.loopexit883:                                     ; preds = %.loopexit883.loopexit, %bb.t, %bb.r, %bb.s
  %i.ahj = phi i8 [ %.pre1048, %.loopexit883.loopexit ], [ %i.ds, %bb.t ], [ %i.ds, %bb.r ], [ %i.ds, %bb.s ] ; 2 uses
  %indvars.iv.next1029 = add nuw nsw i64 %indvars.iv1028, 1 ; 2 uses
  %i.ahk = zext i8 %i.ahj to i64
  %i.ahl = icmp samesign ult i64 %indvars.iv.next1029, %i.ahk
  br i1 %i.ahl, label %bb.r, label %._crit_edge967.loopexit, !llvm.loop !325

._crit_edge967.loopexit:                          ; preds = %.loopexit883
  %.pre1049 = load ptr, ptr %i.ck, align 8, !tbaa !40 ; 2 uses
  %.pre1050 = load ptr, ptr %i.cj, align 8, !tbaa !38 ; 2 uses
  %.pre1053 = ptrtoint ptr %.pre1049 to i64       ; 2 uses
  %.pre1054 = ptrtoint ptr %.pre1050 to i64
  %.pre1056 = sub i64 %.pre1053, %.pre1054
  %i.ahm = icmp slt i64 %.pre1056, 1
  br label %._crit_edge967

._crit_edge967:                                   ; preds = %._crit_edge967.loopexit, %.preheader885
  %.pre-phi1057 = phi i1 [ %i.ahm, %._crit_edge967.loopexit ], [ false, %.preheader885 ]
  %.pre-phi = phi i64 [ %.pre1053, %._crit_edge967.loopexit ], [ %i.cm, %.preheader885 ] ; 2 uses
  %i.ahn = phi ptr [ %.pre1050, %._crit_edge967.loopexit ], [ %i.ct, %.preheader885 ] ; 2 uses
  %i.aho = phi ptr [ %.pre1049, %._crit_edge967.loopexit ], [ %i.cl, %.preheader885 ]
  br i1 %.pre-phi1057, label %.sink.split.i765, label %bytestream2_get_byte.exit.i763

bytestream2_get_byte.exit.i763:                   ; preds = %._crit_edge967
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 1 ; 4 uses
  store ptr %i.ahp, ptr %i.cj, align 8, !tbaa !42
  %i.ahq = load i8, ptr %i.ahn, align 1, !tbaa !43
  %i.ahr = icmp eq i8 %i.ahq, -1
  br i1 %i.ahr, label %bb.ey, label %jpeg2000_flush.exit767

bb.ey:                                            ; preds = %bytestream2_get_byte.exit.i763
  %i.ahs = ptrtoint ptr %i.ahp to i64
  %i.aht = sub i64 %.pre-phi, %i.ahs
  %..i.i764 = tail call i64 @llvm.smin.i64(i64 %i.aht, i64 1)
  %i.ahu = getelementptr inbounds i8, ptr %i.ahp, i64 %..i.i764
  br label %.sink.split.i765

.sink.split.i765:                                 ; preds = %bb.ey, %._crit_edge967
  %.sink.i766 = phi ptr [ %i.ahu, %bb.ey ], [ %i.aho, %._crit_edge967 ] ; 2 uses
  store ptr %.sink.i766, ptr %i.cj, align 8, !tbaa !38
  br label %jpeg2000_flush.exit767

jpeg2000_flush.exit767:                           ; preds = %bytestream2_get_byte.exit.i763, %.sink.split.i765
  %i.ahv = phi ptr [ %i.ahp, %bytestream2_get_byte.exit.i763 ], [ %.sink.i766, %.sink.split.i765 ] ; 4 uses
  store i32 8, ptr %i.ci, align 8, !tbaa !84
  %i.ahw = getelementptr inbounds nuw i8, ptr %3, i64 11 ; 3 uses
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !63
  %i.ahy = and i8 %i.ahx, 4
  %.not523 = icmp eq i8 %i.ahy, 0
  br i1 %.not523, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %jpeg2000_flush.exit767
  %i.ahz = ptrtoint ptr %i.ahv to i64
  %i.aia = sub i64 %.pre-phi, %i.ahz              ; 2 uses
  %i.aib = icmp slt i64 %i.aia, 2
  br i1 %i.aib, label %.thread844, label %bytestream2_peek_be16.exit562

.thread844:                                       ; preds = %bb.ez
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !37
  br label %bytestream2_peek_be32.exit566

bytestream2_peek_be16.exit562:                    ; preds = %bb.ez
  %i.aie = load i16, ptr %i.ahv, align 1, !tbaa !43
  %i.aif = icmp eq i16 %i.aie, -27905
  br i1 %i.aif, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bytestream2_peek_be16.exit562
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahv, i64 2
  store ptr %i.aig, ptr %i.cj, align 8, !tbaa !38
  br label %bb.fd

bb.fb:                                            ; preds = %bytestream2_peek_be16.exit562
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !37 ; 2 uses
  %i.aij = icmp samesign ult i64 %i.aia, 4
  br i1 %i.aij, label %bytestream2_peek_be32.exit566, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aik = load i32, ptr %i.ahv, align 1, !tbaa !43
  %i.ail = tail call i32 @llvm.bswap.i32(i32 %i.aik)
  br label %bytestream2_peek_be32.exit566

bytestream2_peek_be32.exit566:                    ; preds = %.thread844, %bb.fb, %bb.fc
  %i.aim = phi ptr [ %i.aii, %bb.fc ], [ %i.aii, %bb.fb ], [ %i.aid, %.thread844 ]
  %.0.i565 = phi i32 [ %i.ail, %bb.fc ], [ 0, %bb.fb ], [ 0, %.thread844 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aim, i32 noundef 16, ptr noundef nonnull @.str.93, i32 noundef %.0.i565) #10
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fa, %bytestream2_peek_be32.exit566, %jpeg2000_flush.exit767
  %i.ain = load i8, ptr %i.k, align 4, !tbaa !53
  %.not524 = icmp eq i8 %i.ain, 0
  br i1 %.not524, label %bb.fk, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aio = load i32, ptr %2, align 4, !tbaa !46
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr [64 x i8], ptr %1, i64 %i.aip
  %i.air = getelementptr i8, ptr %i.aiq, i64 1912
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.air, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !tbaa.struct !330
  %i.ais = getelementptr inbounds nuw i8, ptr %1, i64 1896 ; 2 uses
  %i.ait = load i32, ptr %2, align 4, !tbaa !46
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds [64 x i8], ptr %i.ais, i64 %i.aiu
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aiw, i64 24, i1 false), !tbaa.struct !330
  %i.aix = load ptr, ptr %i.ck, align 8, !tbaa !40 ; 4 uses
  %i.aiy = load ptr, ptr %i.cj, align 8, !tbaa !38 ; 4 uses
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = ptrtoint ptr %i.aiy to i64
  %i.ajb = sub i64 %i.aiz, %i.aja
  %i.ajc = and i64 %i.ajb, 4294967295
  %i.ajd = icmp eq i64 %i.ajc, 0
  br i1 %i.ajd, label %bb.ff, label %._crit_edge.i768

bb.ff:                                            ; preds = %bb.fe
  %i.aje = load i32, ptr %i.ci, align 8, !tbaa !84
  %.not.i775 = icmp eq i32 %i.aje, 8
  br i1 %.not.i775, label %.lr.ph.i776, label %._crit_edge.i768

.lr.ph.i776:                                      ; preds = %bb.ff
  %i.ajf = load i32, ptr %2, align 4, !tbaa !46   ; 2 uses
  %i.ajg = icmp ult i32 %i.ajf, 31
  br i1 %i.ajg, label %.lr.ph.split.i777.preheader, label %._crit_edge.i768

.lr.ph.splitthread-pre-split.i779:                ; preds = %bb.fg
  %.pr.i780 = load i32, ptr %2, align 4, !tbaa !46 ; 2 uses
  %i.ajh = icmp ult i32 %.pr.i780, 31
  br i1 %i.ajh, label %.lr.ph.split.i777.preheader, label %._crit_edge.i768

.lr.ph.split.i777.preheader:                      ; preds = %.lr.ph.i776, %.lr.ph.splitthread-pre-split.i779
  %i.aji = phi i32 [ %.pr.i780, %.lr.ph.splitthread-pre-split.i779 ], [ %i.ajf, %.lr.ph.i776 ]
  %i.ajj = add nuw nsw i32 %i.aji, 1              ; 2 uses
  store i32 %i.ajj, ptr %2, align 4, !tbaa !46
  %i.ajk = zext nneg i32 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw [64 x i8], ptr %i.ais, i64 %i.ajk
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ajm, i64 24, i1 false), !tbaa.struct !330
  %i.ajn = load ptr, ptr %i.ck, align 8, !tbaa !40 ; 4 uses
  %i.ajo = load ptr, ptr %i.cj, align 8, !tbaa !38 ; 4 uses
  %i.ajp = ptrtoint ptr %i.ajn to i64
  %i.ajq = ptrtoint ptr %i.ajo to i64
  %i.ajr = sub i64 %i.ajp, %i.ajq
  %i.ajs = and i64 %i.ajr, 4294967295
  %i.ajt = icmp eq i64 %i.ajs, 0
  br i1 %i.ajt, label %bb.fg, label %._crit_edge.i768
end_hunk_0
begin_hunk_1_@tag_tree_decode:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.c, i32 noundef 16, ptr noundef nonnull @.str.97) #10
  br label %.thread

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ -1, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.i, %bb.c ], [ %1, %bb.a ]   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !344
  %.not42 = icmp eq i8 %i.f, 0
  br i1 %.not42, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.d, ptr %i.g, align 8, !tbaa !345
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !346  ; 2 uses
  %.not41 = icmp eq ptr %i.i, null
  br i1 %.not41, label %.critedge, label %.preheader, !llvm.loop !341

.critedge:                                        ; preds = %.preheader, %bb.c
  %.02959.in = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv, %.preheader ] ; 2 uses
  %.028.in = load i8, ptr %i.d, align 8, !tbaa !347
  %.028 = zext i8 %.028.in to i32                 ; 3 uses
  %i.j = icmp sgt i32 %2, %.028
  %i.k = and i64 %.02959.in, 2147483648
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %.lr.ph69, label %.thread

.lr.ph69:                                         ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = and i64 %.02959.in, 2147483647
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph69, %.loopexit
  %indvars.iv79 = phi i64 [ %i.q, %.lr.ph69 ], [ %indvars.iv.next80, %.loopexit ] ; 3 uses
  %.168 = phi i32 [ %.028, %.lr.ph69 ], [ %.356, %.loopexit ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv79
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !345  ; 4 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !347
  %i.u = zext i8 %i.t to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.168, i32 %i.u) ; 3 uses
  %i.v = icmp slt i32 %spec.select, %2
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !40   ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %.promoted = load i32, ptr %i.n, align 8, !tbaa !84
  %.promoted64 = load ptr, ptr %i.o, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %i.y = phi ptr [ %.promoted64, %.lr.ph ], [ %i.ag, %bb.i ] ; 4 uses
  %i.z = phi i32 [ %.promoted, %.lr.ph ], [ %i.ai, %bb.i ] ; 2 uses
  %.363 = phi i32 [ %spec.select, %.lr.ph ], [ %i.at, %bb.i ] ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.x, %i.ab
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %bytestream2_get_byte.exit.thread.i, label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.thread.i:               ; preds = %bb.f
  store ptr %i.w, ptr %i.o, align 8, !tbaa !38
  br label %bb.g

bytestream2_get_byte.exit.i:                      ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.ae, ptr %i.o, align 8, !tbaa !42
  %i.af = load i8, ptr %i.y, align 1, !tbaa !43
  %.fr.i = freeze i8 %i.af
  %.not.i = icmp eq i8 %.fr.i, -1
  %spec.select.i = select i1 %.not.i, i32 7, i32 8
  br label %bb.g

bb.g:                                             ; preds = %bytestream2_get_byte.exit.i, %bytestream2_get_byte.exit.thread.i, %bb.e
  %i.ag = phi ptr [ %i.y, %bb.e ], [ %i.w, %bytestream2_get_byte.exit.thread.i ], [ %i.ae, %bytestream2_get_byte.exit.i ] ; 3 uses
  %i.ah = phi i32 [ %i.z, %bb.e ], [ 8, %bytestream2_get_byte.exit.thread.i ], [ %spec.select.i, %bytestream2_get_byte.exit.i ]
  %i.ai = add nsw i32 %i.ah, -1                   ; 3 uses
  store i32 %i.ai, ptr %i.n, align 8, !tbaa !84
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.x, %i.aj
  %i.al = icmp slt i64 %i.ak, 1
  br i1 %i.al, label %bytestream2_peek_byte.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !43
  %i.an = zext i8 %i.am to i32
  br label %bytestream2_peek_byte.exit.i

bytestream2_peek_byte.exit.i:                     ; preds = %bb.h, %bb.g
  %.0.i11.i = phi i32 [ %i.an, %bb.h ], [ 0, %bb.g ]
  %i.ao = shl nuw i32 1, %i.ai
  %i.ap = and i32 %.0.i11.i, %i.ao
  %.not71 = icmp eq i32 %i.ap, 0
  br i1 %.not71, label %bb.i, label %.thread48

.thread48:                                        ; preds = %bytestream2_peek_byte.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !344
  %i.as = add i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 2, !tbaa !344
  br label %.loopexit

bb.i:                                             ; preds = %bytestream2_peek_byte.exit.i
  %i.at = add nuw i32 %.363, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %2
  br i1 %exitcond.not, label %.loopexit.thread, label %bb.e

.loopexit.thread:                                 ; preds = %bb.i
  %i.au = trunc nuw i32 %2 to i8
  store i8 %i.au, ptr %i.s, align 8, !tbaa !347
  br label %.thread

.loopexit:                                        ; preds = %bb.d, %.thread48
  %.356 = phi i32 [ %.363, %.thread48 ], [ %spec.select, %bb.d ] ; 4 uses
  %i.av = trunc nuw i32 %.356 to i8
  store i8 %i.av, ptr %i.s, align 8, !tbaa !347
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  %i.aw = icmp slt i32 %.356, %2
  %i.ax = icmp sgt i64 %indvars.iv79, 0
  %i.ay = and i1 %i.aw, %i.ax
  br i1 %i.ay, label %bb.d, label %.thread, !llvm.loop !342

.thread:                                          ; preds = %.loopexit, %.loopexit.thread, %.critedge, %bb.b
  %.435 = phi i32 [ %.028, %.critedge ], [ -1094995529, %bb.b ], [ %2, %.loopexit.thread ], [ %.356, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.435
}

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare ptr @av_realloc_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_jpeg2000_decode_htj2k(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @ff_dwt_decode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_mqc_initdec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_mqc_init_contexts(ptr noundef) local_unnamed_addr #2

declare i32 @ff_mqc_decode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_jpeg2000_set_significance(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 720}
!30 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!31 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"Jpeg2000POC", !5, i64 0, !6, i64 320, !6, i64 324}
!33 = !{!"p1 _ZTS12Jpeg2000Tile", !9, i64 0}
!34 = !{!"Jpeg2000DSPContext", !5, i64 0}
!35 = !{!"Jpeg2000DecoderContext", !10, i64 0, !30, i64 8, !31, i64 16, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !14, i64 80, !6, i64 88, !31, i64 96, !5, i64 120, !5, i64 136, !6, i64 152, !6, i64 156, !6, i64 160, !5, i64 164, !5, i64 1188, !5, i64 1192, !6, i64 1208, !6, i64 1212, !6, i64 1216, !6, i64 1220, !6, i64 1224, !15, i64 1228, !5, i64 1236, !5, i64 1588, !32, i64 2788, !5, i64 3116, !6, i64 3120, !6, i64 3124, !33, i64 3128, !34, i64 3136, !5, i64 3160, !5, i64 3161, !5, i64 3162, !5, i64 3163, !5, i64 3164, !5, i64 3165, !6, i64 3168}
!36 = !{!35, !6, i64 3168}
!37 = !{!35, !30, i64 8}
!38 = !{!31, !14, i64 0}
!39 = !{!31, !14, i64 16}
!40 = !{!31, !14, i64 8}
!41 = !{!35, !6, i64 3124}
!42 = !{!14, !14, i64 0}
!43 = !{!5, !5, i64 0}
!44 = !{!35, !6, i64 160}
!45 = !{!35, !5, i64 1188}
!46 = !{!6, !6, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!35, !33, i64 3128}
!49 = !{!"p1 _ZTS17Jpeg2000Component", !9, i64 0}
!50 = !{!"short", !5, i64 0}
!51 = !{!"Jpeg2000Tile", !49, i64 0, !5, i64 8, !5, i64 12, !5, i64 364, !32, i64 1564, !5, i64 1896, !5, i64 3944, !14, i64 3952, !6, i64 3960, !31, i64 3968, !50, i64 3992, !5, i64 3996}
!52 = !{!51, !50, i64 3992}
!53 = !{!35, !5, i64 76}
!54 = !{!51, !5, i64 3944}
!55 = !{!51, !14, i64 3952}
!56 = !{!51, !6, i64 3960}
!57 = !{!35, !6, i64 156}
!58 = !{!35, !6, i64 1220}
!59 = !{!35, !6, i64 1216}
!60 = !{!35, !5, i64 3160}
!61 = !{!50, !50, i64 0}
!62 = !{!"Jpeg2000CodingStyle", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15, !5, i64 16, !5, i64 50, !5, i64 84}
!63 = !{!62, !5, i64 11}
!64 = !{!62, !5, i64 13}
!65 = !{!51, !49, i64 0}
!66 = !{!"p1 _ZTS16Jpeg2000ResLevel", !9, i64 0}
!67 = !{!"p1 float", !9, i64 0}
!68 = !{!"DWTContext", !5, i64 0, !5, i64 256, !5, i64 320, !5, i64 321, !24, i64 328, !67, i64 336}
!69 = !{!"Jpeg2000Component", !66, i64 0, !68, i64 8, !67, i64 352, !24, i64 360, !5, i64 368, !5, i64 384, !5, i64 400}
!70 = !{!69, !5, i64 400}
!71 = !{!35, !14, i64 80}
!72 = !{!35, !6, i64 88}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!35, !6, i64 1208}
!75 = !{!35, !6, i64 56}
!76 = !{!35, !6, i64 48}
!77 = !{!35, !6, i64 40}
!78 = !{!35, !6, i64 1212}
!79 = !{!35, !6, i64 60}
!80 = !{!35, !6, i64 52}
!81 = !{!35, !6, i64 44}
!82 = !{!62, !5, i64 10}
!83 = !{!62, !5, i64 14}
!84 = !{!35, !6, i64 3120}
!85 = !{!27, !6, i64 136}
!86 = !{!"p2 omnipotent char", !25, i64 0}
!87 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!88 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!89 = !{!"AVFrame", !5, i64 0, !5, i64 64, !86, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !87, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !88, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!90 = !{!35, !6, i64 152}
!91 = !{!62, !5, i64 8}
!92 = !{!62, !6, i64 4}
!93 = !{!69, !66, i64 0}
!94 = !{!"p1 _ZTS12Jpeg2000Band", !9, i64 0}
!95 = !{!"Jpeg2000ResLevel", !5, i64 0, !5, i64 4, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 29, !94, i64 32}
!96 = !{!95, !5, i64 0}
!97 = !{!95, !94, i64 32}
!98 = !{!"Jpeg2000QuantStyle", !5, i64 0, !5, i64 100, !5, i64 298, !5, i64 299}
!99 = !{!98, !5, i64 299}
!100 = !{!95, !6, i64 20}
!101 = !{!95, !6, i64 24}
!102 = !{!"p1 _ZTS12Jpeg2000Prec", !9, i64 0}
!103 = !{!"Jpeg2000Band", !5, i64 0, !50, i64 16, !50, i64 18, !6, i64 20, !16, i64 24, !102, i64 32}
!104 = !{!103, !102, i64 32}
!105 = !{!"p1 _ZTS15Jpeg2000TgtNode", !9, i64 0}
!106 = !{!"p1 _ZTS12Jpeg2000Cblk", !9, i64 0}
!107 = !{!"Jpeg2000Prec", !6, i64 0, !6, i64 4, !105, i64 8, !105, i64 16, !106, i64 24, !6, i64 32, !5, i64 36}
!108 = !{!107, !6, i64 0}
!109 = !{!107, !6, i64 4}
!110 = !{!107, !106, i64 24}
!111 = !{!"p1 _ZTS12Jpeg2000Pass", !9, i64 0}
!112 = !{!"p1 _ZTS13Jpeg2000Layer", !9, i64 0}
!113 = !{!"Jpeg2000Cblk", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !50, i64 4, !17, i64 8, !5, i64 16, !5, i64 17, !14, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !24, i64 48, !111, i64 56, !112, i64 64, !5, i64 72, !6, i64 88, !5, i64 92, !5, i64 100, !5, i64 101}
!114 = !{!113, !5, i64 100}
!115 = !{!113, !5, i64 0}
!116 = !{!113, !5, i64 2}
!117 = !{!113, !50, i64 4}
!118 = !{!113, !14, i64 24}
!119 = !{!"llvm.loop.peeled.count", i32 1}
!120 = !{!113, !6, i64 40}
!121 = !{!113, !24, i64 48}
!122 = !{!"llvm.loop.isvectorized", i32 1}
!123 = !{!"llvm.loop.unroll.runtime.disable"}
!124 = !{!"AVPixFmtDescriptor", !14, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !13, i64 16, !5, i64 24, !14, i64 104}
!125 = !{!124, !13, i64 16}
!126 = !{!124, !5, i64 8}
!127 = !{!62, !6, i64 0}
!128 = !{!"llvm.loop.unswitch.partial.disable"}
!129 = distinct !{!129, !47}
!130 = distinct !{!130, !47}
!131 = distinct !{!131, !47}
!132 = distinct !{!132, !47}
!133 = distinct !{!133, !47}
!134 = distinct !{!134, !47}
!135 = distinct !{!135, !47}
!136 = distinct !{!136, !47}
!137 = distinct !{!137, !47}
!138 = distinct !{!138, !47}
!139 = distinct !{!139, !73}
!140 = distinct !{!140, !73}
!141 = distinct !{!141, !47}
!142 = distinct !{!142, !47}
!143 = distinct !{!143, !47}
!144 = distinct !{!144, !47}
!145 = distinct !{!145, !47}
!146 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!147 = !{!146, !14, i64 24}
!148 = !{!146, !6, i64 32}
!149 = !{!"Jpeg2000TilePart", !5, i64 0, !14, i64 8, !31, i64 16, !31, i64 40}
!150 = !{!149, !14, i64 8}
!151 = !{!35, !14, i64 16}
!152 = !{!27, !6, i64 516}
!153 = !{!35, !5, i64 3161}
!154 = !{!35, !5, i64 3162}
!155 = !{!35, !5, i64 3163}
!156 = !{!35, !5, i64 3164}
!157 = !{!35, !5, i64 3165}
!158 = !{!62, !5, i64 84}
!159 = !{!62, !5, i64 15}
!160 = !{!62, !5, i64 12}
!161 = !{!32, !6, i64 320}
!162 = !{!"Jpeg2000POCEntry", !50, i64 0, !50, i64 2, !50, i64 4, !5, i64 6, !5, i64 7, !5, i64 8}
!163 = !{!162, !5, i64 6}
!164 = !{!162, !50, i64 2}
!165 = !{!162, !50, i64 0}
!166 = !{!162, !5, i64 7}
!167 = !{!162, !5, i64 8}
!168 = !{!32, !6, i64 324}
!169 = !{i64 0, i64 320, !43, i64 320, i64 4, !46, i64 324, i64 4, !46}
!170 = !{!149, !5, i64 0}
!171 = !{!51, !6, i64 1888}
!172 = !{!35, !6, i64 1228}
!173 = !{!35, !6, i64 1232}
!174 = !{!27, !6, i64 704}
!175 = !{!51, !6, i64 1884}
!176 = !{!162, !50, i64 4}
!177 = !{!27, !9, i64 680}
!178 = !{!89, !6, i64 276}
end_hunk_1
