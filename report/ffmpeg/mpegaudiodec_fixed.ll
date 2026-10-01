Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegaudiodec_fixed?download=true
inline.NumInlined: 125
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 34
begin_hunk_0_@mp_decode_frame:bb.a
  br label %.lr.ph308.i.i

.lr.ph308.i.i:                                    ; preds = %.lr.ph308.i.i, %.lr.ph308.preheader.i.i
  %.0152307.i.i = phi i32 [ %i.cuz, %.lr.ph308.i.i ], [ %i.cus, %.lr.ph308.preheader.i.i ] ; 3 uses
  %i.cut = sext i32 %.0152307.i.i to i64
  %i.cuu = getelementptr inbounds [4 x i8], ptr @huffman_decode.idxtab, i64 %i.cut
  %i.cuv = load i32, ptr %i.cuu, align 4, !tbaa !41 ; 2 uses
  %i.cuw = sext i32 %i.cuv to i64
  %i.cux = add nsw i64 %indvars.iv331.i.i, %i.cuw ; 2 uses
  %i.cuy = lshr i32 8, %i.cuv                     ; 2 uses
  %i.cuz = xor i32 %i.cuy, %.0152307.i.i
  %i.cva = load i32, ptr %i.o, align 8, !tbaa !186 ; 4 uses
  %i.cvb = lshr i32 %i.cva, 3
  %i.cvc = zext nneg i32 %i.cvb to i64
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.ctz, i64 %i.cvc
  %i.cve = load i8, ptr %i.cvd, align 1, !tbaa !32
  %i.cvf = load i32, ptr %i.n, align 16, !tbaa !185
  %i.cvg = icmp slt i32 %i.cva, %i.cvf
  %i.cvh = zext i1 %i.cvg to i32
  %spec.select.i215.i.i = add i32 %i.cva, %i.cvh
  %i.cvi = zext i8 %i.cve to i32
  %i.cvj = and i32 %i.cva, 7
  %i.cvk = shl nuw nsw i32 %i.cvi, %i.cvj
  %i.cvl = lshr i32 %i.cvk, 7
  store i32 %spec.select.i215.i.i, ptr %i.o, align 8, !tbaa !186
  %i.cvm = and i32 %i.cvl, 1                      ; 2 uses
  %i.cvn = sub nsw i32 0, %i.cvm
  %i.cvo = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.cux
  %i.cvp = load i16, ptr %i.cvo, align 2, !tbaa !61
  %i.cvq = sext i16 %i.cvp to i64
  %i.cvr = getelementptr inbounds [4 x i8], ptr @exp_table_fixed, i64 %i.cvq
  %i.cvs = load i32, ptr %i.cvr, align 4, !tbaa !41
  %i.cvt = xor i32 %i.cvs, %i.cvn
  %i.cvu = add i32 %i.cvt, %i.cvm
  %i.cvv = getelementptr inbounds [4 x i8], ptr %i.cgl, i64 %i.cux
  store i32 %i.cvu, ptr %i.cvv, align 4, !tbaa !41
  %.not175.i.i = icmp eq i32 %i.cuy, %.0152307.i.i
  br i1 %.not175.i.i, label %._crit_edge.i379.i, label %.lr.ph308.i.i, !llvm.loop !147

._crit_edge.i379.i:                               ; preds = %.lr.ph308.i.i, %bb.eo
  %indvars.iv.next332.i.i = add nsw i64 %indvars.iv331.i.i, 4 ; 2 uses
  %i.cvw = icmp slt i64 %indvars.iv331.i.i, 569
  br i1 %i.cvw, label %bb.ei, label %.thread281.loopexit.i.i

.thread281.loopexit.i.i:                          ; preds = %._crit_edge.i379.i, %switch_buffer.exit214.i.i
  %.8270.ph.i.i = phi i32 [ %.10272.i.i, %switch_buffer.exit214.i.i ], [ %.6268.i.i, %._crit_edge.i379.i ]
  %.8260.ph.i.i = phi i32 [ %.10.i.i, %switch_buffer.exit214.i.i ], [ %.6.i.i, %._crit_edge.i379.i ]
  %.8.ph.in.i.i = phi i64 [ %indvars.iv331.i.i, %switch_buffer.exit214.i.i ], [ %indvars.iv.next332.i.i, %._crit_edge.i379.i ]
  %.8.ph.i.i = trunc i64 %.8.ph.in.i.i to i32
  br label %.thread281.i.i

.thread281.i.i:                                   ; preds = %.thread281.loopexit.i.i, %bb.ek, %bb.eh
  %.8270.i.i = phi i32 [ %.5267309.i.i, %bb.ek ], [ %.4266.i.i, %bb.eh ], [ %.8270.ph.i.i, %.thread281.loopexit.i.i ] ; 2 uses
  %.8260.i.i = phi i32 [ %.5258310.i.i, %bb.ek ], [ %.4257.i.i, %bb.eh ], [ %.8260.ph.i.i, %.thread281.loopexit.i.i ]
  %.8.i.i = phi i32 [ %spec.select191.i.i, %bb.ek ], [ %.4.i.i, %bb.eh ], [ %.8.ph.i.i, %.thread281.loopexit.i.i ] ; 3 uses
  %.val196.i.i = load i32, ptr %i.o, align 8, !tbaa !186 ; 2 uses
  %i.cvx = sub nsw i32 %.8270.i.i, %.val196.i.i   ; 4 uses
  %i.cvy = icmp slt i32 %i.cvx, 0
  br i1 %i.cvy, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %.thread281.i.i
  %i.cvz = load i32, ptr %i.axb, align 8, !tbaa !70
  %i.cwa = and i32 %i.cvz, 131076
  %.not177.i.i = icmp eq i32 %i.cwa, 0
  br i1 %.not177.i.i, label %.thread287.i.i, label %.thread287.sink.split.i.i

bb.eq:                                            ; preds = %.thread281.i.i
  %.not288.i.i = icmp eq i32 %.8270.i.i, %.val196.i.i
  br i1 %.not288.i.i, label %.thread287.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.cwb = load i32, ptr %i.axb, align 8, !tbaa !70
  %i.cwc = and i32 %i.cwb, 262148
  %.not178.i.i = icmp eq i32 %i.cwc, 0
  br i1 %.not178.i.i, label %.thread287.i.i, label %.thread287.sink.split.i.i

.thread287.sink.split.i.i:                        ; preds = %bb.er, %bb.ep
  %i.cwd = load ptr, ptr %i.aja, align 16, !tbaa !66
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cwd, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %i.cvx) #14
  br label %.thread287.i.i

.thread287.i.i:                                   ; preds = %.thread287.sink.split.i.i, %bb.er, %bb.eq, %bb.ep
  %.9.i.i = phi i32 [ %.8.i.i, %bb.eq ], [ %.8.i.i, %bb.ep ], [ %.8.i.i, %bb.er ], [ 0, %.thread287.sink.split.i.i ] ; 2 uses
  %i.cwe = sext i32 %.9.i.i to i64
  %i.cwf = getelementptr inbounds [4 x i8], ptr %i.cgl, i64 %i.cwe
  %i.cwg = sub nsw i32 576, %.9.i.i
  %i.cwh = sext i32 %i.cwg to i64
  %i.cwi = shl nsw i64 %i.cwh, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cwf, i8 0, i64 %i.cwi, i1 false)
  %i.cwj = load i32, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %i.cwk = sub nsw i32 0, %i.cwj                  ; 2 uses
  %i.cwl = load i32, ptr %i.n, align 16, !tbaa !185
  %i.cwm = sub nsw i32 %i.cwl, %i.cwj
  %i.cwn = icmp slt i32 %i.cvx, %i.cwk
  %..i.i216.i.i = tail call i32 @llvm.smin.i32(i32 %i.cvx, i32 %i.cwm)
  %.0.i.i217.i.i = select i1 %i.cwn, i32 %i.cwk, i32 %..i.i216.i.i
  %i.cwo = add nsw i32 %.0.i.i217.i.i, %i.cwj     ; 5 uses
  store i32 %i.cwo, ptr %i.o, align 8, !tbaa !186
  %i.cwp = load ptr, ptr %i.axa, align 8, !tbaa !208
  %.not.i218.i.i = icmp eq ptr %i.cwp, null
  br i1 %.not.i218.i.i, label %huffman_decode.exit.i, label %bb.es

bb.es:                                            ; preds = %.thread287.i.i
  %i.cwq = load i32, ptr %i.l, align 4, !tbaa !207
  %i.cwr = load i32, ptr %i.awz, align 4, !tbaa !205
  %i.cws = shl nsw i32 %i.cwr, 3
  %i.cwt = sub nsw i32 %i.cwq, %i.cws
  %.not18.i219.i.i = icmp slt i32 %i.cwo, %i.cwt
  br i1 %.not18.i219.i.i, label %huffman_decode.exit.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.axa, i64 24, i1 false), !tbaa.struct !206
  store ptr null, ptr %i.axa, align 8, !tbaa !208
  store i32 0, ptr %i.awz, align 4, !tbaa !205
  %i.cwu = sub nsw i32 %i.cwo, %.8260.i.i         ; 2 uses
  %i.cwv = load i32, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %i.cww = sub nsw i32 0, %i.cwv                  ; 2 uses
  %i.cwx = load i32, ptr %i.n, align 16, !tbaa !185
  %i.cwy = sub nsw i32 %i.cwx, %i.cwv
  %i.cwz = icmp slt i32 %i.cwu, %i.cww
  %..i.i.i220.i.i = tail call i32 @llvm.smin.i32(i32 %i.cwu, i32 %i.cwy)
  %.0.i.i.i221.i.i = select i1 %i.cwz, i32 %i.cww, i32 %..i.i.i220.i.i
  %i.cxa = add nsw i32 %.0.i.i.i221.i.i, %i.cwv   ; 2 uses
  store i32 %i.cxa, ptr %i.o, align 8, !tbaa !186
  br label %huffman_decode.exit.i

huffman_decode.exit.i:                            ; preds = %bb.et, %bb.es, %.thread287.i.i
  %.val359675.i = phi i32 [ %i.cwo, %.thread287.i.i ], [ %i.cwo, %bb.es ], [ %i.cxa, %bb.et ]
  %indvar.next648.i = add nuw nsw i64 %indvar647.i, 1 ; 2 uses
  %i.cxb = load i32, ptr %i.agm, align 8, !tbaa !40
  %i.cxc = sext i32 %i.cxb to i64
  %i.cxd = icmp slt i64 %indvar.next648.i, %i.cxc
  br i1 %i.cxd, label %bb.bz, label %._crit_edge507.i, !llvm.loop !148

._crit_edge507.i:                                 ; preds = %huffman_decode.exit.i, %.preheader438.i
  %i.cxe = load i32, ptr %i.axc, align 4, !tbaa !189
  %i.cxf = icmp eq i32 %i.cxe, 1
  br i1 %i.cxf, label %bb.eu, label %compute_stereo.exit.i

bb.eu:                                            ; preds = %._crit_edge507.i
  %i.cxg = getelementptr inbounds nuw [2432 x i8], ptr %i.aix, i64 %indvars.iv662.i ; 2 uses
  %i.cxh = getelementptr inbounds nuw [2432 x i8], ptr %i.axd, i64 %indvars.iv662.i ; 7 uses
  %i.cxi = load i32, ptr %i.aiy, align 16, !tbaa !190 ; 2 uses
  %i.cxj = and i32 %i.cxi, 1
  %.not.i385.i = icmp eq i32 %i.cxj, 0
  br i1 %.not.i385.i, label %bb.fj, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.cxk = load i32, ptr %i.agl, align 4, !tbaa !188
  %.not157.i.i = icmp eq i32 %i.cxk, 0
  br i1 %.not157.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxh, i64 16
  %i.cxm = load i32, ptr %i.cxl, align 16, !tbaa !198
  %i.cxn = and i32 %i.cxm, 1
  %i.cxo = zext nneg i32 %i.cxn to i64
  %i.cxp = getelementptr inbounds nuw [128 x i8], ptr @is_table_lsf, i64 %i.cxo
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.0142.i.i = phi i32 [ 16, %bb.ew ], [ 7, %bb.ev ] ; 4 uses
  %.0.i386.i = phi ptr [ %i.cxp, %bb.ew ], [ @is_table, %bb.ev ] ; 6 uses
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxg, i64 2432 ; 2 uses
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cxh, i64 2432 ; 2 uses
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cxh, i64 68 ; 2 uses
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cxh, i64 72 ; 2 uses
  %i.cxu = load i32, ptr %i.cxs, align 4, !tbaa !201 ; 3 uses
  %.not158189.i.i = icmp sgt i32 %i.cxu, 12
  %.pre286.i.i = load i32, ptr %i.cxt, align 8, !tbaa !200 ; 2 uses
  br i1 %.not158189.i.i, label %._crit_edge196.i.i, label %.lr.ph195.i.i

.lr.ph195.i.i:                                    ; preds = %bb.ex
  %i.cxv = add i32 %.pre286.i.i, -3
  %i.cxw = sub nsw i32 13, %i.cxu
  %i.cxx = mul nuw nsw i32 %i.cxw, 3
  %i.cxy = add i32 %i.cxv, %i.cxx
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxh, i64 76 ; 3 uses
  %i.cya = getelementptr inbounds nuw i8, ptr %.0.i386.i, i64 64 ; 3 uses
  br label %bb.ey

bb.ey:                                            ; preds = %.split187.us.i.i, %.lr.ph195.i.i
  %i.cyb = phi i32 [ %i.cxu, %.lr.ph195.i.i ], [ %i.dhe, %.split187.us.i.i ]
  %.sroa.14.0.i.i = phi i32 [ 0, %.lr.ph195.i.i ], [ %.sroa.14.4.i.i, %.split187.us.i.i ] ; 2 uses
  %.sroa.8.0.i.i = phi i32 [ 0, %.lr.ph195.i.i ], [ %.sroa.8.1.i.i, %.split187.us.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ 0, %.lr.ph195.i.i ], [ %.sroa.0.1.i.i, %.split187.us.i.i ] ; 2 uses
  %indvars.iv254.i.i = phi i64 [ 12, %.lr.ph195.i.i ], [ %indvars.iv.next255.i.i, %.split187.us.i.i ] ; 4 uses
  %.0135193.i.i = phi ptr [ %i.cxr, %.lr.ph195.i.i ], [ %.us-phi188.i.i, %.split187.us.i.i ] ; 3 uses
  %.0136192.i.i = phi ptr [ %i.cxq, %.lr.ph195.i.i ], [ %.us-phi.i388.i, %.split187.us.i.i ] ; 3 uses
  %.0144191.i.i = phi i32 [ %i.cxy, %.lr.ph195.i.i ], [ %spec.select.i387.i, %.split187.us.i.i ] ; 2 uses
  %i.cyc = icmp eq i64 %indvars.iv254.i.i, 11
  %i.cyd = add nsw i32 %.0144191.i.i, -3
  %spec.select.i387.i = select i1 %i.cyc, i32 %.0144191.i.i, i32 %i.cyd ; 2 uses
  %i.cye = load i32, ptr %i.aiz, align 16, !tbaa !199
  %i.cyf = sext i32 %i.cye to i64
  %i.cyg = getelementptr inbounds [13 x i8], ptr @ff_band_size_short, i64 %i.cyf
  %i.cyh = getelementptr inbounds i8, ptr %i.cyg, i64 %indvars.iv254.i.i
  %i.cyi = load i8, ptr %i.cyh, align 1, !tbaa !32
  %.fr216.i.i = freeze i8 %i.cyi                  ; 11 uses
  %i.cyj = zext i8 %.fr216.i.i to i64             ; 19 uses
  %i.cyk = sub nsw i64 0, %i.cyj                  ; 8 uses
  %.not214.i.i = icmp eq i8 %.fr216.i.i, 0
  br i1 %.not214.i.i, label %.split.preheader.i.i, label %.split.us.preheader.i.i

.split.us.preheader.i.i:                          ; preds = %bb.ey
  %i.cyl = sext i32 %spec.select.i387.i to i64    ; 3 uses
  %i.cym = getelementptr [4 x i8], ptr %.0136192.i.i, i64 %i.cyk ; 8 uses
  %i.cyn = getelementptr [4 x i8], ptr %.0135193.i.i, i64 %i.cyk ; 9 uses
  %.not164.us.i.i = icmp eq i32 %.sroa.14.0.i.i, 0
  br i1 %.not164.us.i.i, label %.lr.ph.us.i.i, label %.loopexit300.i.i

.split.preheader.i.i:                             ; preds = %bb.ey
  %.not164.i.i = icmp ne i32 %.sroa.14.0.i.i, 0
  %spec.select301.i.i = zext i1 %.not164.i.i to i32
  %.not164.1.i.i = icmp ne i32 %.sroa.8.0.i.i, 0
  %.sroa.8.5.i.i = zext i1 %.not164.1.i.i to i32
  %i.cyo = getelementptr inbounds nuw [4 x i8], ptr %.0136192.i.i, i64 %i.cyk
  %i.cyp = getelementptr inbounds nuw [4 x i8], ptr %.0135193.i.i, i64 %i.cyk
  %.not164.2.i.i = icmp ne i32 %.sroa.0.0.i.i, 0
  %spec.select302.i.i = zext i1 %.not164.2.i.i to i32
  br label %.split187.us.i.i

bb.ez:                                            ; preds = %.lr.ph.us.i.i
  %indvars.iv.next.i393.i = add nuw nsw i64 %indvars.iv.i392.i, 1 ; 2 uses
  %exitcond.not.i394.i = icmp eq i64 %indvars.iv.next.i393.i, %i.cyj
  br i1 %exitcond.not.i394.i, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i, !llvm.loop !149

.lr.ph.us.i.i:                                    ; preds = %.split.us.preheader.i.i, %bb.ez
  %indvars.iv.i392.i = phi i64 [ %indvars.iv.next.i393.i, %bb.ez ], [ 0, %.split.us.preheader.i.i ] ; 2 uses
  %i.cyq = getelementptr inbounds nuw [4 x i8], ptr %i.cyn, i64 %indvars.iv.i392.i
  %i.cyr = load i32, ptr %i.cyq, align 4, !tbaa !41
  %.not166.us.i.i = icmp eq i32 %i.cyr, 0
  br i1 %.not166.us.i.i, label %bb.ez, label %.loopexit300.i.i

._crit_edge.us.i.i:                               ; preds = %bb.ez
  %i.cys = getelementptr i8, ptr %i.cxz, i64 %i.cyl
  %i.cyt = getelementptr i8, ptr %i.cys, i64 2
  %i.cyu = load i8, ptr %i.cyt, align 1, !tbaa !32 ; 2 uses
  %i.cyv = zext i8 %i.cyu to i32
  %.not165.us.i.i = icmp samesign ugt i32 %.0142.i.i, %i.cyv
  br i1 %.not165.us.i.i, label %.lr.ph180.us.i.i, label %.loopexit300.i.i

bb.fa:                                            ; preds = %bb.fa, %.lr.ph180.us.i.i.new
  %indvars.iv233.i.i = phi i64 [ 0, %.lr.ph180.us.i.i.new ], [ %indvars.iv.next234.i.i.1, %bb.fa ] ; 4 uses
  %niter638 = phi i64 [ 0, %.lr.ph180.us.i.i.new ], [ %niter638.next.1, %bb.fa ]
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %i.cym, i64 %indvars.iv233.i.i ; 2 uses
  %i.cyx = load i32, ptr %i.cyw, align 4, !tbaa !41
  %i.cyy = sext i32 %i.cyx to i64                 ; 2 uses
  %i.cyz = mul nsw i64 %i.cyy, %i.dhb
  %i.cza = lshr i64 %i.cyz, 23
  %i.czb = trunc i64 %i.cza to i32
  store i32 %i.czb, ptr %i.cyw, align 4, !tbaa !41
  %i.czc = mul nsw i64 %i.cyy, %i.dhc
  %i.czd = lshr i64 %i.czc, 23
  %i.cze = trunc i64 %i.czd to i32
  %i.czf = getelementptr inbounds nuw [4 x i8], ptr %i.cyn, i64 %indvars.iv233.i.i
  store i32 %i.cze, ptr %i.czf, align 4, !tbaa !41
  %indvars.iv.next234.i.i = or disjoint i64 %indvars.iv233.i.i, 1 ; 2 uses
  %i.czg = getelementptr inbounds nuw [4 x i8], ptr %i.cym, i64 %indvars.iv.next234.i.i ; 2 uses
  %i.czh = load i32, ptr %i.czg, align 4, !tbaa !41
  %i.czi = sext i32 %i.czh to i64                 ; 2 uses
  %i.czj = mul nsw i64 %i.czi, %i.dhb
  %i.czk = lshr i64 %i.czj, 23
  %i.czl = trunc i64 %i.czk to i32
  store i32 %i.czl, ptr %i.czg, align 4, !tbaa !41
  %i.czm = mul nsw i64 %i.czi, %i.dhc
  %i.czn = lshr i64 %i.czm, 23
  %i.czo = trunc i64 %i.czn to i32
  %i.czp = getelementptr inbounds nuw [4 x i8], ptr %i.cyn, i64 %indvars.iv.next234.i.i
  store i32 %i.czo, ptr %i.czp, align 4, !tbaa !41
  %indvars.iv.next234.i.i.1 = add nuw nsw i64 %indvars.iv233.i.i, 2 ; 2 uses
  %niter638.next.1 = add i64 %niter638, 2         ; 2 uses
  %niter638.ncmp.1 = icmp eq i64 %niter638.next.1, %unroll_iter637
  br i1 %niter638.ncmp.1, label %.loopexit175.us.i.i.loopexit.unr-lcssa, label %bb.fa, !llvm.loop !150

.loopexit300.i.i:                                 ; preds = %.lr.ph.us.i.i, %._crit_edge.us.i.i, %.split.us.preheader.i.i
  %.sroa.14.1.i.i = phi i32 [ 0, %._crit_edge.us.i.i ], [ 1, %.split.us.preheader.i.i ], [ 1, %.lr.ph.us.i.i ] ; 3 uses
  %i.czq = load i32, ptr %i.aiy, align 16, !tbaa !190
  %i.czr = and i32 %i.czq, 2
  %.not167.us.i.i = icmp eq i32 %i.czr, 0
  br i1 %.not167.us.i.i, label %.loopexit175.us.i.i, label %.preheader173.us.i.i.preheader

.preheader173.us.i.i.preheader:                   ; preds = %.loopexit300.i.i
  %min.iters.check447 = icmp ult i8 %.fr216.i.i, 4
  br i1 %min.iters.check447, label %.preheader173.us.i.i.preheader585, label %vector.memcheck442

vector.memcheck442:                               ; preds = %.preheader173.us.i.i.preheader
  %bound0443 = icmp ult ptr %i.cym, %.0135193.i.i
  %bound1444 = icmp ult ptr %i.cyn, %.0136192.i.i
  %found.conflict445 = and i1 %bound0443, %bound1444
  br i1 %found.conflict445, label %.preheader173.us.i.i.preheader585, label %vector.ph448

vector.ph448:                                     ; preds = %vector.memcheck442
  %n.vec449 = and i64 %i.cyj, 252                 ; 3 uses
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next454, %vector.body450 ] ; 3 uses
  %i.czs = getelementptr inbounds nuw [4 x i8], ptr %i.cym, i64 %index451 ; 2 uses
  %wide.load452 = load <4 x i32>, ptr %i.czs, align 4, !tbaa !41, !alias.scope !217, !noalias !218 ; 2 uses
  %i.czt = getelementptr inbounds nuw [4 x i8], ptr %i.cyn, i64 %index451 ; 2 uses
  %wide.load453 = load <4 x i32>, ptr %i.czt, align 4, !tbaa !41, !alias.scope !218 ; 2 uses
  %i.czu = add <4 x i32> %wide.load453, %wide.load452
  %i.czv = sext <4 x i32> %i.czu to <4 x i64>
  %i.czw = mul nsw <4 x i64> %i.czv, splat (i64 5931642)
  %i.czx = lshr <4 x i64> %i.czw, splat (i64 23)
  %i.czy = trunc <4 x i64> %i.czx to <4 x i32>
  store <4 x i32> %i.czy, ptr %i.czs, align 4, !tbaa !41, !alias.scope !217, !noalias !218
  %i.czz = sub <4 x i32> %wide.load452, %wide.load453
  %i.daa = sext <4 x i32> %i.czz to <4 x i64>
  %i.dab = mul nsw <4 x i64> %i.daa, splat (i64 5931642)
  %i.dac = lshr <4 x i64> %i.dab, splat (i64 23)
  %i.dad = trunc <4 x i64> %i.dac to <4 x i32>
  store <4 x i32> %i.dad, ptr %i.czt, align 4, !tbaa !41, !alias.scope !218
  %index.next454 = add nuw i64 %index451, 4       ; 2 uses
  %i.dae = icmp eq i64 %index.next454, %n.vec449
  br i1 %i.dae, label %middle.block455, label %vector.body450, !llvm.loop !154

middle.block455:                                  ; preds = %vector.body450
  %cmp.n456 = icmp eq i64 %n.vec449, %i.cyj
  br i1 %cmp.n456, label %.loopexit175.us.i.i, label %.preheader173.us.i.i.preheader585

.preheader173.us.i.i.preheader585:                ; preds = %vector.memcheck442, %.preheader173.us.i.i.preheader, %middle.block455
  %indvars.iv228.i.i.ph = phi i64 [ 0, %vector.memcheck442 ], [ 0, %.preheader173.us.i.i.preheader ], [ %n.vec449, %middle.block455 ]
  br label %.preheader173.us.i.i

.preheader173.us.i.i:                             ; preds = %.preheader173.us.i.i.preheader585, %.preheader173.us.i.i
  %indvars.iv228.i.i = phi i64 [ %indvars.iv.next229.i.i, %.preheader173.us.i.i ], [ %indvars.iv228.i.i.ph, %.preheader173.us.i.i.preheader585 ] ; 3 uses
  %i.daf = getelementptr inbounds nuw [4 x i8], ptr %i.cym, i64 %indvars.iv228.i.i ; 2 uses
  %i.dag = load i32, ptr %i.daf, align 4, !tbaa !41 ; 2 uses
  %i.dah = getelementptr inbounds nuw [4 x i8], ptr %i.cyn, i64 %indvars.iv228.i.i ; 2 uses
  %i.dai = load i32, ptr %i.dah, align 4, !tbaa !41 ; 2 uses
  %i.daj = add i32 %i.dai, %i.dag
  %i.dak = sext i32 %i.daj to i64
  %i.dal = mul nsw i64 %i.dak, 5931642
  %i.dam = lshr i64 %i.dal, 23
  %i.dan = trunc i64 %i.dam to i32
  store i32 %i.dan, ptr %i.daf, align 4, !tbaa !41
  %i.dao = sub i32 %i.dag, %i.dai
  %i.dap = sext i32 %i.dao to i64
  %i.daq = mul nsw i64 %i.dap, 5931642
  %i.dar = lshr i64 %i.daq, 23
  %i.das = trunc i64 %i.dar to i32
  store i32 %i.das, ptr %i.dah, align 4, !tbaa !41
  %indvars.iv.next229.i.i = add nuw nsw i64 %indvars.iv228.i.i, 1 ; 2 uses
  %exitcond232.not.i.i = icmp eq i64 %indvars.iv.next229.i.i, %i.cyj
  br i1 %exitcond232.not.i.i, label %.loopexit175.us.i.i, label %.preheader173.us.i.i, !llvm.loop !155

.loopexit175.us.i.i.loopexit.unr-lcssa:           ; preds = %bb.fa
  %lcmp.mod635.not = icmp eq i64 %xtraiter633, 0
  br i1 %lcmp.mod635.not, label %.loopexit175.us.i.i, label %.epil.preheader632

.epil.preheader632:                               ; preds = %.loopexit175.us.i.i.loopexit.unr-lcssa, %.lr.ph180.us.i.i
  %indvars.iv233.i.i.epil.init = phi i64 [ 0, %.lr.ph180.us.i.i ], [ %indvars.iv.next234.i.i.1, %.loopexit175.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod636 = trunc i8 %.fr216.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod636)
  %i.dat = getelementptr inbounds nuw [4 x i8], ptr %i.cym, i64 %indvars.iv233.i.i.epil.init ; 2 uses
  %i.dau = load i32, ptr %i.dat, align 4, !tbaa !41
  %i.dav = sext i32 %i.dau to i64                 ; 2 uses
  %i.daw = mul nsw i64 %i.dav, %i.dhb
  %i.dax = lshr i64 %i.daw, 23
  %i.day = trunc i64 %i.dax to i32
  store i32 %i.day, ptr %i.dat, align 4, !tbaa !41
  %i.daz = mul nsw i64 %i.dav, %i.dhc
  %i.dba = lshr i64 %i.daz, 23
  %i.dbb = trunc i64 %i.dba to i32
  %i.dbc = getelementptr inbounds nuw [4 x i8], ptr %i.cyn, i64 %indvars.iv233.i.i.epil.init
  store i32 %i.dbb, ptr %i.dbc, align 4, !tbaa !41
  br label %.loopexit175.us.i.i

.loopexit175.us.i.i:                              ; preds = %.preheader173.us.i.i, %.epil.preheader632, %.loopexit175.us.i.i.loopexit.unr-lcssa, %middle.block455, %.loopexit300.i.i
  %.sroa.14.2.i.i = phi i32 [ %.sroa.14.1.i.i, %middle.block455 ], [ %.sroa.14.1.i.i, %.loopexit300.i.i ], [ 0, %.epil.preheader632 ], [ 0, %.loopexit175.us.i.i.loopexit.unr-lcssa ], [ %.sroa.14.1.i.i, %.preheader173.us.i.i ]
  %i.dbd = getelementptr [4 x i8], ptr %i.cym, i64 %i.cyk ; 8 uses
  %i.dbe = getelementptr [4 x i8], ptr %i.cyn, i64 %i.cyk ; 9 uses
  %.not164.us.1.i.i = icmp eq i32 %.sroa.8.0.i.i, 0
  br i1 %.not164.us.1.i.i, label %.lr.ph.us.1.i.i, label %.loopexit298.i.i

.lr.ph.us.1.i.i:                                  ; preds = %.loopexit175.us.i.i, %bb.fb
  %indvars.iv.1.i.i = phi i64 [ %indvars.iv.next.1.i.i, %bb.fb ], [ 0, %.loopexit175.us.i.i ] ; 2 uses
  %i.dbf = getelementptr inbounds nuw [4 x i8], ptr %i.dbe, i64 %indvars.iv.1.i.i
  %i.dbg = load i32, ptr %i.dbf, align 4, !tbaa !41
  %.not166.us.1.i.i = icmp eq i32 %i.dbg, 0
  br i1 %.not166.us.1.i.i, label %bb.fb, label %.loopexit298.i.i

bb.fb:                                            ; preds = %.lr.ph.us.1.i.i
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, %i.cyj
  br i1 %exitcond.1.not.i.i, label %._crit_edge.us.1.i.i, label %.lr.ph.us.1.i.i, !llvm.loop !149

._crit_edge.us.1.i.i:                             ; preds = %bb.fb
  %i.dbh = getelementptr i8, ptr %i.cxz, i64 %i.cyl
  %i.dbi = getelementptr i8, ptr %i.dbh, i64 1
  %i.dbj = load i8, ptr %i.dbi, align 1, !tbaa !32 ; 2 uses
  %i.dbk = zext i8 %i.dbj to i32
  %.not165.us.1.i.i = icmp samesign ugt i32 %.0142.i.i, %i.dbk
  br i1 %.not165.us.1.i.i, label %.lr.ph180.us.1.i.i, label %.loopexit298.i.i

.loopexit298.i.i:                                 ; preds = %.lr.ph.us.1.i.i, %._crit_edge.us.1.i.i, %.loopexit175.us.i.i
  %.sroa.8.3.i.i = phi i32 [ 0, %._crit_edge.us.1.i.i ], [ 1, %.loopexit175.us.i.i ], [ 1, %.lr.ph.us.1.i.i ] ; 3 uses
  %i.dbl = load i32, ptr %i.aiy, align 16, !tbaa !190
  %i.dbm = and i32 %i.dbl, 2
  %.not167.us.1.i.i = icmp eq i32 %i.dbm, 0
  br i1 %.not167.us.1.i.i, label %.loopexit175.us.1.i.i, label %.preheader173.us.1.i.i.preheader

.preheader173.us.1.i.i.preheader:                 ; preds = %.loopexit298.i.i
  %min.iters.check431 = icmp ult i8 %.fr216.i.i, 4
  br i1 %min.iters.check431, label %.preheader173.us.1.i.i.preheader583, label %vector.memcheck426

vector.memcheck426:                               ; preds = %.preheader173.us.1.i.i.preheader
  %bound0427 = icmp ult ptr %i.dbd, %i.cyn
  %bound1428 = icmp ult ptr %i.dbe, %i.cym
  %found.conflict429 = and i1 %bound0427, %bound1428
  br i1 %found.conflict429, label %.preheader173.us.1.i.i.preheader583, label %vector.ph432

vector.ph432:                                     ; preds = %vector.memcheck426
  %n.vec433 = and i64 %i.cyj, 252                 ; 3 uses
  br label %vector.body434

end_hunk_0
